AQSObservers
============

![](http://img.shields.io/cocoapods/v/AQSObservers.svg?style=flat) [![](http://img.shields.io/travis/AquaSupport/AQSObservers.svg?style=flat)](https://travis-ci.org/AquaSupport/AQSObservers)

A set of Notification Observers.

They observes notifications while you retain the observers and automatically removes itself from `NSNotificationCenter` once `- dealloc`.

AQSApplicationDidBecomeActiveObserver
---

```objc
self.observer = [AQSApplicationDidBecomeActiveObserver observerWithBlock:^{
    // Called when the app became active.
}];
```

AQSApplicationWillResignActiveObserver
---

```objc
self.observer = [AQSApplicationWillResignActiveObserver observerWithBlock:^{
    // Called when the app will resign active.
}];
```

AQSApplicationUserDidTakeScreenshotObserver
---

```objc
self.observer = [AQSApplicationUserDidTakeScreenshotObserver observerWithBlock:^{
    // Called when the user took screenshot.
}];
```

AQSApplicationDidReceiveMemoryWarningObserver
---

```objc
self.observer = [AQSApplicationDidReceiveMemoryWarningObserver observerWithBlock:^{
    // Called when the application receive memory warning.
}];
```

AQSNotificationObserver for common usage
---

```objc
self.observer = [AQSNotificationObserver observerWithBlock:^(NSDictionary *userInfo, id object) {
	// Called when "FooNotification" is posted.
} name:@"FooNotification"];
```

Or with object,

```objc
self.observer = [AQSNotificationObserver observerWithBlock:^(NSDictionary *userInfo, id object) {
	// Called when "FooNotification" with object: `someObject` is posted.
} name:@"FooNotification" object:someObject];
```

Documentation
---

[appledoc](https://dl.dropboxusercontent.com/u/7817937/___doc___AQSObservers/html/index.html) is provided.

LICENSE
---

```
The MIT License (MIT)

Copyright (c) 2014 AquaSupport

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
