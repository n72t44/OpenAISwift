//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

struct Command: Codable {
    var prompt: String = "<|endoftext|>"
    var model: String = OpenAIModelType.gpt3(.davinci).modelName
    var max_tokens: Int = 16
    
    var temperature: Float = 1
    var top_p: Float = 1
    var frequency_penalty: Float = 0
    var presence_penalty: Float = 0
    var n: Int = 1
    var user: String?
}
extension Command {
    init(defaults: String) {
        let data = defaults.data(using: .utf8)!
        self = try! JSONDecoder().decode(Self.self, from: data)
    }
}
