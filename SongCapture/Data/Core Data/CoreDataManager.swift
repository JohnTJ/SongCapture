//
//  CoreDataManager.swift
//  SongCapture
//
//  Created by John Jones on 2/10/26.
//

import CoreData

final class CoreDataManager {
    
    static let shared = CoreDataManager(modelName: "Model")
    
    let container: NSPersistentContainer
    
    init(modelName: String) {
        container = NSPersistentContainer(name: modelName)
        
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Failed to load Core Data stack: \(error)")
            }
        }
        
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    }
    
    func save() throws {
        if container.viewContext.hasChanges {
            try container.viewContext.save()
        }
    }
}

extension CoreDataManager {
    
    func performBackgroundTask<T>(_ block: @escaping (NSManagedObjectContext) throws -> T) async throws -> T {
        
        let context = container.newBackgroundContext()
        context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        
        return try await context.perform {
            let result = try block(context)
            
            if context.hasChanges {
                try context.save()
            }
            
            return result
        }
    }
}
