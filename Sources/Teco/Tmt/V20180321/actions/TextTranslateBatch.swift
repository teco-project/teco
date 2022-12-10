//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tmt {
    /// 批量文本翻译
    ///
    /// 文本翻译的批量接口
    @inlinable
    public func textTranslateBatch(_ input: TextTranslateBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TextTranslateBatchResponse > {
        self.client.execute(action: "TextTranslateBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量文本翻译
    ///
    /// 文本翻译的批量接口
    @inlinable
    public func textTranslateBatch(_ input: TextTranslateBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextTranslateBatchResponse {
        try await self.client.execute(action: "TextTranslateBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TextTranslateBatch请求参数结构体
    public struct TextTranslateBatchRequest: TCRequestModel {
        /// 源语言，支持： 
        /// auto：自动识别（识别为一种语言）
        /// zh：简体中文
        /// zh-TW：繁体中文
        /// en：英语
        /// ja：日语
        /// ko：韩语
        /// fr：法语
        /// es：西班牙语
        /// it：意大利语
        /// de：德语
        /// tr：土耳其语
        /// ru：俄语
        /// pt：葡萄牙语
        /// vi：越南语
        /// id：印尼语
        /// th：泰语
        /// ms：马来西亚语
        /// ar：阿拉伯语
        /// hi：印地语
        public let source: String
        
        /// 目标语言，各源语言的目标语言支持列表如下
        /// <li> zh（简体中文）：en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）</li>
        /// <li>zh-TW（繁体中文）：en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）</li>
        /// <li>en（英语）：zh（中文）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）、ar（阿拉伯语）、hi（印地语）</li>
        /// <li>ja（日语）：zh（中文）、en（英语）、ko（韩语）</li>
        /// <li>ko（韩语）：zh（中文）、en（英语）、ja（日语）</li>
        /// <li>fr（法语）：zh（中文）、en（英语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        /// <li>es（西班牙语）：zh（中文）、en（英语）、fr（法语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        /// <li>it（意大利语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        /// <li>de（德语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        /// <li>tr（土耳其语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、ru（俄语）、pt（葡萄牙语）</li>
        /// <li>ru（俄语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、pt（葡萄牙语）</li>
        /// <li>pt（葡萄牙语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）</li>
        /// <li>vi（越南语）：zh（中文）、en（英语）</li>
        /// <li>id（印尼语）：zh（中文）、en（英语）</li>
        /// <li>th（泰语）：zh（中文）、en（英语）</li>
        /// <li>ms（马来语）：zh（中文）、en（英语）</li>
        /// <li>ar（阿拉伯语）：en（英语）</li>
        /// <li>hi（印地语）：en（英语）</li>
        public let target: String
        
        /// 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        public let projectId: Int64
        
        /// 待翻译的文本列表，批量接口可以以数组方式在一次请求中填写多个待翻译文本。文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败，请传入有效文本，html标记等非常规翻译文本可能会翻译失败。单次请求的文本长度总和需要低于2000字符。
        public let sourceTextList: [String]
        
        public init (source: String, target: String, projectId: Int64, sourceTextList: [String]) {
            self.source = source
            self.target = target
            self.projectId = projectId
            self.sourceTextList = sourceTextList
        }
        
        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case target = "Target"
            case projectId = "ProjectId"
            case sourceTextList = "SourceTextList"
        }
    }
    
    /// TextTranslateBatch返回参数结构体
    public struct TextTranslateBatchResponse: TCResponseModel {
        /// 源语言，详见入参Target
        public let source: String
        
        /// 目标语言，详见入参Target
        public let target: String
        
        /// 翻译后的文本列表
        public let targetTextList: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case target = "Target"
            case targetTextList = "TargetTextList"
            case requestId = "RequestId"
        }
    }
}
