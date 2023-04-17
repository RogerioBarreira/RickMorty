//
//  Network.swift
//  RickMorty
//
//  Created by Rogerio Martins on 13/04/23.
//

import Foundation

enum Method: String {
    case get = "GET"
}

class Network: NSObject {
    
    func network<T: Codable>(urlString: String, method: Method, custom: T.Type, completion: @escaping (T?,Bool)-> Void) {
        
        guard let url = URL(string: urlString) else { return }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {  return }
                if response.statusCode == 200 {
                    guard  let data = data else { return }
                    do {
                        let objeto = try JSONDecoder().decode(custom, from: data)
                        DispatchQueue.main.sync {
                            completion(objeto,true)
                        }
                    } catch {
                        print("Erro de Decoder")
                        completion(nil,false)
                    }
                } else {
                    print("Erro de statusCode \(response.statusCode)")
                    completion(nil,false)
                }
            } else {
                print(error?.localizedDescription as Any)
            }
        }
        task.resume()
    }
}
