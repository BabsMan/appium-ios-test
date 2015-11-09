//
//  Searches.swift
//  Table
//
//  Created by Graeme Grier on 23/10/2015.
//  Copyright © 2015 Graeme Grier. All rights reserved.
//

import Foundation

struct Searches {
    
    private let searchTerms: [String]
    
    init() {
        searchTerms = ["Luke", "Leia", "Han"]
    }
    
    private init(searchTerms: [String]) {
        
        self.searchTerms = searchTerms
        print(searchTerms)
    }
    
    var numberOfSearchTerms: Int {
        
        return searchTerms.count
    }
    
    func searchTermAtIndex(index: Int) -> String {
        
        return searchTerms[index]
    }
    
    func removeSearchTermAtIndex(index: Int) -> Searches {
        
        var tempSearchTerms = searchTerms
        tempSearchTerms.removeAtIndex(index)
        return Searches(searchTerms: tempSearchTerms)
    }
    
    func insertSearchTerm(searchTerm: String, atIndex index: Int) -> Searches {
        
        var tempSearchTerms = searchTerms
        tempSearchTerms.insert(searchTerm, atIndex: index)
        return Searches(searchTerms: tempSearchTerms)
    }
    
    func moveSearchTermAtIndex(fromIndex: Int, toIndex: Int) -> Searches {
        
        return removeSearchTermAtIndex(fromIndex)
              .insertSearchTerm(searchTerms[fromIndex], atIndex: toIndex)
    }
}
