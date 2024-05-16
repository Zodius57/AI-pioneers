DROP TABLE IF EXISTS treatments;

CREATE TABLE treatments(
          plantType text,
          result text,
          treatmentMethod text );
        
INSERT INTO treatments VALUES ('Mango___Anthracnose', 'Anthracnose Mango', 'Spray copper fungicides on the flower regularly for it to develop resistance as it develops.');
INSERT INTO treatments VALUES ('Mango___Healthy', 'Healthy Mango', 'Tree seems to be healthy.');
INSERT INTO treatments VALUES ('Mango___Powdery Mildew', 'Powedery Mildew Mango', 'To prevent fungus growth regular pruning of developing stems will stop the growth.');
INSERT INTO treatments VALUES ('Tomato___Bacterial_spot', 'Bacterial Spot Tomato', 'Cannot be cured, best solution is to burn or bury leaf to prevent infection of other parts');
INSERT INTO treatments VALUES ('Tomato___Early_blight', 'Early Blight Tomato', 'Prune then bury or burn any affected leaves to reduce chances of spread');
INSERT INTO treatments VALUES ('Tomato___Leaf_Mold', 'Leaf Mold Tomato', 'Remove all parts with mold growing then use copper based fungicides. If the plant is growing under cover, improve its ventilation.');
INSERT INTO treatments VALUES ('Tomato___healthy', 'Healthy Tomato', 'Plant is healthy');
INSERT INTO treatments VALUES ('Black spot', 'Black spot Citrus', 'Fungicides, such as copper, strobilurins, or other labeled fungicides, should be applied to the trees at intervals.');
INSERT INTO treatments VALUES ('Canker', 'Canker Citrus', 'With regards to treating citrus canker via chemicals, worldwide the disease is managed with preventive copper-based bactericides. This is generally used in conjunction with cultural practices such as pruning and defoliation of diseased summer and fall shoots and the use of windbreaks. Pruning is also done in the dry season when conditions are less favorable for the spread of the bacteria.');
INSERT INTO treatments VALUES ('Early_Blight', 'Early Blight citrus', 'Early intervention is critical, so act quickly as soon as there are signs of Blight. Remove and destroy any infected parts of the plant, do not place into your compost. Spray with Yates liquid Copper as soon as symptoms appear.');
INSERT INTO treatments VALUES ('Greening', 'Greening Citrus', 'Citrus greening is spread by an insect called a psyllid. Applying neem oil, a botanical oil available at garden centers, will smother the eggs of the psyllid to help control the population.');
INSERT INTO treatments VALUES ('Healthy', 'Healthy Citrus', 'Tree seems to be healthy');
INSERT INTO treatments VALUES ('Late_Blight', 'Late Blight Citrus', 'Spraying fungicides is the most effective way to prevent late blight.');
INSERT INTO treatments VALUES ('Melanose', 'Melanose Citrus', 'Protectant copper sprays are the only product registered for melanose control. timing of spray applications is very important.');
INSERT INTO treatments VALUES ('Pepper,_bell___Bacterial_spot', 'Bacterial Spot Bell Pepper', 'Copper-based fungicides can help control bacterial spot. Follow the instructions on the product label carefully for the application rate and frequency.');
INSERT INTO treatments VALUES ('Pepper,_bell___healthy', 'Healthy Bell Pepper', 'Plant is healthy');