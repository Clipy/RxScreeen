# RxScreeen
[![Release version](https://img.shields.io/github/release/Clipy/RxScreeen.svg)](https://github.com/Clipy/RxScreeen/releases/latest)
[![License: MIT](https://img.shields.io/github/license/Clipy/RxScreeen.svg)](https://github.com/Clipy/RxScreeen/blob/master/LICENSE)
[![Version](https://img.shields.io/cocoapods/v/RxScreeen.svg)](http://cocoadocs.org/docsets/RxScreeen)
[![Platform](https://img.shields.io/cocoapods/p/RxScreeen.svg)](http://cocoadocs.org/docsets/RxScreeen)

RxScreeen is a RxSwift wrapper for Screeen.

## Requirements
- macOS 10.9+
- Xcode 8.0+
- Swift 3.0+

## Usage
```
platform :osx, '10.9'
use_frameworks!

pod 'RxScreeen'
```

## Example
```
let observer = ScreenShotObserver()
observer.rx_image
  .subscribe(onNext: { image in
    // Add / Update / Remove events images
  })

observer.rx_item
  .subscribe(onNext: { item in
    // Add / Update / Remove events NSMetadataItem
  })

observer.rx_addedImage
  .subscribe(onNext: { image in
    // Add events image
  })

observer.rx_updatedImage
  .subscribe(onNext: { image in
    // Update events image
  })

observer.rx_removedImage
  .subscribe(onNext: { image in
    // Remove events image
  })
```

## Dependencies
The source code is dependent on hotkey library.
- [Screeen](https://github.com/Clipy/Screeen)

## Hot to Build
1. Move to the project root directory
2. Install dependency library with `carthage` or `git submodule`
 - `carthage checkout --use-submodules` or `git submodule init && git submodule update`
4. Open `RxScreeen.xcworkspace` on Xcode.
5. build.

### Contributing
1. Fork it ( https://github.com/Clipy/RxScreeen/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
