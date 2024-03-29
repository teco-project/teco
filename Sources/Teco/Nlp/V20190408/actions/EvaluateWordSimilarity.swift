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
    /// EvaluateWordSimilarity请求参数结构体
    public struct EvaluateWordSimilarityRequest: TCRequest {
        /// 计算相似度的源词。（仅支持UTF-8格式，不超过10字符）
        public let sourceWord: String

        /// 计算相似度的目标词。（仅支持UTF-8格式，不超过10字符）
        public let targetWord: String

        public init(sourceWord: String, targetWord: String) {
            self.sourceWord = sourceWord
            self.targetWord = targetWord
        }

        enum CodingKeys: String, CodingKey {
            case sourceWord = "SourceWord"
            case targetWord = "TargetWord"
        }
    }

    /// EvaluateWordSimilarity返回参数结构体
    public struct EvaluateWordSimilarityResponse: TCResponse {
        /// 词相似度分值。
        public let similarity: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case similarity = "Similarity"
            case requestId = "RequestId"
        }
    }

    /// 词相似度V2
    ///
    /// 评估两个词语在语义空间的相似程度，为您的场景应用提供有力支持，如关键词过滤、热门话题挖掘等。（目前仅支持中文）
    @inlinable
    public func evaluateWordSimilarity(_ input: EvaluateWordSimilarityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateWordSimilarityResponse> {
        self.client.execute(action: "EvaluateWordSimilarity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 词相似度V2
    ///
    /// 评估两个词语在语义空间的相似程度，为您的场景应用提供有力支持，如关键词过滤、热门话题挖掘等。（目前仅支持中文）
    @inlinable
    public func evaluateWordSimilarity(_ input: EvaluateWordSimilarityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EvaluateWordSimilarityResponse {
        try await self.client.execute(action: "EvaluateWordSimilarity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 词相似度V2
    ///
    /// 评估两个词语在语义空间的相似程度，为您的场景应用提供有力支持，如关键词过滤、热门话题挖掘等。（目前仅支持中文）
    @inlinable
    public func evaluateWordSimilarity(sourceWord: String, targetWord: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateWordSimilarityResponse> {
        self.evaluateWordSimilarity(.init(sourceWord: sourceWord, targetWord: targetWord), region: region, logger: logger, on: eventLoop)
    }

    /// 词相似度V2
    ///
    /// 评估两个词语在语义空间的相似程度，为您的场景应用提供有力支持，如关键词过滤、热门话题挖掘等。（目前仅支持中文）
    @inlinable
    public func evaluateWordSimilarity(sourceWord: String, targetWord: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EvaluateWordSimilarityResponse {
        try await self.evaluateWordSimilarity(.init(sourceWord: sourceWord, targetWord: targetWord), region: region, logger: logger, on: eventLoop)
    }
}
