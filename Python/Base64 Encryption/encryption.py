import base64
from base64 import *

_originalText = bytes(input("Enter a { string } for encryption: "), "utf-8")
_encrypted_message = base64.b64encode(_originalText)

print("The Encrypted Message: ", _encrypted_message)