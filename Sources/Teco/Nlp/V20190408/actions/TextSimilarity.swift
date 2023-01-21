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

extension Nlp {
    /// TextSimilarity请求参数结构体
    public struct TextSimilarityRequest: TCRequestModel {
        /// 需要与目标句子计算相似度的源句子（仅支持UTF-8格式，不超过500字符）
        public let srcText: String

        /// 目标句子（以句子数量为单位消耗资源包）
        public let targetText: [String]

        public init(srcText: String, targetText: [String]) {
            self.srcText = srcText
            self.targetText = targetText
        }

        enum CodingKeys: String, CodingKey {
            case srcText = "SrcText"
            case targetText = "TargetText"
        }
    }

    /// TextSimilarity返回参数结构体
    public struct TextSimilarityResponse: TCResponseModel {
        /// 每个目标句子与源句子的相似度分值，按照分值降序排列
        public let similarity: [Similarity]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case similarity = "Similarity"
            case requestId = "RequestId"
        }
    }

    /// 句子相似度
    ///
    /// 句子相似度接口能够基于深度学习技术来计算一个源句子和多个目标句子的相似度，相似度分值越大的两个句子在语义上越相似。目前仅支持短文本（不超过500字符）的相似度计算，长文本的相似度计算也即将推出。
    /// 鉴于句子相似度是一个应用非常广泛的功能，腾讯云自然语言处理团队在Bert等领先的深度神经网络模型的基础上，专门针对文本相似任务进行了优化，并持续迭代更新。基于句子相似度，可以轻松实现诸如文本去重、相似推荐等功能。
    /// 接口将以句子数量为单位消耗资源包，而不是调用接口次数为单位。
    @inlinable
    public func textSimilarity(_ input: TextSimilarityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextSimilarityResponse> {
        self.client.execute(action: "TextSimilarity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 句子相似度
    ///
    /// 句子相似度接口能够基于深度学习技术来计算一个源句子和多个目标句子的相似度，相似度分值越大的两个句子在语义上越相似。目前仅支持短文本（不超过500字符）的相似度计算，长文本的相似度计算也即将推出。
    /// 鉴于句子相似度是一个应用非常广泛的功能，腾讯云自然语言处理团队在Bert等领先的深度神经网络模型的基础上，专门针对文本相似任务进行了优化，并持续迭代更新。基于句子相似度，可以轻松实现诸如文本去重、相似推荐等功能。
    /// 接口将以句子数量为单位消耗资源包，而不是调用接口次数为单位。
    @inlinable
    public func textSimilarity(_ input: TextSimilarityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextSimilarityResponse {
        try await self.client.execute(action: "TextSimilarity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 句子相似度
    ///
    /// 句子相似度接口能够基于深度学习技术来计算一个源句子和多个目标句子的相似度，相似度分值越大的两个句子在语义上越相似。目前仅支持短文本（不超过500字符）的相似度计算，长文本的相似度计算也即将推出。
    /// 鉴于句子相似度是一个应用非常广泛的功能，腾讯云自然语言处理团队在Bert等领先的深度神经网络模型的基础上，专门针对文本相似任务进行了优化，并持续迭代更新。基于句子相似度，可以轻松实现诸如文本去重、相似推荐等功能。
    /// 接口将以句子数量为单位消耗资源包，而不是调用接口次数为单位。
    @inlinable
    public func textSimilarity(srcText: String, targetText: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextSimilarityResponse> {
        self.textSimilarity(TextSimilarityRequest(srcText: srcText, targetText: targetText), region: region, logger: logger, on: eventLoop)
    }

    /// 句子相似度
    ///
    /// 句子相似度接口能够基于深度学习技术来计算一个源句子和多个目标句子的相似度，相似度分值越大的两个句子在语义上越相似。目前仅支持短文本（不超过500字符）的相似度计算，长文本的相似度计算也即将推出。
    /// 鉴于句子相似度是一个应用非常广泛的功能，腾讯云自然语言处理团队在Bert等领先的深度神经网络模型的基础上，专门针对文本相似任务进行了优化，并持续迭代更新。基于句子相似度，可以轻松实现诸如文本去重、相似推荐等功能。
    /// 接口将以句子数量为单位消耗资源包，而不是调用接口次数为单位。
    @inlinable
    public func textSimilarity(srcText: String, targetText: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextSimilarityResponse {
        try await self.textSimilarity(TextSimilarityRequest(srcText: srcText, targetText: targetText), region: region, logger: logger, on: eventLoop)
    }
}
