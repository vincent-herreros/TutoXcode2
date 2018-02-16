//
//  Personne.swift
//  Tuto2
//
//  Created by Vincent HERREROS on 06/02/2018.
//  Copyright © 2018 Vincent HERREROS. All rights reserved.
//

import Foundation

/**
    Personne type
 
 **nom**: Personne -> String
 **prenom**: Personne -> String
 **nomComplet**: Personne -> String
 */

class Personne{
    
    var nom:String
    var prenom:String
    var dateNaissance : Date?
    var nomComplet:String{
        get{
            return self.nom+" "+self.prenom
        }
    }
    
    init(nom: String,prenom: String){
        self.nom=nom
        self.prenom=prenom
    }
    
    init(nom: String, prenom: String, dateNaissance: Date){
        self.nom=nom
        self.prenom=prenom
        self.dateNaissance=dateNaissance
    }
    
    

}

// MARK: -Extension-

extension Personne : Equatable{
    static func == (lhs:Personne, rhs:Personne)-> Bool{
        var dateeq : Bool = false
        if let lb = lhs.dateNaissance{
            if let rb = rhs.dateNaissance{
                dateeq = lb.compare(rb) == ComparisonResult.orderedSame
            }
        }
        else{
            dateeq = (rhs.dateNaissance == nil)
        }
        return lhs.nomComplet == rhs.nomComplet && dateeq
    }
    static func != (lhs: Personne, rhs: Personne) -> Bool{
        return !(lhs==rhs)
    }
}
