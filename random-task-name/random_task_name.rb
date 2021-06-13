require 'json'
require 'securerandom'

def handler(event:, context:)
  {
    "statusCode": 200,
    "statusDescription": "200 OK",
    "isBase64Encoded": false,
    "headers": {
      "Content-Type": "application/json"
    },
    "body": JSON.generate({:name => SecureRandom.hex(10)})
  }
end
