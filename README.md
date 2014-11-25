AQSObservers
============

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
