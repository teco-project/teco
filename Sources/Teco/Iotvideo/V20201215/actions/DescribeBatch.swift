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

extension Iotvideo {
    /// DescribeBatch请求参数结构体
    public struct DescribeBatchRequest: TCRequest {
        /// 批次ID
        public let batchId: UInt64

        public init(batchId: UInt64) {
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
        }
    }

    /// DescribeBatch返回参数结构体
    public struct DescribeBatchResponse: TCResponse {
        /// 批次详情
        public let data: VideoBatch

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取批次详情
    @inlinable
    public func describeBatch(_ input: DescribeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchResponse> {
        self.client.execute(action: "DescribeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取批次详情
    @inlinable
    public func describeBatch(_ input: DescribeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchResponse {
        try await self.client.execute(action: "DescribeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取批次详情
    @inlinable
    public func describeBatch(batchId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchResponse> {
        self.describeBatch(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取批次详情
    @inlinable
    public func describeBatch(batchId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchResponse {
        try await self.describeBatch(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
