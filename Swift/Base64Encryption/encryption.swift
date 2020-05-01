import Foundation

extension String {
//: ### Base64 encoding a string
    func base64Encoded() -> String? {
        if let data = self.data(using: .utf8) {
            return data.base64EncodedString()
        }
        return nil
    }

//: ### Base64 decoding a string
    func base64Decoded() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
}
var str = "Hello, playground"
print("Original string: \"\(str)\"")

if let base64Str = str.base64Encoded() {
    print("Base64 encoded string: \"\(base64Str)\"")
    if let trs = base64Str.base64Decoded() {
        print("Base64 decoded string: \"\(trs)\"")
        print("Check if base64 decoded string equals the original string: \(str == trs)")
    }
}