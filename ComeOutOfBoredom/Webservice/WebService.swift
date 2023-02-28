//
//  WebService.swift
//  MyFirstApp
//
//  Created by Amita Ghosh on 2/23/23.
//  Singleton class to make API calls from anywhere in the App

import Foundation


enum WebServiceError : Error {
    case noURLError
    case noResponseDataError
    case otherError(errorString : String)
}

 class WebService{
    
    private init(){
        
    }
    public static let shared = WebService()
     
    // MARK: hitting the web service
    
    func callWebService(input_url : String , completion : @escaping(Result<ResponseModel,WebServiceError>)->Void){
        
        guard let url = URL(string: input_url) else{
            completion(.failure(.noURLError))
            return
        }
        
        let request = URLRequest(url: url)
        
        // make the API call
        let task = URLSession.shared.dataTask(with: request) { response_data, urlResponse, error in
            if let error = error{
                completion(.failure(.otherError(errorString: error.localizedDescription)))
                print("error from webservice : " ,error)
                return
            }
            
            guard let data = response_data  else{
                completion(.failure(.noResponseDataError))
                return
            }
            
            do{
                // decode the json response
                let response = try JSONDecoder().decode(ResponseModel.self, from: data)
                completion(.success(response))
                return
            } catch let decodeError{
                completion(.failure(.otherError(errorString: decodeError.localizedDescription)))
                return
            }
            
            
        }
        task.resume()
        
    }
    
}


