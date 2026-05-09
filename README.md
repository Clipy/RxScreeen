# RxScreeen
![CI](https://github.com/Clipy/RxScreeen/workflows/Xcode-Build/badge.svg)
[![Release version](https://img.shields.io/github/release/Clipy/RxScreeen.svg)](https://github.com/Clipy/RxScreeen/releases/latest)
[![License: MIT](https://img.shields.io/github/license/Clipy/RxScreeen.svg)](https://github.com/Clipy/RxScreeen/blob/master/LICENSE)

RxScreeen is a RxSwift wrapper for Screeen.

## Example
```swift
let observer = ScreenShotObserver()
observer.rx.image
  .subscribe(onNext: { image in
    // Add / Update / Remove events images
  })

observer.rx.item
  .subscribe(onNext: { item in
    // Add / Update / Remove events NSMetadataItem
  })

observer.rx.addedImage
  .subscribe(onNext: { image in
    // Add events image
  })

observer.rx.updatedImage
  .subscribe(onNext: { image in
    // Update events image
  })

observer.rx.removedImage
  .subscribe(onNext: { image in
    // Remove events image
  })
observer.start()
```

## Dependencies
- [Screeen](https://github.com/Clipy/Screeen)

## How to Build
1. Move to the project root directory
2. Install dependency library with `carthage` or `git submodule`
3. `carthage checkout --use-submodules` or `git submodule update --init --recursive`
4. Open `RxScreeen.xcworkspace` on Xcode.
5. build.
