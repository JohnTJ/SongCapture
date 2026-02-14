//
//  PlaylistGroup+CoreDataProperties.swift
//  SongCapture
//
//  Created by John Jones on 2/12/26.
//
//

public import Foundation
public import CoreData


public typealias PlaylistGroupCoreDataPropertiesSet = NSSet

extension PlaylistGroup {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlaylistGroup> {
        return NSFetchRequest<PlaylistGroup>(entityName: "PlaylistGroup")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var dateCreated: Date?
    @NSManaged public var playlists: NSSet?

}

// MARK: Generated accessors for playlists
extension PlaylistGroup {

    @objc(addPlaylistsObject:)
    @NSManaged public func addToPlaylists(_ value: SavedPlaylist)

    @objc(removePlaylistsObject:)
    @NSManaged public func removeFromPlaylists(_ value: SavedPlaylist)

    @objc(addPlaylists:)
    @NSManaged public func addToPlaylists(_ values: NSSet)

    @objc(removePlaylists:)
    @NSManaged public func removeFromPlaylists(_ values: NSSet)

}

extension PlaylistGroup : Identifiable {

}
