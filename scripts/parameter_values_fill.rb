require 'json'

file = open("azure.json")
json=file.read

#Parsing to extract the values
parsed = JSON.parse(json)
subscription_id= parsed['subscription_id']
tenant_id=parsed['tenant_id']
client_id=parsed['client_id']
client_secret=parsed['client_secret']
files=exec("echo #{tenant_id}>ten_id && echo #{subscription_id}>sub_id && echo #{client_id}>cl_id && echo #{client_secret}>cl_secret")

