//
//  DB_Manager.swift
//  Big Gainz
//
//  Created by Jason Leong on 3/30/22.
//

import Foundation
import os.log
import SQLite3

class SqliteDbStore {
    
    // Get the URL to db store file
    let dbURL: URL
    
    // The database pointer.
    var db: OpaquePointer?
    
    var insertEntryStmt: OpaquePointer?
    var readEntryStmt: OpaquePointer?
    var updateEntryStmt: OpaquePointer?
    var deleteEntryStmt: OpaquePointer?
    
    let oslog = OSLog(subsystem: "oJason725", category: "sqliteintegration")

    init() {
        do {
            do {
                dbURL = try FileManager.default
                    .url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                    .appendingPathComponent("integration.db")
                os_log("URL: %s", dbURL.absoluteString)
            } catch {
                //TODO: Just logging the error and returning empty path URL here. Handle the error gracefully after logging
                os_log("Some error occurred. Returning empty path.")
                dbURL = URL(fileURLWithPath: "")
                return
            }
            
            try openDB()
            try createTables()
            } catch {
                //TODO: Handle the error gracefully after logging
                os_log("Some error occurred. Returning.")
                return
            }
    }
    
    // Command: sqlite3_open(dbURL.path, &db)
    // Open the DB at the given path. If file does not exists, it will create one for you
    func openDB() throws {
        if sqlite3_open(dbURL.path, &db) != SQLITE_OK { // error mostly because of corrupt database
            os_log("error opening database at %s", log: oslog, type: .error, dbURL.absoluteString)
//            deleteDB(dbURL: dbURL)
            throw SqliteError(message: "error opening database \(dbURL.absoluteString)")
        }
    }
    
    // Code to delete a db file. Useful to invoke in case of a corrupt DB and re-create another
    func deleteDB(dbURL: URL) {
        os_log("removing db", log: oslog)
        do {
            try FileManager.default.removeItem(at: dbURL)
        } catch {
            os_log("exception while removing db %s", log: oslog, error.localizedDescription)
        }
    }
    
    func createTables() throws {
        // create the tables if they dont exist.
        
        // create the table to store the entries.
        
        // Form Table
        // ID | user_name | user_weight | user_height | user_age
        let ret =  sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Form (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, user_name TEXT NOT NULL, user_weight INTEGER NOT NULL, user_height TEXT NOT NULL, user_age INTEGER NOT NULL)", nil, nil, nil)
        if (ret != SQLITE_OK) { // corrupt database.
            logDbErr("Error Creating DB Table - Form")
            throw SqliteError(message: "Unable To Create Table Form")
        }
        
        // Video Table
        // ID | video_name | exercise_type | muscle_group | tips_description | exercise_videos
        let ret2 =  sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Video (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, video_name TEXT NOT NULL, exercise_type TEXT NOT NULL, muscle_group TEXT NOT NULL, tips_description TEXT NOT NULL, exercise_videos BLOB NOT NULL)", nil, nil, nil)
        if (ret2 != SQLITE_OK) { // corrupt database.
            logDbErr("Error Creating DB Table - Video")
            throw SqliteError(message: "Unable To Create Table Video")
        }
        
        
        // Log Table
        // ID | execise_name | set_num | rep_num | weight | intensity
        let ret3 =  sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Log (id INTEGER UNIQUE PRIMARY KEY AUTOINCREMENT, execise_name TEXT NOT NULL, set_num INTEGER NOT NULL, rep_num INTEGER NOT NULL, weight INTEGER NOT NULL, intensity INTEGER NOT NULL)", nil, nil, nil)
        if (ret3 != SQLITE_OK) { // corrupt database.
            logDbErr("Error Creating DB Table - Log")
            throw SqliteError(message: "Unable To Create Table Log")
        }
        
    }
    
    func logDbErr(_ msg: String) {
        let errmsg = String(cString: sqlite3_errmsg(db)!)
        os_log("ERROR %s : %s", log: oslog, type: .error, msg, errmsg)
    }
}

// Indicates an exception during a SQLite Operation.
class SqliteError : Error {
    var message = ""
    var error = SQLITE_ERROR
    init(message: String = "") {
        self.message = message
    }
    init(error: Int32) {
        self.error = error
    }
}



