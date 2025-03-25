import pytest, subprocess

from app import app

@pytest.fixture
def client():
	with app.test_client() as app_client:
		yield app_client

def test_time(client):
	response = client.get('/')
	testResult = subprocess.run(['date', '+%b %d, %Y, %H:%M'], stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
	testResult = str(testResult.stdout)	
	bytesResponse = response.data.decode('utf-8')
	assert response.status_code == 200
	assert bytesResponse == testResult
