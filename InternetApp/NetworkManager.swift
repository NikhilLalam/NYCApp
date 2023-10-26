//
//  NetworkManager.swift
//  InternetApp
//
//  Created by Nikhil Lalam on 10/25/23.
//

import Foundation

class GetData{
    
    func fetchData(url: String, output: @escaping (String) -> Void){
        let url = URL(string : url)
        let task = URLSession.shared.downloadTask(with: url!) {URL,URLResponse,error in
            
            if let url = URL{
                if let string = try? String(contentsOf: url){
                    output(string)
                }
            }
        }
        task.resume()
    }
}
    
