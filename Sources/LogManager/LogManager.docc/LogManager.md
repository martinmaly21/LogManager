# ``LogManager``

LogManager is a simple library to make it easier to add pretty debugging logging entries to an App project. 

## Overview

The library is broken into two main parts: 

* `Debug` - Use the static **Debug** class when you only want the comments to be printed when the app is compiled for **Debug**.
* `Log` - Use the static **Log** class when you want the comments to be printed for both the **Debug** and **Release** versions of the app.

### Log
 
`static func log(_ message:String, suppressDuplicates:Bool = true)` 

Creates a simple log entry and optionally suppresses duplicate entries.

### Info
 
`static func info(subsystem:String, category:String, _ message:String)`

Writes an **Info** message to the log with an optional `subsystem` and `category` used to identify and group log entries.

### Error

`static func error(subsystem:String, category:String, _ message:String)`

Writes an **Error** message to the log with an optional `subsystem` and `category` used to identify and group log entries.

### Notice

`static func notice(subsystem:String, category:String, _ message:String)`

Writes an **Notice** message to the log with an optional `subsystem` and `category` used to identify and group log entries.