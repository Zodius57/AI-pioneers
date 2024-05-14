from flask import Flask, render_template, request, url_for, current_app, g
import click
import sqlite3
import tensorflow as tf
import numpy as np

with open('treatment.sql', 'r') as sql_file:
    sql_script = sql_file.read()

app = Flask(__name__)

def agriaid_model(image):
    model = tf.keras.models.load_model("2.keras")
    image = tf.keras.preprocessing.image.load_img(image, target_size=(256,256))
    img_array = tf.keras.preprocessing.image.img_to_array(image)
    img_array = tf.expand_dims(img_array, 0) # create a batch
    
    prediction = model.predict(img_array)
    class_names = ['Black spot',
 'Canker',
 'Early_Blight',
 'Greening',
 'Healthy',
 'Late_Blight',
 'Mango___Anthracnose',
 'Mango___Healthy',
 'Mango___Powdery Mildew',
 'Melanose',
 'Pepper,_bell___Bacterial_spot',
 'Pepper,_bell___healthy',
 'Tomato___Bacterial_spot',
 'Tomato___Early_blight',
 'Tomato___Late_blight',
 'Tomato___Leaf_Mold',
 'Tomato___healthy']
    return str(class_names[np.argmax(prediction)])



@app.route('/')
def index():
    # Renders landing page
    return render_template('header.html')


@app.route('/tutorial')
def tutorial():
    # Renders instruction page
    return render_template('tutorial.html')


@app.route('/chooseimage')
def chooseimage():
    # Renders page where plant disease classification is carried out
    return render_template('chooseimage.html', image=None)


@app.route('/news')
def news():
    # Renders news page
    return render_template('news.html')


@app.route('/upload', methods=['POST'])
def upload_image():
    if 'image' in request.files:
        image = request.files['image']
        if image.filename != '':
            # Save the uploaded image to a folder (e.g., 'uploads')
            path = 'static/uploads/' + image.filename
            image.save(path)

            result = agriaid_model(path)
            message = result

            db = sqlite3.connect('treatment.db')
            cursor = db.cursor()
            cursor.executescript(sql_script)
            db.commit()
            cursor.execute("SELECT * FROM treatments WHERE plantType = :plantType", {'plantType': result})
            db.commit()
            result = cursor.fetchone()[1]
            db.commit()
            cursor.execute("SELECT * FROM treatments WHERE plantType = :plantType", {'plantType': message})
            db.commit()
            message = cursor.fetchone()[2]
            db.close()

            # Return the URL of the uploaded image to display on the page
            return render_template('chooseimage.html', image=url_for('static', filename='uploads/' + image.filename),message=message, result=result )
            # *change message to results=result*

        # If no image uploaded or error occurred, render the page without an image
        return render_template('chooseimage.html', image=None)

if __name__ == '__main__':
    app.run(debug=True)
