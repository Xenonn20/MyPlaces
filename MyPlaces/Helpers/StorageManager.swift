//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Kirill Medvedev on 1/05/2019.
//  Copyright © 2019 Kirill Medvedev. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
