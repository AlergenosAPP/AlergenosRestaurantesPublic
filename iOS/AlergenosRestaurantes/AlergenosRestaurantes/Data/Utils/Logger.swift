import Foundation

enum LogLevel: String {
    case debug = "DEBUG"
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
}

class Logger {
    // Método para obtener la fecha y hora actual en formato String
    private static func currentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
    // Función para loguear mensajes
    private static func log(level: LogLevel, message: String) {
        #if DEBUG
        let timestamp = currentDate()
        print("[\(timestamp)] [\(level.rawValue)] \(message)")
        #endif
    }

    // Método para loguear mensajes de nivel .debug
    static func debug(_ message: @autoclosure () -> String) {
        #if DEBUG
        log(level: .debug, message: message())
        #endif
    }

    // Método para loguear mensajes de nivel .info
    static func info(_ message: @autoclosure () -> String) {
        log(level: .info, message: message())
    }

    // Método para loguear mensajes de nivel .warning
    static func warning(_ message: @autoclosure () -> String) {
        log(level: .warning, message: message())
    }

    // Método para loguear mensajes de nivel .error
    static func error(_ message: @autoclosure () -> String) {
        log(level: .error, message: message())
    }
}
