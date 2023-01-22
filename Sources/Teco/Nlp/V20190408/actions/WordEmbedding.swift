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
    /// WordEmbedding请求参数结构体
    public struct WordEmbeddingRequest: TCRequestModel {
        /// 输入的词语（仅支持UTF-8格式，不超过20字）
        public let text: String

        public init(text: String) {
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    /// WordEmbedding返回参数结构体
    public struct WordEmbeddingResponse: TCResponseModel {
        /// 词向量数组
        public let vector: [Float]

        /// 词向量的维度
        public let dimension: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vector = "Vector"
            case dimension = "Dimension"
            case requestId = "RequestId"
        }
    }

    /// 词向量
    ///
    /// 词向量接口能够将输入的词语映射成一个固定维度的词向量，用来表示这个词语的语义特征。词向量是很多自然语言处理技术的基础，能够显著提高它们的效果。
    ///
    /// 该词向量服务由腾讯知文自然语言处理团队联合腾讯AI Lab共同打造。使用的词向量基于千亿级大规模互联网语料并采用AI Lab自研的DSG算法训练而成，开源的词向量包含800多万中文词汇，在覆盖率、新鲜度及准确性等三方面性能突出。
    ///
    /// 腾讯AI Lab词向量相关资料：
    ///
    /// https://ai.tencent.com/ailab/zh/news/detial?id=22
    ///
    /// https://ai.tencent.com/ailab/nlp/zh/embedding.html
    @inlinable
    public func wordEmbedding(_ input: WordEmbeddingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<WordEmbeddingResponse> {
        self.client.execute(action: "WordEmbedding", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 词向量
    ///
    /// 词向量接口能够将输入的词语映射成一个固定维度的词向量，用来表示这个词语的语义特征。词向量是很多自然语言处理技术的基础，能够显著提高它们的效果。
    ///
    /// 该词向量服务由腾讯知文自然语言处理团队联合腾讯AI Lab共同打造。使用的词向量基于千亿级大规模互联网语料并采用AI Lab自研的DSG算法训练而成，开源的词向量包含800多万中文词汇，在覆盖率、新鲜度及准确性等三方面性能突出。
    ///
    /// 腾讯AI Lab词向量相关资料：
    ///
    /// https://ai.tencent.com/ailab/zh/news/detial?id=22
    ///
    /// https://ai.tencent.com/ailab/nlp/zh/embedding.html
    @inlinable
    public func wordEmbedding(_ input: WordEmbeddingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WordEmbeddingResponse {
        try await self.client.execute(action: "WordEmbedding", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 词向量
    ///
    /// 词向量接口能够将输入的词语映射成一个固定维度的词向量，用来表示这个词语的语义特征。词向量是很多自然语言处理技术的基础，能够显著提高它们的效果。
    ///
    /// 该词向量服务由腾讯知文自然语言处理团队联合腾讯AI Lab共同打造。使用的词向量基于千亿级大规模互联网语料并采用AI Lab自研的DSG算法训练而成，开源的词向量包含800多万中文词汇，在覆盖率、新鲜度及准确性等三方面性能突出。
    ///
    /// 腾讯AI Lab词向量相关资料：
    ///
    /// https://ai.tencent.com/ailab/zh/news/detial?id=22
    ///
    /// https://ai.tencent.com/ailab/nlp/zh/embedding.html
    @inlinable
    public func wordEmbedding(text: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<WordEmbeddingResponse> {
        self.wordEmbedding(WordEmbeddingRequest(text: text), region: region, logger: logger, on: eventLoop)
    }

    /// 词向量
    ///
    /// 词向量接口能够将输入的词语映射成一个固定维度的词向量，用来表示这个词语的语义特征。词向量是很多自然语言处理技术的基础，能够显著提高它们的效果。
    ///
    /// 该词向量服务由腾讯知文自然语言处理团队联合腾讯AI Lab共同打造。使用的词向量基于千亿级大规模互联网语料并采用AI Lab自研的DSG算法训练而成，开源的词向量包含800多万中文词汇，在覆盖率、新鲜度及准确性等三方面性能突出。
    ///
    /// 腾讯AI Lab词向量相关资料：
    ///
    /// https://ai.tencent.com/ailab/zh/news/detial?id=22
    ///
    /// https://ai.tencent.com/ailab/nlp/zh/embedding.html
    @inlinable
    public func wordEmbedding(text: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> WordEmbeddingResponse {
        try await self.wordEmbedding(WordEmbeddingRequest(text: text), region: region, logger: logger, on: eventLoop)
    }
}
