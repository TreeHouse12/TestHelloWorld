import requests

r = requests.get('http://127.0.0.1/')
assert 'Hello World!' in r.content, 'No homepage loaded'
