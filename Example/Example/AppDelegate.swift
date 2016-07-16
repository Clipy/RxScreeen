//
//  AppDelegate.swift
//  Example
//
//  Created by 古林俊佑 on 2016/07/16.
//  Copyright © 2016年 Shunsuke Furubayashi. All rights reserved.
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
    let rx_disposeBag = DisposeBag()

    func applicationDidFinishLaunching(aNotification: NSNotification) {

        screeen.rx_addedImage
            .subscribeNext { image in
                Swift.print("Added image")
            }.addDisposableTo(rx_disposeBag)

        screeen.rx_updatedImage
            .observeOn(MainScheduler.instance)
            .subscribeNext { image in
                Swift.print("Updated image")
            }.addDisposableTo(rx_disposeBag)

    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

