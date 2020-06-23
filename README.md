# MobKit

Mobven iOS framework

## Prerequisites

MobKit is available for applications deployed iOS 10 and later. It’s supported using Swift Package Manager which needs to be compiled using Xcode 11 and later.

## Installation

MobKit is the core frameworks to be set up with dependent frameworks.

After adding frameworks to your project, you can initialize them in you Scene Delegate's `scene(_, willConnectTo:)` (alternatively, App Delegate's `didFinishLaunchingWithOptions`) function.
```swift
import UIKit
import MobKit
import AppSecurity
import AccountSecurity
import SecureNetwork
import UIComponents
import StateMachineForms
import OneLink
import PinLocator
import ErrorKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        MobKit.setup(with: [
            AppSecurity.self, AccountSecurity.self,
            SecureNetwork.self, UIComponents.self,
            StateMachineForms.self, OneLink.self,
            PinLocator.self, ErrorKit.self
        ])
    }
    
    // Other delegate functions here...
}
```
