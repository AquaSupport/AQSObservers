AQSObservers
============

![](http://img.shields.io/cocoapods/v/AQSObservers.svg?style=flat) [![](http://img.shields.io/travis/kaiinui/AQSObservers.svg?style=flat)](https://travis-ci.org/AquaSupport/AQSObservers)

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
