//
//  ReleaseLogger.swift
//  ReedWriteCycle
//
//  Created by Kevin Mullins on 6/21/23.
//

import Foundation
import OSLog

/// A helper class to incorporate logging that will always generate a log entry whether run in Debug or Release modes.
class Log {
    // MARK: - Static Properties
    /// Holds any logs that are built when they are first called.
    private static var logs:[String:Logger] = [:]
    
    /// Holds the last message that was saved when the `log` function is called. This is used to suppress duplicates.
    private static var lastMessage:String = ""
    
    // MARK: Static Functions
    /// Finds the given log by `subsystem` and `category`. If an existing log does not exist, a new one is created and saved to the collection.
    /// - Parameters:
    ///   - subsystem: The subsystem for the log. This is typically the app's signature in the form `com.company.appname`.
    ///   - category: The category of the log. This is typically the class or struct that the log is being created for.
    /// - Returns: Either an existing log for the matching criteria or a new log if one did not already exist.
    private static func logFor(subsystem:String, category:String) -> Logger {
        let key = subsystem + category
        
        if let log = logs[key] {
            return log
        } else {
            let log = Logger(subsystem: subsystem, category: category)
            logs[key] = log
            return log
        }
    }
    
    /// Creates a log entry using the `print` statement for speed.
    /// - Parameters:
    ///   - message: The message to log.
    ///   - suppressDuplicates: If `true` duplicate entries will be suppressed.
    static func entry(_ message:String, suppressDuplicates:Bool = true) {
        if suppressDuplicates {
            if message != lastMessage {
                print(message)
                lastMessage = message
            }
        } else {
            print(message)
        }
    }
    
    /// Creates an `info` entry in the given log.
    /// - Parameters:
    ///   - subsystem: The subsystem for the log.
    ///   - category: The category for the log.
    ///   - message: The message to log.
    static func info(subsystem:String, category:String, _ message:String) {
        let log = logFor(subsystem: subsystem, category: category)
        log.info("\(message)")
    }
    
    /// Creates an `error` entry in the given log.
    /// - Parameters:
    ///   - subsystem: The subsystem for the log.
    ///   - category: The category for the log.
    ///   - message: The message to log.
    static func error(subsystem:String, category:String, _ message:String) {
        let log = logFor(subsystem: subsystem, category: category)
        log.error("\(message)")
    }
    
    /// Creates a `notice` entry in the log.
    /// - Parameters:
    ///   - subsystem: The subsystem for the log.
    ///   - category: The category for the log.
    ///   - message: The message to log.
    static func notice(subsystem:String, category:String, _ message:String) {
        let log = logFor(subsystem: subsystem, category: category)
        log.notice("\(message)")
    }
}
