//
//  NetworkManager.swift
//  snackoverflow
//
//  Created by vb10 on 24.01.2023.
//

import Alamofire
import Foundation

struct NetworkConfig {
    let baseUrl: String
}

enum NetworkPath: String {
    case users = "api/users"
    case login = "api/login"
    static let baseUrlReqres: String = "https://reqres.in/"
}

protocol INetworkManager {
    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?
    func post<T: Codable, R: Encodable>(path: NetworkPath, model: R, type: T.Type) async -> T?
    var config: NetworkConfig { get set }
}

extension NetworkManager {
    static let networkManager: INetworkManager = NetworkManager(config: NetworkConfig(baseUrl: NetworkPath.baseUrlReqres))
}

class NetworkManager: INetworkManager {
    internal var config: NetworkConfig

    init(config: NetworkConfig) {
        self.config = config
    }

    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T? {
        let dataRequest = AF.request("\(config.baseUrl)\(path.rawValue)", method: method)
            .validate()
            .serializingDecodable(T.self)

        let result = await dataRequest.response

        guard let value = result.value else {
            print("ERROR: \(String(describing: result.error))")
            return nil
        }

        return value
    }

    func post<T: Codable, R: Encodable>(path: NetworkPath, model: R, type: T.Type) async -> T? {
        let jsonEncoder = JSONEncoder()
//        thread
        guard let data = try? jsonEncoder.encode(model) else { return nil }
        guard let dataString = String(data: data, encoding: .utf8) else { return nil }
        let dataRequest = AF.request("\(config.baseUrl)\(path.rawValue)", method: .post, parameters: convertToDictionary(text: dataString))
            .validate()
            .serializingDecodable(T.self)
        let result = await dataRequest.response

        guard let value = result.value else {
            print("ERROR: \(String(describing: result.error))")
            return nil
        }

        return value
    }

    private func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}
