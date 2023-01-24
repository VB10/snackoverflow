//
//  NetworkManager.swift
//  snackoverflow
//
//  Created by vb10 on 24.01.2023.
//

import Alamofire

struct NetworkConfig {
    let baseUrl: String
}

protocol INetworkManager {
    func fetch<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?
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
}

enum NetworkPath: String {
    case users = "api/users"

    static let baseUrlReqres: String = "https://reqres.in/"
}
