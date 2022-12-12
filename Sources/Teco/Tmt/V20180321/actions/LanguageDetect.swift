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
    /// LanguageDetect请求参数结构体
    public struct LanguageDetectRequest: TCRequestModel {
        /// 待识别的文本，文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败。单次请求的文本长度需要低于2000。
        public let text: String
        
        /// 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        public let projectId: Int64
        
        public init (text: String, projectId: Int64) {
            self.text = text
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case projectId = "ProjectId"
        }
    }
    
    /// LanguageDetect返回参数结构体
    public struct LanguageDetectResponse: TCResponseModel {
        /// 识别出的语言种类，参考语言列表
        /// <li> zh : 中文 </li> <li> en : 英文 </li><li> jp : 日语 </li> <li> kr : 韩语 </li><li> de : 德语 </li><li> fr : 法语 </li><li> es : 西班牙文 </li> <li> it : 意大利文 </li><li> tr : 土耳其文 </li><li> ru : 俄文 </li><li> pt : 葡萄牙文 </li><li> vi : 越南文 </li><li> id : 印度尼西亚文 </li><li> ms : 马来西亚文 </li><li> th : 泰文 </li>
        public let lang: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case lang = "Lang"
            case requestId = "RequestId"
        }
    }
    
    /// 语种识别
    ///
    /// 可自动识别文本内容的语言种类，轻量高效，无需额外实现判断方式，使面向客户的服务体验更佳。 <br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func languageDetect(_ input: LanguageDetectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < LanguageDetectResponse > {
        self.client.execute(action: "LanguageDetect", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 语种识别
    ///
    /// 可自动识别文本内容的语言种类，轻量高效，无需额外实现判断方式，使面向客户的服务体验更佳。 <br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源 部分。
    @inlinable
    public func languageDetect(_ input: LanguageDetectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LanguageDetectResponse {
        try await self.client.execute(action: "LanguageDetect", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
