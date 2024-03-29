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

extension Trp {
    /// DeleteCodeBatch请求参数结构体
    public struct DeleteCodeBatchRequest: TCRequest {
        /// 企业ID
        public let corpId: UInt64?

        /// 批次ID
        public let batchId: String?

        public init(corpId: UInt64? = nil, batchId: String? = nil) {
            self.corpId = corpId
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case batchId = "BatchId"
        }
    }

    /// DeleteCodeBatch返回参数结构体
    public struct DeleteCodeBatchResponse: TCResponse {
        /// 批次ID
        public let batchId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case requestId = "RequestId"
        }
    }

    /// 删除批次
    @inlinable
    public func deleteCodeBatch(_ input: DeleteCodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCodeBatchResponse> {
        self.client.execute(action: "DeleteCodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除批次
    @inlinable
    public func deleteCodeBatch(_ input: DeleteCodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCodeBatchResponse {
        try await self.client.execute(action: "DeleteCodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除批次
    @inlinable
    public func deleteCodeBatch(corpId: UInt64? = nil, batchId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCodeBatchResponse> {
        self.deleteCodeBatch(.init(corpId: corpId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除批次
    @inlinable
    public func deleteCodeBatch(corpId: UInt64? = nil, batchId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCodeBatchResponse {
        try await self.deleteCodeBatch(.init(corpId: corpId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
