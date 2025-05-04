import Foundation

/// Enum que representa tanto los alérgenos como las preferencias alimentarias.
/// Los valores del 1 al 14 son alérgenos; 15 y 16 son preferencias alimentarias.
enum AllergenOrPreference: Int, CaseIterable, Codable, Hashable {
    // Alérgenos (1–14)
    case gluten = 1
    case crustaceos = 2
    case huevo = 3
    case pescado = 4
    case cacahuetes = 5
    case soja = 6
    case leche = 7
    case frutosDeCascara = 8
    case apio = 9
    case mostaza = 10
    case sesamo = 11
    case sulfitos = 12
    case moluscos = 13
    case altramuces = 14
    

    // Preferencias alimentarias (15–16)
    case vegetariano = 15
    case vegano = 16

    /// Nombre en castellano del alérgeno o preferencia, para mostrar en la interfaz.
    var name: String {
        switch self {
        case .gluten: return "Gluten"
        case .crustaceos: return "Crustáceos"
        case .huevo: return "Huevo"
        case .pescado: return "Pescado"
        case .cacahuetes: return "Cacahuetes"
        case .soja: return "Soja"
        case .leche: return "Leche"
        case .frutosDeCascara: return "Frutos de Cáscara"
        case .apio: return "Apio"
        case .mostaza: return "Mostaza"
        case .sesamo: return "Sésamo"
        case .sulfitos: return "Sulfitos"
        case .moluscos: return "Moluscos"
        case .altramuces: return "Altramuces"
        case .vegetariano: return "Vegetariano"
        case .vegano: return "Vegano"
        }
    }

    /// Devuelve true si el valor es una preferencia alimentaria (15 o 16).
    var isPreference: Bool {
        return self.rawValue >= 15
    }

    /// Nombre del archivo SVG asociado (usando el nombre en minúsculas y sin tildes ni espacios).
    var svgName: String {
        return String(describing: self)
    }
}
