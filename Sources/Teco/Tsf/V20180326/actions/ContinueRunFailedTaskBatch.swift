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

extension Tsf {
    /// ContinueRunFailedTaskBatch请求参数结构体
    public struct ContinueRunFailedTaskBatchRequest: TCRequestModel {
        /// 批次ID。
        public let batchId: String

        public init(batchId: String) {
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
        }
    }

    /// ContinueRunFailedTaskBatch返回参数结构体
    public struct ContinueRunFailedTaskBatchResponse: TCResponseModel {
        /// 成功或失败
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 续跑任务批次
    ///
    /// 对执行失败的任务批次执行续跑
    @inlinable
    public func continueRunFailedTaskBatch(_ input: ContinueRunFailedTaskBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ContinueRunFailedTaskBatchResponse> {
        self.client.execute(action: "ContinueRunFailedTaskBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续跑任务批次
    ///
    /// 对执行失败的任务批次执行续跑
    @inlinable
    public func continueRunFailedTaskBatch(_ input: ContinueRunFailedTaskBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ContinueRunFailedTaskBatchResponse {
        try await self.client.execute(action: "ContinueRunFailedTaskBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续跑任务批次
    ///
    /// 对执行失败的任务批次执行续跑
    @inlinable
    public func continueRunFailedTaskBatch(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ContinueRunFailedTaskBatchResponse> {
        self.continueRunFailedTaskBatch(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 续跑任务批次
    ///
    /// 对执行失败的任务批次执行续跑
    @inlinable
    public func continueRunFailedTaskBatch(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ContinueRunFailedTaskBatchResponse {
        try await self.continueRunFailedTaskBatch(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
