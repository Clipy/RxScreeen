//
//  AppDelegate.swift
//
//  Example
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Copyright © 2015-2019 Clipy Project.
//

import Cocoa
import Screeen
import RxScreeen
import RxSwift
import RxCocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    let screeen = ScreenShotObserver()
    let disposeBag = DisposeBag()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        screeen.rx.addedImage
            .subscribe(onNext: { image in
                Swift.print("Added image")
            })
            .disposed(by: disposeBag)
        screeen.rx.updatedImage
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { image in
                Swift.print("Updated image")
            })
            .disposed(by: disposeBag)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}

