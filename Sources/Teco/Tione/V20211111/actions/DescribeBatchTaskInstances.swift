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

import TecoCore

extension Tione {
    /// DescribeBatchTaskInstances请求参数结构体
    public struct DescribeBatchTaskInstancesRequest: TCRequestModel {
        /// 跑批任务id
        public let batchTaskId: String

        public init(batchTaskId: String) {
            self.batchTaskId = batchTaskId
        }

        enum CodingKeys: String, CodingKey {
            case batchTaskId = "BatchTaskId"
        }
    }

    /// DescribeBatchTaskInstances返回参数结构体
    public struct DescribeBatchTaskInstancesResponse: TCResponseModel {
        /// 实例集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchInstances: [BatchTaskInstance]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchInstances = "BatchInstances"
            case requestId = "RequestId"
        }
    }

    /// 跑批实例列表
    ///
    /// 查询跑批实例列表
    @inlinable
    public func describeBatchTaskInstances(_ input: DescribeBatchTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTaskInstancesResponse> {
        self.client.execute(action: "DescribeBatchTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跑批实例列表
    ///
    /// 查询跑批实例列表
    @inlinable
    public func describeBatchTaskInstances(_ input: DescribeBatchTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTaskInstancesResponse {
        try await self.client.execute(action: "DescribeBatchTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跑批实例列表
    ///
    /// 查询跑批实例列表
    @inlinable
    public func describeBatchTaskInstances(batchTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTaskInstancesResponse> {
        self.describeBatchTaskInstances(.init(batchTaskId: batchTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 跑批实例列表
    ///
    /// 查询跑批实例列表
    @inlinable
    public func describeBatchTaskInstances(batchTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTaskInstancesResponse {
        try await self.describeBatchTaskInstances(.init(batchTaskId: batchTaskId), region: region, logger: logger, on: eventLoop)
    }
}
