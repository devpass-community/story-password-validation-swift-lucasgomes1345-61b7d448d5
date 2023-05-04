import Foundation

@main
public struct PasswordValidation {

    public static func main() {
        let validation = PasswordValidation()
        let password = "123456"

        if validation.isValid(password: password) {

            print("valid password")
        } else {

            print("invalid password")
        }
    }

    func isValid(password: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[0-9]{6}$")
            let range = NSRange(location: 0, length: password.utf16.count)
            return regex.firstMatch(in: password, range: range) != nil
        } catch {
            return false
        }
    }
}
