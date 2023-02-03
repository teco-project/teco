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
    /// SentimentAnalysis请求参数结构体
    public struct SentimentAnalysisRequest: TCRequestModel {
        /// 待分析的文本（仅支持UTF-8格式，不超过200字）
        public let text: String

        /// 待分析文本所属的类型，仅当输入参数Mode取值为2class时有效（默认取4值）：
        /// 1、商品评论类
        /// 2、社交类
        /// 3、美食酒店类
        /// 4、通用领域类
        public let flag: UInt64?

        /// 情感分类模式选项，可取2class或3class（默认值为2class）
        /// 1、2class：返回正负面二分类情感结果
        /// 2、3class：返回正负面及中性三分类情感结果
        public let mode: String?

        public init(text: String, flag: UInt64? = nil, mode: String? = nil) {
            self.text = text
            self.flag = flag
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case flag = "Flag"
            case mode = "Mode"
        }
    }

    /// SentimentAnalysis返回参数结构体
    public struct SentimentAnalysisResponse: TCResponseModel {
        /// 正面情感概率
        public let positive: Float

        /// 中性情感概率，当输入参数Mode取值为3class时有效，否则值为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let neutral: Float?

        /// 负面情感概率
        public let negative: Float

        /// 情感分类结果：
        /// 1、positive，表示正面情感
        /// 2、negative，表示负面情感
        /// 3、neutral，表示中性、无情感
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

    /// 情感分析
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极还是消极，并且提供各自概率。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    @inlinable
    public func sentimentAnalysis(_ input: SentimentAnalysisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SentimentAnalysisResponse> {
        self.client.execute(action: "SentimentAnalysis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 情感分析
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极还是消极，并且提供各自概率。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    @inlinable
    public func sentimentAnalysis(_ input: SentimentAnalysisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SentimentAnalysisResponse {
        try await self.client.execute(action: "SentimentAnalysis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 情感分析
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极还是消极，并且提供各自概率。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    @inlinable
    public func sentimentAnalysis(text: String, flag: UInt64? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SentimentAnalysisResponse> {
        let input = SentimentAnalysisRequest(text: text, flag: flag, mode: mode)
        return self.client.execute(action: "SentimentAnalysis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 情感分析
    ///
    /// 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极还是消极，并且提供各自概率。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    @inlinable
    public func sentimentAnalysis(text: String, flag: UInt64? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SentimentAnalysisResponse {
        let input = SentimentAnalysisRequest(text: text, flag: flag, mode: mode)
        return try await self.client.execute(action: "SentimentAnalysis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
