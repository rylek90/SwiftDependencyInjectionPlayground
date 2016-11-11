import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard {
    class func setup() {
        defaultContainer.register(ITextProvider.self) { _ in TextProvider(text: "Hello, iOS") }
        
        defaultContainer.registerForStoryboard(FirstViewController.self) {r, c in
            c.textProvider = r.resolve(ITextProvider.self)
        }
        
        defaultContainer.registerForStoryboard(SecondViewController.self) {r, c in
            c.textProvider = r.resolve(ITextProvider.self)
        }
        
        defaultContainer.regi
    }
}
