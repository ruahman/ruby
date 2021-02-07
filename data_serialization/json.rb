require 'json'

json = '{"water": 300, "oil": 200}'
hash = JSON.parse(json)

p hash

hash = {
    water: 500,
    oil: 100
}

p hash.to_json

jj hash