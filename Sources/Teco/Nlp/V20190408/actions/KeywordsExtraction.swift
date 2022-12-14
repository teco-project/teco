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

extension Nlp {
    /// KeywordsExtraction请求参数结构体
    public struct KeywordsExtractionRequest: TCRequestModel {
        /// 待处理的文本（仅支持UTF-8格式，不超过10000字符）
        public let text: String

        /// 指定关键词个数上限（默认值为5）
        public let num: UInt64?

        public init(text: String, num: UInt64? = nil) {
            self.text = text
            self.num = num
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case num = "Num"
        }
    }

    /// KeywordsExtraction返回参数结构体
    public struct KeywordsExtractionResponse: TCResponseModel {
        /// 关键词提取结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [Keyword]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keywords = "Keywords"
            case requestId = "RequestId"
        }
    }

    /// 关键词提取
    ///
    /// 基于关键词提取平台，通过对文本内容进行深度分析，提取出文本内容中的关键信息，为用户实现诸如新闻内容关键词自动提取、评论关键词提取等提供基础服务。
    @inlinable
    public func keywordsExtraction(_ input: KeywordsExtractionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < KeywordsExtractionResponse > {
        self.client.execute(action: "KeywordsExtraction", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关键词提取
    ///
    /// 基于关键词提取平台，通过对文本内容进行深度分析，提取出文本内容中的关键信息，为用户实现诸如新闻内容关键词自动提取、评论关键词提取等提供基础服务。
    @inlinable
    public func keywordsExtraction(_ input: KeywordsExtractionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KeywordsExtractionResponse {
        try await self.client.execute(action: "KeywordsExtraction", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关键词提取
    ///
    /// 基于关键词提取平台，通过对文本内容进行深度分析，提取出文本内容中的关键信息，为用户实现诸如新闻内容关键词自动提取、评论关键词提取等提供基础服务。
    @inlinable
    public func keywordsExtraction(text: String, num: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < KeywordsExtractionResponse > {
        self.keywordsExtraction(KeywordsExtractionRequest(text: text, num: num), logger: logger, on: eventLoop)
    }

    /// 关键词提取
    ///
    /// 基于关键词提取平台，通过对文本内容进行深度分析，提取出文本内容中的关键信息，为用户实现诸如新闻内容关键词自动提取、评论关键词提取等提供基础服务。
    @inlinable
    public func keywordsExtraction(text: String, num: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KeywordsExtractionResponse {
        try await self.keywordsExtraction(KeywordsExtractionRequest(text: text, num: num), logger: logger, on: eventLoop)
    }
}
