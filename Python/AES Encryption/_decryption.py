#!/usr/bin/env python
      #              Copyright 2020 © John Melody Me
      #
      # Licensed under the Apache License, Version 2.0 (the "License");
      # you may not use this file except in compliance with the License.
      # You may obtain a copy of the License at
      #             http://www.apache.org/licenses/LICENSE-2.0
      # Unless required by applicable law or agreed to in writing, software
      # distributed under the License is distributed on an "AS IS" BASIS,
      # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
      # See the License for the specific language governing permissions and
      # limitations under the License.
      # @Author : John Melody Me
      # @Copyright: John Melody Me & Tan Sin Dee © Copyright 2020
      # @INPIREDBYGF: Cindy Tan Sin Dee <3
      # pip install pbkdf2 && pip install pyaes
import pyaes
import pbkdf2
import binascii
import os
import secrets

_decryptionBits = secrets.randbits(256)
# Derive a 256-bit AES encryption key from the password
_originalString = input("Enter _original${string} to Decrypt: ")
_salt = os.urandom(16)
_postDecryptedString = pbkdf2.PBKDF2(_originalString, _salt).read(32)
_aes = pyaes.AESModeOfOperationCTR(_postDecryptedString, pyaes.Counter(_decryptionBits))
_decryptedString = _aes.decrypt(_originalString)
print("AES ENCRYTED {string} : ", binascii.unhexlify(_originalString))
