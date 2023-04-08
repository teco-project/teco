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

extension Wedata {
    /// BatchRerunIntegrationTaskInstances请求参数结构体
    public struct BatchRerunIntegrationTaskInstancesRequest: TCRequestModel {
        /// 实例信息
        public let instances: [SchedulerTaskInstanceInfo]

        /// 项目id
        public let projectId: String

        public init(instances: [SchedulerTaskInstanceInfo], projectId: String) {
            self.instances = instances
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case projectId = "ProjectId"
        }
    }

    /// BatchRerunIntegrationTaskInstances返回参数结构体
    public struct BatchRerunIntegrationTaskInstancesResponse: TCResponseModel {
        /// 操作成功的任务数
        public let successCount: Int64

        /// 操作失败的任务数
        public let failedCount: Int64

        /// 任务总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successCount = "SuccessCount"
            case failedCount = "FailedCount"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 批量重跑集成任务实例
    @inlinable
    public func batchRerunIntegrationTaskInstances(_ input: BatchRerunIntegrationTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchRerunIntegrationTaskInstancesResponse> {
        self.client.execute(action: "BatchRerunIntegrationTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量重跑集成任务实例
    @inlinable
    public func batchRerunIntegrationTaskInstances(_ input: BatchRerunIntegrationTaskInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchRerunIntegrationTaskInstancesResponse {
        try await self.client.execute(action: "BatchRerunIntegrationTaskInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量重跑集成任务实例
    @inlinable
    public func batchRerunIntegrationTaskInstances(instances: [SchedulerTaskInstanceInfo], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchRerunIntegrationTaskInstancesResponse> {
        self.batchRerunIntegrationTaskInstances(.init(instances: instances, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量重跑集成任务实例
    @inlinable
    public func batchRerunIntegrationTaskInstances(instances: [SchedulerTaskInstanceInfo], projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchRerunIntegrationTaskInstancesResponse {
        try await self.batchRerunIntegrationTaskInstances(.init(instances: instances, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
