//
//  ListePersonne.swift
//  Tuto2
//
//  Created by Vincent HERREROS on 06/02/2018.
//  Copyright © 2018 Vincent HERREROS. All rights reserved.
//

import Foundation

class ListePersonne : Sequence{
    fileprivate var liste : [Personne] = []
    
    func ajout(p:Personne){
        if (!self.contient(p: <#T##Personne#>)){
            liste.append(p)
        }
    }
    
    func enlever(p:Personne) -> ListePersonne{
        if let i = self.liste.index(of: p){
            self.liste.remove(at: i)
        }
    }
    
    func contient(p:Personne)-> Bool{
        return self.liste.contains(where: {$0===p})
    }
    
    func makeIterator() -> IteratorPersonne {
        return IteratorPersonne(self)
    }
}

// MARK: Iterator

/// Iterator on ListePersonne

struct IteratorPersonne : IteratorProtocol{
    private var current: Int = 0
    private let set: ListePersonne
    
    fileprivate init(_ s: ListePersonne){
        self.set = s
    }
    
    @discardableResult
    mutating func reset() -> IteratorPersonne{
        self.current = 0
        return self
    }
    
    @discardableResult
    mutating func next() -> Personne? {
        
    }
}
