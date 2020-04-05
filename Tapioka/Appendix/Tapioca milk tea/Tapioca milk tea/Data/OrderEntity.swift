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

extension OrderEntity {
    static func create(in managedObjectContext: NSManagedObjectContext,
                       flavor: Int = 0,
                       nateDeCoco: Bool = false,
                       iceCream: Int = 0,
                       quantity: Int = 1,
                       other: String = "",
                       date: Date = Date(),
                       favorite: Bool = false
    ){
        let newOrder = self.init(context: managedObjectContext)
        newOrder.flavor = Int16(flavor)
        newOrder.nataDeCoco = nateDeCoco
        newOrder.iceCream = Int16(iceCream)
        newOrder.quantity = Int16(quantity)
        newOrder.other = other
        newOrder.id = UUID().uuidString
        newOrder.date = date
        newOrder.favorite = favorite
        do {
            try  managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    
    /// 味の種類の文字列を取得する
    public var flavorName: String {
        Flavor(rawValue: self.flavor)!.name
    }
    
    /// アイストッピングの文字列を取得する
    public var iceCreamName: String {
        IceCream(rawValue: self.iceCream)!.name
    }
    
    override
    public func didChangeValue(forKey key: String){
        super.didChangeValue(forKey: key)
        objectWillChange.send()
    }

}

extension OrderEntity: Identifiable{ }
