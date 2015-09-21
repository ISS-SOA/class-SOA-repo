require 'aws-sdk'
require 'json'

## Setup AWS Connection
# put AWS credentials in environment variables on command line
# e.g., $ export AWS_ACCESS_KEY_ID=SFHK20SASJCSKSWI
AWS.config(
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: ENV['AWS_REGION']
)

# Create new table
dynamo_db = AWS::DynamoDB.new
table_name = 'Tutorials'
tutorials = dynamo_db.tables.create(
  table_name, 5, 6,
  :hash_key => {id: :string},
)
sleep 1 while tutorials.status == :creating

# Add item to table
request = {
  usernames: ['soumya.ray', 'chenlizhan'],
  badges:    ['Object-Oriented Programming II', 'CSS Selectors']
}

item = tutorials.items.create({:id => request.hash.abs.to_s, :req => request.to_json})

# Retrieve item from table
key = request.hash.abs.to_s
value = tutorials.items[key].attributes['req']
