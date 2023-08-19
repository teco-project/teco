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

extension Asr {
    /// DownloadAsrVocab请求参数结构体
    public struct DownloadAsrVocabRequest: TCRequest {
        /// 词表ID。
        public let vocabId: String

        public init(vocabId: String) {
            self.vocabId = vocabId
        }

        enum CodingKeys: String, CodingKey {
            case vocabId = "VocabId"
        }
    }

    /// DownloadAsrVocab返回参数结构体
    public struct DownloadAsrVocabResponse: TCResponse {
        /// 词表ID。
        public let vocabId: String

        /// 词表权重文件形式的base64值。
        public let wordWeightStr: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vocabId = "VocabId"
            case wordWeightStr = "WordWeightStr"
            case requestId = "RequestId"
        }
    }

    /// 下载热词表
    ///
    /// 用户通过本接口进行热词表的下载，获得词表权重文件形式的 base64 值，文件形式为通过 “|” 分割的词和权重，即 word|weight 的形式。
    @inlinable
    public func downloadAsrVocab(_ input: DownloadAsrVocabRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadAsrVocabResponse> {
        self.client.execute(action: "DownloadAsrVocab", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载热词表
    ///
    /// 用户通过本接口进行热词表的下载，获得词表权重文件形式的 base64 值，文件形式为通过 “|” 分割的词和权重，即 word|weight 的形式。
    @inlinable
    public func downloadAsrVocab(_ input: DownloadAsrVocabRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadAsrVocabResponse {
        try await self.client.execute(action: "DownloadAsrVocab", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载热词表
    ///
    /// 用户通过本接口进行热词表的下载，获得词表权重文件形式的 base64 值，文件形式为通过 “|” 分割的词和权重，即 word|weight 的形式。
    @inlinable
    public func downloadAsrVocab(vocabId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadAsrVocabResponse> {
        self.downloadAsrVocab(.init(vocabId: vocabId), region: region, logger: logger, on: eventLoop)
    }

    /// 下载热词表
    ///
    /// 用户通过本接口进行热词表的下载，获得词表权重文件形式的 base64 值，文件形式为通过 “|” 分割的词和权重，即 word|weight 的形式。
    @inlinable
    public func downloadAsrVocab(vocabId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadAsrVocabResponse {
        try await self.downloadAsrVocab(.init(vocabId: vocabId), region: region, logger: logger, on: eventLoop)
    }
}
