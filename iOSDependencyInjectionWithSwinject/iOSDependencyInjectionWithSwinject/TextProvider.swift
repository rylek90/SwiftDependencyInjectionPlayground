import Foundation

protocol ITextProvider{
    var Text: String { get }
}

class TextProvider: ITextProvider {
    public private(set) var Text: String
    
    init(text: String) {
        self.Text = text
    }
}
