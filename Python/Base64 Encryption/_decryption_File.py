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
import base64

_encryptedBinaryData = input("Please Enter The {encryptedBinaryData} for decryption: ")
_base64_binary_bytes = _encryptedBinaryData.encode("utf-8")
with open("_decoded_Binary_data.png", "wb") as _saveFile: #Change Extension as wish
      _decoded_data = base64.decodebytes(_base64_binary_bytes)
      _saveFile.write(_decoded_data)