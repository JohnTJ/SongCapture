//
//  SavedPlaylist+CoreDataProperties.swift
//  SongCapture
//
//  Created by John Jones on 2/12/26.
//
//

public import Foundation
public import CoreData


public typealias SavedPlaylistCoreDataPropertiesSet = NSSet

extension SavedPlaylist {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SavedPlaylist> {
        return NSFetchRequest<SavedPlaylist>(entityName: "SavedPlaylist")
    }

    @NSManaged public var id: String?
    @NSManaged public var service: String?
    @NSManaged public var name: String?
    @NSManaged public var artworkURL: String?
    @NSManaged public var dateAdded: Date?
    @NSManaged public var group: NSSet?
    @NSManaged public var matchedSongs: NSSet?

}

// MARK: Generated accessors for group
extension SavedPlaylist {

    @objc(addGroupObject:)
    @NSManaged public func addToGroup(_ value: PlaylistGroup)

    @objc(removeGroupObject:)
    @NSManaged public func removeFromGroup(_ value: PlaylistGroup)

    @objc(addGroup:)
    @NSManaged public func addToGroup(_ values: NSSet)

    @objc(removeGroup:)
    @NSManaged public func removeFromGroup(_ values: NSSet)

}

// MARK: Generated accessors for matchedSongs
extension SavedPlaylist {

    @objc(addMatchedSongsObject:)
    @NSManaged public func addToMatchedSongs(_ value: MatchedSong)

    @objc(removeMatchedSongsObject:)
    @NSManaged public func removeFromMatchedSongs(_ value: MatchedSong)

    @objc(addMatchedSongs:)
    @NSManaged public func addToMatchedSongs(_ values: NSSet)

    @objc(removeMatchedSongs:)
    @NSManaged public func removeFromMatchedSongs(_ values: NSSet)

}

extension SavedPlaylist : Identifiable {

}
