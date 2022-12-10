//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tmt {
    /// 文本翻译
    ///
    /// 提供中文到英文、英文到中文的等多种语言的文本内容翻译服务， 经过大数据语料库、多种解码算法、翻译引擎深度优化，在新闻文章、生活口语等不同语言场景中都有深厚积累，翻译结果专业评价处于行业领先水平。<br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func textTranslate(_ input: TextTranslateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TextTranslateResponse > {
        self.client.execute(action: "TextTranslate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 文本翻译
    ///
    /// 提供中文到英文、英文到中文的等多种语言的文本内容翻译服务， 经过大数据语料库、多种解码算法、翻译引擎深度优化，在新闻文章、生活口语等不同语言场景中都有深厚积累，翻译结果专业评价处于行业领先水平。<br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func textTranslate(_ input: TextTranslateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextTranslateResponse {
        try await self.client.execute(action: "TextTranslate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TextTranslate请求参数结构体
    public struct TextTranslateRequest: TCRequestModel {
        /// 待翻译的文本，文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败，请传入有效文本，html标记等非常规翻译文本可能会翻译失败。单次请求的文本长度需要低于2000字符。
        public let sourceText: String
        
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
        
        /// 用来标记不希望被翻译的文本内容，如句子中的特殊符号、人名、地名等；每次请求只支持配置一个不被翻译的单词；仅支持配置人名、地名等名词，不要配置动词或短语，否则会影响翻译结果。
        public let untranslatedText: String?
        
        public init (sourceText: String, source: String, target: String, projectId: Int64, untranslatedText: String?) {
            self.sourceText = sourceText
            self.source = source
            self.target = target
            self.projectId = projectId
            self.untranslatedText = untranslatedText
        }
        
        enum CodingKeys: String, CodingKey {
            case sourceText = "SourceText"
            case source = "Source"
            case target = "Target"
            case projectId = "ProjectId"
            case untranslatedText = "UntranslatedText"
        }
    }
    
    /// TextTranslate返回参数结构体
    public struct TextTranslateResponse: TCResponseModel {
        /// 翻译后的文本
        public let targetText: String
        
        /// 源语言，详见入参Target
        public let source: String
        
        /// 目标语言，详见入参Target
        public let target: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case targetText = "TargetText"
            case source = "Source"
            case target = "Target"
            case requestId = "RequestId"
        }
    }
}