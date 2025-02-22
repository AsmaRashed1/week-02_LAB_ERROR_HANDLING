import UIKit

enum QuantityError :Error {
   case lowOrder
    case bigOrder
}
func placeOrderWatch (count :Int ) throws -> String {


    if count > 1 {
        throw QuantityError.lowOrder
}
    guard  count < 6 else {
    throw QuantityError.bigOrder
}

    return "Your order is confirmed"}
    

do {
    let order = try placeOrderWatch (count: 6)
    print("successful\(order)")}

catch QuantityError.lowOrder {
    print("order is low, you must order 2 wtaches or more")}

catch QuantityError.bigOrder {
    print("order Too many, you must order 5 watches or less")}
    

