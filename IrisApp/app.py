from flask import Flask, request, render_template
import pickle
import numpy as np

with open('model.pkl','rb') as model_file:
    model = pickle.load(model_file)

app = Flask(__name__)
@app.route("/")
def home():
    return render_template('index.html')

@app.route("/predict", methods=["POST","GET"])
def predict():
    if request.method == "POST":
        print(request.form)
        sepal_length = request.form['sl']
        sepal_width = request.form['sw']
        petal_length = request.form['pl']
        petal_width = request.form['pw']
        print(f"{sepal_length},{sepal_width},{petal_length},{petal_width}")
        prediction = model.predict(np.array([[sepal_length, sepal_width,petal_length,petal_width]], dtype='float32'))
        print(f"Prediction : {prediction}")
        return render_template("prediction.html",prediction=prediction[0])
    

if __name__=="__main__":
    app.run(debug=True)