import Foundation
import SwiftUI
import MachO
import Darwin

class JailBreakDetection: ObservableObject {
    // MARK: - Properties
    @Published var isJailbroken: Bool = false

    // MARK: - Initializer
    init() {
        #if !DEBUG
        Logger.info("🚨 Running jailbreak detection")
        checkJailBreak()
        #else
        Logger.debug("🚫 Jailbreak check skipped in DEBUG mode")
        #endif
    }

    // MARK: - Methods
    func checkJailBreak() {
        let jailBreakDylibs = checkDYLIDS()
        let fridaConnected = isFridaConnected()
        let suspiciousPalera1nFile = searchFor(name: "palera1n", at: "/private/var/tmp")
        let suspiciousSileoFile = searchFor(name: "Sileo", at: "/private/preboot/")

        isJailbroken = jailBreakDylibs || fridaConnected || suspiciousPalera1nFile || suspiciousSileoFile

        Logger.info("Jailbreak detected because of DYLIDS: \(jailBreakDylibs)")
        Logger.info("Jailbreak detected because of Frida: \(fridaConnected)")
        Logger.info("Jailbreak detected because of palera1n file: \(suspiciousPalera1nFile)")
        Logger.info("Jailbreak detected because of Sileo file: \(suspiciousSileoFile)")
    }

    private func checkDYLIDS() -> Bool {
        let jailbreakLibraries = [
            "FridaGadget", "frida", "cynject", "libcycript",
            "MobileSubstrate", "substrate", "CydiaSubstrate",
            "xCon", "SSLKillSwitch", "RemoteSpy",
            "Cycript", "SSH", "OpenSSH", "SSL",
            "TweakInject", "SubstrateLoader"
        ]

        for dyld in 0..<_dyld_image_count() {
            guard let name = _dyld_get_image_name(dyld) else { continue }
            let path = String(cString: name)
            if jailbreakLibraries.contains(where: { path.lowercased().contains($0.lowercased()) }) {
                Logger.warning("Jailbreak dylib found: \(path)")
                return true
            }
        }

        return false
    }

    private func isFridaConnected() -> Bool {
        func littleEndianToBigEndianIfNeeded(forPort port: in_port_t) -> in_port_t {
            let littleEndian = Int(OSHostByteOrder()) == OSLittleEndian
            return littleEndian ? _OSSwapInt16(port) : port
        }

        var address = sockaddr_in()
        address.sin_family = sa_family_t(AF_INET)
        address.sin_addr.s_addr = inet_addr("127.0.0.1")
        address.sin_port = littleEndianToBigEndianIfNeeded(forPort: 27042)

        let sock = socket(AF_INET, SOCK_STREAM, 0)
        let result = withUnsafePointer(to: &address) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                connect(sock, $0, socklen_t(MemoryLayout<sockaddr_in>.size))
            }
        }

        close(sock)
        return result != -1
    }

    private func searchForFile(named name: String, inDirectory directory: URL) -> [URL] {
        let fileManager = FileManager.default
        guard let enumerator = fileManager.enumerator(at: directory, includingPropertiesForKeys: nil) else {
            return []
        }

        return enumerator.compactMap { element in
            guard let url = element as? URL else { return nil }
            return url.pathComponents.contains(name) ? url : nil
        }
    }

    private func searchFor(name: String, at path: String) -> Bool {
        let searchPath = URL(fileURLWithPath: path)
        let results = searchForFile(named: name, inDirectory: searchPath)
        if !results.isEmpty {
            Logger.warning("Found suspicious files: \(results)")
            return true
        } else {
            Logger.debug("No suspicious files found at \(path)")
            return false
        }
    }
}
