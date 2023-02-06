//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

struct Instruction: Codable {
    var instruction: String = "do nothing"
    var model: String = OpenAIModelType.feature(.davinci).modelName
    var input: String = ""
    
    var temperature: Float = 1
    var top_p: Float = 1
    var n: Int = 1
}
extension Instruction {
    init(defaults: String) {
        let data = defaults.data(using: .utf8)!
        self = try! JSONDecoder().decode(Self.self, from: data)
    }
}
