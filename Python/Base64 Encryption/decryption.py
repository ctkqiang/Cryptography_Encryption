import base64
from base64 import *

_encryptedTest = bytes(input("Enter here the { encrypted data }:  "), "utf-8")
_decyptedData = base64.b64decode(_encryptedTest)

print("Decrypted Data: ", _decyptedData)