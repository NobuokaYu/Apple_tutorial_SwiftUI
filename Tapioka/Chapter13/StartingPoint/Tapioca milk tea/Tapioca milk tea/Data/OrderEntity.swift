import CoreData

enum Flavor:Int16 {
    case milk_tea
    case uji_matcha_milk
    case okinawa_brown_sugar_milk
    case cassis_raspberry_milk
    case strawberry_milk
    
    var name:String {
        flavorArray[Int(self.rawValue)]
    }
}
enum IceCream:Int16 {
    case None
    case Vanilla
    case Tea
    case Matcha
    var name:String {
        iceCreamArray[Int(self.rawValue)]
    }
}

var flavorArray = ["Milk tea",
                   "Uji Matcha Milk",
                   "Okinawa brown sugar milk",
                   "Cassis raspberry milk",
                   "Strawberry Milk"]
var iceCreamArray = ["None",
                     "Vanilla",
                     "Tea",
                     "Matcha"]
