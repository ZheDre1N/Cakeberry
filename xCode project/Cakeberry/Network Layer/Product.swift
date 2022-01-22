//
//  Product.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 09.01.2022.
//

import Foundation

enum Product {
    
    // 1кг, 1,5 кг и 2кг
    // д16, д18, д20
    
    // Варианты декоров
    // Без декора, Ягоды, мастика, подтеки, надпись, цифра
    // 0 Р,
    
    var imageName: String {
        switch self {
        default:
            return "noimage"
        }
    }
    
    var price: Int {
        switch self {
        case .cake(.d16sm, _):
            return 1500
        case .cake(.d18sm, _):
            return Int(1400 * 1.5)
        case .cake(.d20sm, _):
            return 1300 * 2
        case .cheesecake:
            return 1500
        case .cupcake(.qty6, _):
            return 6 * 150
        case .cupcake(.qty9, _):
            return 9 * 140
        case .cupcake(.qty12, _):
            return 12 * 130
        case .bentocake:
            return 700
        }
    }
    
    var minPrice: Int {
        switch self {
        case .cake:
            return 1500
        case .cheesecake:
            return 1500
        case .cupcake:
            return 6 * 150
        case .bentocake:
            return 700
        }
    }
    
    var title: String {
        switch self {
        case .cake(_, .strawberries):
            return "Торт клубника со сливками"
        case .cake(_, .berry):
            return "Торт ягодный"
        case .cake(_, .chocolateHazelnut):
            return "Торт шоколад-фундук"
        case .cake(_, .pistachioRaspberry):
            return "Торт фисташка-малина"
        case .cake(_, .cheeryChoholate):
            return "Торт вишня-шоколад"
        case .cake(_, .redVelvet):
            return "Торт красный бархат"
            
        case .cheesecake(_, .berry):
            return "Чизкейк ягодный"
        case .cheesecake(_, .chocolate):
            return "Чизкейк шоколадный"
        case .cheesecake(_, .newYork):
            return "Чизкейк Нью-Йорк"
        case .cheesecake(_, .mangoPassion):
            return "Чизкейк манго-маракуйя"
            
        case .cupcake(_, .chocolate):
            return "Капкейки шоколадные"
        case .cupcake(_, .vanilla):
            return "Капкейки ванильные"
            
        case .bentocake(_, .vanilla):
            return "Бенто торт ванильный"
        case .bentocake(_, .chocolate):
            return "Бенто торт шоколадный"
        case .bentocake(_, .pistachio):
            return "Бенто торт фисташковый"
        }
    }
    
    // products
    case cake (CakeSize, CakeOption)
    case cheesecake (CheesecakeSize, CheesecakeOption)
    case cupcake (CupcakeSize, CupcakeOption)
    case bentocake (BentocakeSize, BentocakeOption)
    
    // basic menu
    static let allCases: [Product] = [
        Self.cake(.d16sm, .strawberries),
        Self.cake(.d16sm, .redVelvet(.cherry)),
        Self.cake(.d16sm, .berry(.cherry)),
        Self.cake(.d16sm, .cheeryChoholate),
        Self.cake(.d16sm, .pistachioRaspberry),
        Self.cake(.d16sm, .chocolateHazelnut),
        
        Self.cheesecake(.d18sm, .berry(.currant)),
        Self.cheesecake(.d18sm, .chocolate),
        Self.cheesecake(.d18sm, .mangoPassion),
        Self.cheesecake(.d18sm, .newYork),
        
        Self.cupcake(.qty6, .chocolate(.cherry)),
        Self.cupcake(.qty6, .vanilla(.currant)),
        
        Self.bentocake(.d10sm, .vanilla(.cherry)),
        Self.bentocake(.d10sm, .chocolate(.cherry)),
        Self.bentocake(.d10sm, .pistachio(.cherry))
    ]
    
    // popular
    static let popular: [Product] = [
        Self.cake(.d18sm, .chocolateHazelnut),
        Self.cheesecake(.d18sm, .berry(.currant)),
        Self.cupcake(.qty9, .chocolate(.cherry)),
        Self.bentocake(.d10sm, .vanilla(.cherry))
    ]
    
    // popular
    static let categories = [
        "Торты",
        "Чизкейки",
        "Капкейки",
        "Бенто торты"
    ]

    // Cake
    enum CakeSize {
        case d16sm
        case d18sm
        case d20sm
    }
    
    enum CakeOption {
        case strawberries
        case redVelvet (CakeRedVelvetFilling)
        case berry (CakeBerryFilling)
        case cheeryChoholate
        case pistachioRaspberry
        case chocolateHazelnut
    }
    
    enum CakeRedVelvetFilling {
        case rasberry
        case cherry
    }
    
    enum CakeBerryFilling {
        case rasberry
        case strawberry
        case cherry
    }
    
    // Cheesecake
    enum CheesecakeSize {
        case d18sm
    }
    
    enum CheesecakeOption {
        case newYork
        case berry (CheesecakeBerryFilling)
        case mangoPassion
        case chocolate
    }
    
    enum CheesecakeBerryFilling {
        case rasberry
        case currant
    }
    
    // Cupcake
    enum CupcakeSize {
        case qty6
        case qty9
        case qty12
    }
    
    enum CupcakeOption {
        case vanilla (CupcakeVanillaFilling)
        case chocolate (CupcakeChocolateFilling)
    }
    
    enum CupcakeVanillaFilling {
        case rasberry
        case strawberry
        case cherry
        case currant
    }
    
    enum CupcakeChocolateFilling {
        case caramel
        case cherry
        case chocolate
    }
    
    // Bentocake
    
    enum BentocakeSize {
        case d10sm
    }
    
    enum BentocakeOption {
        case chocolate (BentocakeFilling)
        case vanilla (BentocakeFilling)
        case pistachio (BentocakeFilling)
    }
    
    enum BentocakeFilling {
        case chocolate
        case cherry
        case raspberry
    }
}
