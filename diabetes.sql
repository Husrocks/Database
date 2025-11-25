Create database Diabetes --database
create schema diabetes   --schema 
use Diabetes
 
CREATE TABLE DiabetesData (
    Pregnancies INT,
    Glucose INT,
    BloodPressure INT,
    SkinThickness INT,
    Insulin INT,
    BMI DECIMAL(5,1),
    DiabetesPedigreeFunction DECIMAL(5,3),
    Age INT,
    Outcome TINYINT
);



