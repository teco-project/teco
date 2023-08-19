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
    /// AnalyzeSentiment请求参数结构体
    public struct AnalyzeSentimentRequest: TCRequest {
        /// 待分析的文本（仅支持UTF-8格式，不超过200字）。
        public let text: String

        public init(text: String) {
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    /// AnalyzeSentiment返回参数结构体
    public struct AnalyzeSentimentResponse: TCResponse {
        /// 正面情感概率。
        public let positive: Float

        /// 中性情感概率。
        public let neutral: Float

        /// 负面情感概率。
        public let negative: Float

        /// 情感分类结果：
        /// positive：正面情感
        /// negative：负面情感
        /// neutral：中性、无情感
        public let sentiment: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case positive = "Positive"
            case neutral = "Neutral"
            case negative = "Negative"
            case sentiment = "Sentiment"
            case requestId = "RequestId"
        }
    }

    /// 情感分析V2
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极、中性还是消极，并且提供各自概率。
    @inlinable
    public func analyzeSentiment(_ input: AnalyzeSentimentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AnalyzeSentimentResponse> {
        self.client.execute(action: "AnalyzeSentiment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 情感分析V2
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极、中性还是消极，并且提供各自概率。
    @inlinable
    public func analyzeSentiment(_ input: AnalyzeSentimentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AnalyzeSentimentResponse {
        try await self.client.execute(action: "AnalyzeSentiment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 情感分析V2
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极、中性还是消极，并且提供各自概率。
    @inlinable
    public func analyzeSentiment(text: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AnalyzeSentimentResponse> {
        self.analyzeSentiment(.init(text: text), region: region, logger: logger, on: eventLoop)
    }

    /// 情感分析V2
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极、中性还是消极，并且提供各自概率。
    @inlinable
    public func analyzeSentiment(text: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AnalyzeSentimentResponse {
        try await self.analyzeSentiment(.init(text: text), region: region, logger: logger, on: eventLoop)
    }
}
