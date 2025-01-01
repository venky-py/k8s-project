from flask import Flask, render_template

app = Flask(__name__)

# Home Route with two buttons
@app.route('/')
def home():
    return render_template('home.html')

# Public Route
@app.route('/public')
def public():
    return render_template('public.html')

# Protected Route
@app.route('/protected')
def protected():
    return render_template('protected.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=6001, debug=True)
