//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Nlp {
    /// TextEmbellish请求参数结构体
    public struct TextEmbellishRequest: TCRequest {
        /// 待润色的文本。中文文本长度需<=50字符；英文文本长度需<=30个单词。
        public let text: String

        /// 待润色文本的语言类型，支持语言如下：
        /// zh：中文
        /// en：英文
        public let sourceLang: String

        /// 返回润色结果的个数。数量需>=1且<=5。
        /// （注意实际结果可能小于指定个数）
        public let number: Int64

        /// 控制润色类型，类型如下：
        /// both：同时返回改写和扩写
        /// expansion：扩写
        /// rewriting：改写
        /// m2a：从现代文改写为古文
        /// a2m：从古文改写为现代文
        /// 默认为both。
        public let style: String?

        public init(text: String, sourceLang: String, number: Int64, style: String? = nil) {
            self.text = text
            self.sourceLang = sourceLang
            self.number = number
            self.style = style
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case sourceLang = "SourceLang"
            case number = "Number"
            case style = "Style"
        }
    }

    /// TextEmbellish返回参数结构体
    public struct TextEmbellishResponse: TCResponse {
        /// 润色结果列表。
        public let embellishList: [Embellish]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case embellishList = "EmbellishList"
            case requestId = "RequestId"
        }
    }

    /// 文本润色
    ///
    /// 运用先进的自然语言处理技术，对原始文本进行优化润色，提升文本的通顺性、表达力和语言质量。
    @inlinable
    public func textEmbellish(_ input: TextEmbellishRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextEmbellishResponse> {
        self.client.execute(action: "TextEmbellish", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本润色
    ///
    /// 运用先进的自然语言处理技术，对原始文本进行优化润色，提升文本的通顺性、表达力和语言质量。
    @inlinable
    public func textEmbellish(_ input: TextEmbellishRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextEmbellishResponse {
        try await self.client.execute(action: "TextEmbellish", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本润色
    ///
    /// 运用先进的自然语言处理技术，对原始文本进行优化润色，提升文本的通顺性、表达力和语言质量。
    @inlinable
    public func textEmbellish(text: String, sourceLang: String, number: Int64, style: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextEmbellishResponse> {
        self.textEmbellish(.init(text: text, sourceLang: sourceLang, number: number, style: style), region: region, logger: logger, on: eventLoop)
    }

    /// 文本润色
    ///
    /// 运用先进的自然语言处理技术，对原始文本进行优化润色，提升文本的通顺性、表达力和语言质量。
    @inlinable
    public func textEmbellish(text: String, sourceLang: String, number: Int64, style: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextEmbellishResponse {
        try await self.textEmbellish(.init(text: text, sourceLang: sourceLang, number: number, style: style), region: region, logger: logger, on: eventLoop)
    }
}
