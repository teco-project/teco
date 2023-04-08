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

extension Asr {
    /// UpdateAsrVocab请求参数结构体
    public struct UpdateAsrVocabRequest: TCRequestModel {
        /// 热词表ID
        public let vocabId: String

        /// 热词表名称，长度在1-255之间
        public let name: String?

        /// 词权重数组，包含全部的热词和对应的权重。每个热词的长度不大于10，权重为[1,10]之间整数，数组长度不大于128
        public let wordWeights: [HotWord]?

        /// 词权重文件（纯文本文件）的二进制base64编码，以行分隔，每行的格式为word|weight，即以英文符号|为分割，左边为词，右边为权重，如：你好|5。
        /// 当用户传此参数（参数长度大于0），即以此参数解析词权重，WordWeights会被忽略
        public let wordWeightStr: String?

        /// 热词表描述，长度在0-1000之间
        public let description: String?

        public init(vocabId: String, name: String? = nil, wordWeights: [HotWord]? = nil, wordWeightStr: String? = nil, description: String? = nil) {
            self.vocabId = vocabId
            self.name = name
            self.wordWeights = wordWeights
            self.wordWeightStr = wordWeightStr
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case vocabId = "VocabId"
            case name = "Name"
            case wordWeights = "WordWeights"
            case wordWeightStr = "WordWeightStr"
            case description = "Description"
        }
    }

    /// UpdateAsrVocab返回参数结构体
    public struct UpdateAsrVocabResponse: TCResponseModel {
        /// 热词表ID
        public let vocabId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vocabId = "VocabId"
            case requestId = "RequestId"
        }
    }

    /// 更新热词表
    ///
    /// 用户通过本接口进行对应的词表信息更新。
    @inlinable
    public func updateAsrVocab(_ input: UpdateAsrVocabRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAsrVocabResponse> {
        self.client.execute(action: "UpdateAsrVocab", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新热词表
    ///
    /// 用户通过本接口进行对应的词表信息更新。
    @inlinable
    public func updateAsrVocab(_ input: UpdateAsrVocabRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAsrVocabResponse {
        try await self.client.execute(action: "UpdateAsrVocab", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新热词表
    ///
    /// 用户通过本接口进行对应的词表信息更新。
    @inlinable
    public func updateAsrVocab(vocabId: String, name: String? = nil, wordWeights: [HotWord]? = nil, wordWeightStr: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAsrVocabResponse> {
        self.updateAsrVocab(.init(vocabId: vocabId, name: name, wordWeights: wordWeights, wordWeightStr: wordWeightStr, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新热词表
    ///
    /// 用户通过本接口进行对应的词表信息更新。
    @inlinable
    public func updateAsrVocab(vocabId: String, name: String? = nil, wordWeights: [HotWord]? = nil, wordWeightStr: String? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAsrVocabResponse {
        try await self.updateAsrVocab(.init(vocabId: vocabId, name: name, wordWeights: wordWeights, wordWeightStr: wordWeightStr, description: description), region: region, logger: logger, on: eventLoop)
    }
}
