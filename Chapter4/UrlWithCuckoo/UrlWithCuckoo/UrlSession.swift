//
//  UrlSession.swift
//  UrlWithCuckoo
//
//  Created by Lakshmi Bomma on 10/18/16.
//  Copyright © 2016 riis. All rights reserved.
//

import Foundation

class UrlSession
{
    var url:URL?
    var session:URLSession?
    var apiUrl:String?

    func getSourceUrl() -> URL
    {
        apiUrl = "http://riis.com"
        url = URL(string:apiUrl!)
        return url!
    }
    
    
    func callApi(url:URL) -> String
    {
        session = URLSession()
        var outputdata:String = ""
        let task = session?.dataTask(with: url as URL) { (data, _, _) -> Void in
            if let data = data
            {
                outputdata = String(data: data, encoding: String.Encoding.utf8)!
                print(outputdata)
                
            }
        }
        
        task?.resume()
        
        return outputdata

    }
}
