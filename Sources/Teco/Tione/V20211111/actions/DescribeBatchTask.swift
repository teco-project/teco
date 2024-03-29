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

extension Tione {
    /// DescribeBatchTask请求参数结构体
    public struct DescribeBatchTaskRequest: TCRequest {
        /// 跑批任务ID
        public let batchTaskId: String

        public init(batchTaskId: String) {
            self.batchTaskId = batchTaskId
        }

        enum CodingKeys: String, CodingKey {
            case batchTaskId = "BatchTaskId"
        }
    }

    /// DescribeBatchTask返回参数结构体
    public struct DescribeBatchTaskResponse: TCResponse {
        /// 跑批任务详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchTaskDetail: BatchTaskDetail?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchTaskDetail = "BatchTaskDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询跑批任务
    @inlinable
    public func describeBatchTask(_ input: DescribeBatchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTaskResponse> {
        self.client.execute(action: "DescribeBatchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询跑批任务
    @inlinable
    public func describeBatchTask(_ input: DescribeBatchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTaskResponse {
        try await self.client.execute(action: "DescribeBatchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询跑批任务
    @inlinable
    public func describeBatchTask(batchTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTaskResponse> {
        self.describeBatchTask(.init(batchTaskId: batchTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询跑批任务
    @inlinable
    public func describeBatchTask(batchTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTaskResponse {
        try await self.describeBatchTask(.init(batchTaskId: batchTaskId), region: region, logger: logger, on: eventLoop)
    }
}
