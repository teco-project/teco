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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tci {
    /// DescribeVocab请求参数结构体
    public struct DescribeVocabRequest: TCRequestModel {
        /// 要查询词汇的词汇库名
        public let vocabLibName: String

        public init(vocabLibName: String) {
            self.vocabLibName = vocabLibName
        }

        enum CodingKeys: String, CodingKey {
            case vocabLibName = "VocabLibName"
        }
    }

    /// DescribeVocab返回参数结构体
    public struct DescribeVocabResponse: TCResponseModel {
        /// 词汇列表
        public let vocabNameSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vocabNameSet = "VocabNameSet"
            case requestId = "RequestId"
        }
    }

    /// 查询词汇
    @inlinable
    public func describeVocab(_ input: DescribeVocabRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVocabResponse> {
        self.client.execute(action: "DescribeVocab", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询词汇
    @inlinable
    public func describeVocab(_ input: DescribeVocabRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVocabResponse {
        try await self.client.execute(action: "DescribeVocab", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询词汇
    @inlinable
    public func describeVocab(vocabLibName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVocabResponse> {
        self.describeVocab(.init(vocabLibName: vocabLibName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询词汇
    @inlinable
    public func describeVocab(vocabLibName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVocabResponse {
        try await self.describeVocab(.init(vocabLibName: vocabLibName), region: region, logger: logger, on: eventLoop)
    }
}
