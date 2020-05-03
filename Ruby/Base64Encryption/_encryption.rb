require 'open-uri'
require 'base64'

_originalString = gets
_encoded_string = base64.encode64(_originalString)
puts _encoded_string