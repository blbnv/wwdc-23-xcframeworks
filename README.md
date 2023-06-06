# wwdc-23-xcframeworks

👋 We're trying to prebuild as many 3rd party dependencies as possible to speed up the build time by consuming xcframeworks from the vendors. It's not successuful all the time, so there are a few examples of errors we have:

1. **Example One** 

We use `.binaryTarget(name:url:checksum)` and when it comes to importing, I have a error `No such module X` where X is a module the framework depends on. My guess it happens because of `Build for distruibution` and (or) `Skip Install` flags, but I don't know to much what's the best way to solve these problems.

The example of the library I'm trying to add - https://github.com/segmentio/analytics-swift/releases/tag/1.4.5

I tried to use `create-xcframework` tool (https://github.com/unsignedapps/swift-create-xcframework) to tackle that, but no results.


2. **Example Two**

There is another example when I use a `binaryTarget(name:path:)`, but I have pretty much the same error.

The example uses this SDK - https://github.com/DataDog/dd-sdk-ios/releases/tag/1.20.0


❓ There are a few things I'd love to get some recommendations for:

1. Is that a good practice to build 3rd partly libraries mysef in case the developer is not attaching xcframework artifact to the release?
2. Sometimes I have a problem, that DSYMs could not be found for the given xcframework (the path for them is defined in `Info.plist` and I can confirm that the DSYMs folder exists). Is this something known, or I'm missing something. Unfortunatly, hard to find an examples.
3. If you have any other recommendations how to use prebuilt libraries - I'm more than happy to discuss. Thanks!
