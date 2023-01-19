//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcr {
    /// DescribeTagRetentionExecutionTask请求参数结构体
    public struct DescribeTagRetentionExecutionTaskRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String

        /// 规则Id
        public let retentionId: Int64

        /// 规则执行Id
        public let executionId: Int64

        /// 分页Page
        public let offset: Int64?

        /// 分页PageSize
        public let limit: Int64?

        public init(registryId: String, retentionId: Int64, executionId: Int64, offset: Int64? = nil, limit: Int64? = nil) {
            self.registryId = registryId
            self.retentionId = retentionId
            self.executionId = executionId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case retentionId = "RetentionId"
            case executionId = "ExecutionId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeTagRetentionExecutionTask返回参数结构体
    public struct DescribeTagRetentionExecutionTaskResponse: TCResponseModel {
        /// 版本保留执行任务列表
        public let retentionTaskList: [RetentionTask]

        /// 版本保留执行任务总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case retentionTaskList = "RetentionTaskList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询版本保留执行任务
    @inlinable
    public func describeTagRetentionExecutionTask(_ input: DescribeTagRetentionExecutionTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagRetentionExecutionTaskResponse> {
        self.client.execute(action: "DescribeTagRetentionExecutionTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询版本保留执行任务
    @inlinable
    public func describeTagRetentionExecutionTask(_ input: DescribeTagRetentionExecutionTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagRetentionExecutionTaskResponse {
        try await self.client.execute(action: "DescribeTagRetentionExecutionTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询版本保留执行任务
    @inlinable
    public func describeTagRetentionExecutionTask(registryId: String, retentionId: Int64, executionId: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagRetentionExecutionTaskResponse> {
        self.describeTagRetentionExecutionTask(DescribeTagRetentionExecutionTaskRequest(registryId: registryId, retentionId: retentionId, executionId: executionId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询版本保留执行任务
    @inlinable
    public func describeTagRetentionExecutionTask(registryId: String, retentionId: Int64, executionId: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagRetentionExecutionTaskResponse {
        try await self.describeTagRetentionExecutionTask(DescribeTagRetentionExecutionTaskRequest(registryId: registryId, retentionId: retentionId, executionId: executionId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
