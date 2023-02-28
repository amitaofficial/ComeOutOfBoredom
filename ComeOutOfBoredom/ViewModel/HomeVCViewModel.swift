//
//  ViewModel.swift
//  MyFirstApp
//
//  Created by Amita Ghosh on 2/23/23.
//
//Reference : https://www.boredapi.com/


import Foundation

class HomeVCViewModel {
    var res : ResponseModel?

    func callApI(completion: @escaping()->Void){
        WebService.shared.callWebService(input_url: "https://www.boredapi.com/api/activity/", completion: { (result : Result<ResponseModel,WebServiceError>) in
            
            switch result {
            case .success(let response):
                self.res = response
            case .failure(let failure):
                switch failure {
                case .noURLError:
                    print("no url provided")
                case .noResponseDataError:
                    print("no response data")
                case .otherError(let errorString):
                    print(errorString)
                }
            }
            completion()
        })
    }
    
}

