//
//  DatabaseController.swift
//  TheProxyPattern
//
//  Created by Praveen Jangre on 16/06/2025.
//

import Foundation

public protocol DatabaseController {
    func save()
    func undo()
}

public class CoreDataManager: DatabaseController {
    public func save() {
        print("All changes saved")
    }
    
    public func undo() {
        print(" All changes reverted")
    }
    
    public init() {
        sleep(3) //Simulating a delay
    }
    
}

public class CoreDataProxy: DatabaseController {
    
    lazy private var coreDataManager: CoreDataManager = CoreDataManager()
    
    public func save() {
        coreDataManager.save()
    }
    
    public func undo() {
        coreDataManager.undo()
    }
    
    
}

public func makeDatabaseController() -> DatabaseController {
    CoreDataProxy()
}



func testTheProxyPattern()  {
    print("The app is loading....")
    let dbController = makeDatabaseController()
    print("DB is Ready")
    
    let contextChanged = true
    
    if contextChanged {
        dbController.save()
        dbController.undo()
        dbController.save()
    }
    
}
