require 'net/http'
require 'net/https'
require 'uri'

uri = URI('https://sandbox.safaricom.co.ke/mpesa/b2c/v1/paymentrequest')

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(uri)
request["accept"] = 'application/json'
request["content-type"] = 'application/json'
request["authorization"] = 'Bearer Ge3a8Juhivr8eW0HhERpS8mgUp4v'
request.body = "{\"InitiatorName\":\"testapi396\",
  \"SecurityCredential\":\"396reset\",
  \"CommandID\":\"BusinessPayment\",
  \"Amount\":\" 200\",
  \"PartyA\":\"601396\",
  \"PartyB\":\"254708374149 \",
  \"Remarks\":\" Thank you\",
  \"QueueTimeOutURL\":\"http:localhost:3000/users/confirm\",
  \"ResultURL\":\"http://http:localhost:3000/users/confirm\",
  \"Occasion\":\"Happiness Now \"}"

response = http.request(request)
puts response.read_body