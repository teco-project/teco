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
    /// SimilarWords请求参数结构体
    public struct SimilarWordsRequest: TCRequestModel {
        /// 输入的词语（仅支持UTF-8格式，不超过20字）
        public let text: String

        /// 相似词个数；取值范围：1-200，默认为10；
        public let wordNumber: UInt64?

        public init(text: String, wordNumber: UInt64? = nil) {
            self.text = text
            self.wordNumber = wordNumber
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case wordNumber = "WordNumber"
        }
    }

    /// SimilarWords返回参数结构体
    public struct SimilarWordsResponse: TCResponseModel {
        /// 相似词数组
        public let similarWords: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case similarWords = "SimilarWords"
            case requestId = "RequestId"
        }
    }

    /// 相似词
    ///
    /// 相似词接口能够基于同义词库及词向量技术，检索出与输入词语在语义上最相似的若干个词语，可广泛用于检索系统、问答系统、文档归档等场景。
    @inlinable
    public func similarWords(_ input: SimilarWordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SimilarWordsResponse> {
        self.client.execute(action: "SimilarWords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 相似词
    ///
    /// 相似词接口能够基于同义词库及词向量技术，检索出与输入词语在语义上最相似的若干个词语，可广泛用于检索系统、问答系统、文档归档等场景。
    @inlinable
    public func similarWords(_ input: SimilarWordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SimilarWordsResponse {
        try await self.client.execute(action: "SimilarWords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 相似词
    ///
    /// 相似词接口能够基于同义词库及词向量技术，检索出与输入词语在语义上最相似的若干个词语，可广泛用于检索系统、问答系统、文档归档等场景。
    @inlinable
    public func similarWords(text: String, wordNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SimilarWordsResponse> {
        let input = SimilarWordsRequest(text: text, wordNumber: wordNumber)
        return self.client.execute(action: "SimilarWords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 相似词
    ///
    /// 相似词接口能够基于同义词库及词向量技术，检索出与输入词语在语义上最相似的若干个词语，可广泛用于检索系统、问答系统、文档归档等场景。
    @inlinable
    public func similarWords(text: String, wordNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SimilarWordsResponse {
        let input = SimilarWordsRequest(text: text, wordNumber: wordNumber)
        return try await self.client.execute(action: "SimilarWords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
