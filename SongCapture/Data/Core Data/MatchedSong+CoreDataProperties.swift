//
//  MatchedSong+CoreDataProperties.swift
//  SongCapture
//
//  Created by John Jones on 2/12/26.
//
//

public import Foundation
public import CoreData


public typealias MatchedSongCoreDataPropertiesSet = NSSet

extension MatchedSong {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MatchedSong> {
        return NSFetchRequest<MatchedSong>(entityName: "MatchedSong")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var title: String?
    @NSManaged public var artist: String?
    @NSManaged public var artworkURL: String?
    @NSManaged public var appleMusicSongID: String?
    @NSManaged public var dateMatched: Date?
    @NSManaged public var playlist: NSSet?

}

// MARK: Generated accessors for playlist
extension MatchedSong {

    @objc(addPlaylistObject:)
    @NSManaged public func addToPlaylist(_ value: SavedPlaylist)

    @objc(removePlaylistObject:)
    @NSManaged public func removeFromPlaylist(_ value: SavedPlaylist)

    @objc(addPlaylist:)
    @NSManaged public func addToPlaylist(_ values: NSSet)

    @objc(removePlaylist:)
    @NSManaged public func removeFromPlaylist(_ values: NSSet)

}

extension MatchedSong : Identifiable {

}
