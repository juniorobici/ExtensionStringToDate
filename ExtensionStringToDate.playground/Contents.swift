import Foundation
import UIKit

extension String {
    func toDate(mask: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(identifier: "America/Sao_Paulo")
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = mask
        let date = dateFormatter.date(from: self)
        return date
    }
}

//MARK: - DATE to STRING
//Para mais detalhes sobre as mascaras: https://nsdateformatter.com/
var dataAtualString: String = "18/05/2020 14:50:23"

if let data = dataAtualString.toDate(mask: "dd/MM/yyyy HH:mm:ss") {
    print("String to Date: \(String(describing: data))")
}


