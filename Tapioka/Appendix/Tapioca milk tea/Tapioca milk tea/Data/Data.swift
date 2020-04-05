import Foundation

struct DataStore {
    let specials: [Special] = load("special")
    let shops:[Shop] = load("shop")
}

let dataStore = DataStore()

func load<T: Decodable>(_ name: String, as type: T.Type = T.self) -> T {
    let data: Data
    var filename = name
    let languages = NSLocale.preferredLanguages
    let language = languages[0].prefix(2)
    if language == "ja" {
        filename += "_" + language + ".json"
    }
    else {
        filename += ".json"
    }
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
