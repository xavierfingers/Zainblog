import requests

request = requests.get("http://pie.dev/pu")
response = request.text

if request.status_code == 200:
    print(f"Success! here is data: \n{response}")
if request.status_code == 404:
    print("Page not found")
if request.status_code == 501:
   print("Not implemented")
