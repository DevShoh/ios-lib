import Foundation
import ZirhIosSDKWrapper // Modulemap orqali C funksiyalar

class ZirhSDK: @unchecked Sendable { // concurrency-safe qilish uchun
    static let shared = ZirhSDK()
    private init() {}

    func boshlash(keyPath: String, dataPath: String) {
        zirh_ios_boshlash(keyPath, dataPath)
    }

    func malumotOlish(path: String) -> String? {
        guard let ptr = ios_malumot_olish(path) else { return nil }
        let result = String(cString: ptr)
        ios_xotirani_tozalash(ptr)
        return result
    }

    func malumotAlmashish(
        url: String,
        method: String = "POST",
        body: String? = nil,
        headers: String? = nil,
        filePath: String? = nil,
        fileBytes: [UInt8]? = nil,
        fileName: String? = nil,
        fileField: String? = nil
    ) -> String? {
        let bytesCount = Int32(fileBytes?.count ?? 0)
        let resultPtr = ios_malumot_almashish(
            url, method, body, headers, filePath,
            fileBytes, bytesCount, fileName, fileField
        )
        guard let ptr = resultPtr else { return nil }
        let response = String(cString: ptr)
        ios_xotirani_tozalash(ptr)
        return response
    }
}
