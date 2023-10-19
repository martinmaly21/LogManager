# LogManager

![](https://img.shields.io/badge/license-MIT-green) ![](https://img.shields.io/badge/maintained%3F-Yes-green) ![](https://img.shields.io/badge/swift-5.4-green) ![](https://img.shields.io/badge/iOS-13.0-red) ![](https://img.shields.io/badge/macOS-10.15-red) ![](https://img.shields.io/badge/tvOS-13.0-red) ![](https://img.shields.io/badge/watchOS-6.0-red) ![](https://img.shields.io/badge/release-v1.0.8-blue)


'''
import OSLog

let logger = Logger(subsystem: "BackyardBirdData", Category: "Account")

logger.info("text")

logger.error("text")

logger.notice("text")
'''

Logger.log("my message")
Logger.logError("my message")
Logger.logNotice("my message")

Logger.log(subsystem: "Bundle", Category: "Class", Type: .info, "")

Logger.subsystem = "bundle"
Logger.category = "class"
Logger.log("my message")

Logger.log("my message", mode: .both)
Logger.log("my message", mode: .debug)
Logger.log("my message", mode: .release)

Logger.debug("my message")

Log.info(subsystem: "SpeechRecognizer", category: "Reset", "This is my message")
Log.info(category: "Reset", "")
Log.info("")

Debug.info(subsystem: "ComicPanoramaView", category: "Coordinates", "This is my message")
