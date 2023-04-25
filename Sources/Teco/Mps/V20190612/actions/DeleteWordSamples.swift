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

extension Mps {
    /// DeleteWordSamples请求参数结构体
    public struct DeleteWordSamplesRequest: TCRequestModel {
        /// 关键词，数组长度限制：100 个词。
        public let keywords: [String]

        public init(keywords: [String]) {
            self.keywords = keywords
        }

        enum CodingKeys: String, CodingKey {
            case keywords = "Keywords"
        }
    }

    /// DeleteWordSamples返回参数结构体
    public struct DeleteWordSamplesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除关键词样本
    ///
    /// 该接口用于批量删除关键词样本。
    @inlinable @discardableResult
    public func deleteWordSamples(_ input: DeleteWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWordSamplesResponse> {
        self.client.execute(action: "DeleteWordSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除关键词样本
    ///
    /// 该接口用于批量删除关键词样本。
    @inlinable @discardableResult
    public func deleteWordSamples(_ input: DeleteWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWordSamplesResponse {
        try await self.client.execute(action: "DeleteWordSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除关键词样本
    ///
    /// 该接口用于批量删除关键词样本。
    @inlinable @discardableResult
    public func deleteWordSamples(keywords: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWordSamplesResponse> {
        self.deleteWordSamples(.init(keywords: keywords), region: region, logger: logger, on: eventLoop)
    }

    /// 删除关键词样本
    ///
    /// 该接口用于批量删除关键词样本。
    @inlinable @discardableResult
    public func deleteWordSamples(keywords: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWordSamplesResponse {
        try await self.deleteWordSamples(.init(keywords: keywords), region: region, logger: logger, on: eventLoop)
    }
}
