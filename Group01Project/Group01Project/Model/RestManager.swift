//
//  RestManager.swift
//  Group01Project
//
//  Created by Stanley on 11/11/2019.
//  Copyright © 2019 Stanley. All rights reserved.
//

import Foundation
class RestManager{
    var requestHttpHeader = RestEntity()
    var urlQueryParameters = RestEntity()
    var httpBodyParameters = RestEntity()
    var resultAction: (() ->Void)? = nil
    init() {
        requestHttpHeader.add(value: "application/json", forKey: "content-type")
    }
    func request_fxChange_HengSeng(){
        let url = URL(string: HengSeng.URL.FxChangeURL.rawValue)!
        request(url: url, model: HengSeng.FxRate_HengSeng.self)
    }
    
    func request<T:Codable>(url:URL,model:T.Type){
        let task = URLSession.shared.dataTask(with: url){
            (data,response,error) in
            guard let data = data else {
                return
            }
            let decoder = JSONDecoder()
            if let result = try? decoder.decode(model,from:data){
                print(result)
            } else {
                print("error")
            }
//            do{
//                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any]
//                print(json as Any)
//            } catch {
//                print("erroMsg")
//            }
        }
        task.resume()
    }
}

extension RestManager{
    
    enum HttpMethod: String{
        case get
        case post
        case put
        case patch
        case delete
    }
    
    struct RestEntity{
        private var values: [String:String] = [:]
        
        mutating func add(value: String, forKey key:String){
            values[key] = value
        }
        
        func value(forKey key: String)->String?{
            return values[key]
        }
        
        func allValues()->[String:String]{
            return values
        }
        
        func totalItems()->Int{
            return values.count
        }
    }
}




struct fxRate_HKMA: Codable{
    //    var header: String
    //    var result: fxRate_result?
    var datasize: Int32
}

struct fxRate_result:Codable{
    var datasize: Int
    var records: String
}
struct Exchange_rate: Codable{
    var aud: Float
    var bef: Float
    var cad: Float
    var chf: Float
    var cny: Float
    var dem: Float
    var end_of_day: Date
    var eur: Float
    var frf: Float
    var gbp: Float
    var inr: Float
    var itl: Float
    var jpy: Float
    var krw: Float
    var myr: Float
}
