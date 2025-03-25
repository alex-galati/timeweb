from flask import Flask, render_template, request, session, redirect, url_for, jsonify, abort
import subprocess
import os 

app = Flask(__name__)
app.secret_key = 'thereleasedateofhollowknight:silksong'

@app.route('/')
def index():
	result = subprocess.run(['date', '+%b %d, %Y, %H:%M'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
	result = str(result.stdout)
	return result
