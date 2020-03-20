# MMBKit

Mobven iOS framework

## Prerequisites

MMBKit is available for applications deployed iOS 10 and later. It’s supported using Swift Package Manager which needs to be compiled using Xcode 11 and later.

## Installation

MMBKit is the core frameworks to be set up with dependent frameworks.

```swift
import UIKit
import MMBKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
              willConnectTo session: UISceneSession,
              options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        MMBKit.setup(with: [])
    }
    
    // Other delegate functions here...
}
```

If your app does not integrated with SceneDelegate, you can use `AppDelegate`'s `didFinishLaunchingWithOptions` alternatively, like:
```swift
import UIKit
import MMBKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        MMBKit.setup(with: [])
        return true
    }
    
    // Other delegate functions here...
}
```
