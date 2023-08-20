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
    /// DescribeSchedulerInstanceStatus请求参数结构体
    public struct DescribeSchedulerInstanceStatusRequest: TCRequest {
        /// 项目ID
        public let projectId: String

        /// 任务类型ID
        public let taskTypeId: String?

        /// 执行资源组ID
        public let executionGroupId: String?

        /// 执行资源组名字
        public let executionGroupName: String?

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        /// 责任人
        public let inCharge: String?

        public init(projectId: String, taskTypeId: String? = nil, executionGroupId: String? = nil, executionGroupName: String? = nil, startTime: String? = nil, endTime: String? = nil, inCharge: String? = nil) {
            self.projectId = projectId
            self.taskTypeId = taskTypeId
            self.executionGroupId = executionGroupId
            self.executionGroupName = executionGroupName
            self.startTime = startTime
            self.endTime = endTime
            self.inCharge = inCharge
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskTypeId = "TaskTypeId"
            case executionGroupId = "ExecutionGroupId"
            case executionGroupName = "ExecutionGroupName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case inCharge = "InCharge"
        }
    }

    /// DescribeSchedulerInstanceStatus返回参数结构体
    public struct DescribeSchedulerInstanceStatusResponse: TCResponse {
        /// 响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ScreenInstanceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 运维大屏-实例状态分布
    @inlinable
    public func describeSchedulerInstanceStatus(_ input: DescribeSchedulerInstanceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulerInstanceStatusResponse> {
        self.client.execute(action: "DescribeSchedulerInstanceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运维大屏-实例状态分布
    @inlinable
    public func describeSchedulerInstanceStatus(_ input: DescribeSchedulerInstanceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulerInstanceStatusResponse {
        try await self.client.execute(action: "DescribeSchedulerInstanceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运维大屏-实例状态分布
    @inlinable
    public func describeSchedulerInstanceStatus(projectId: String, taskTypeId: String? = nil, executionGroupId: String? = nil, executionGroupName: String? = nil, startTime: String? = nil, endTime: String? = nil, inCharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulerInstanceStatusResponse> {
        self.describeSchedulerInstanceStatus(.init(projectId: projectId, taskTypeId: taskTypeId, executionGroupId: executionGroupId, executionGroupName: executionGroupName, startTime: startTime, endTime: endTime, inCharge: inCharge), region: region, logger: logger, on: eventLoop)
    }

    /// 运维大屏-实例状态分布
    @inlinable
    public func describeSchedulerInstanceStatus(projectId: String, taskTypeId: String? = nil, executionGroupId: String? = nil, executionGroupName: String? = nil, startTime: String? = nil, endTime: String? = nil, inCharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulerInstanceStatusResponse {
        try await self.describeSchedulerInstanceStatus(.init(projectId: projectId, taskTypeId: taskTypeId, executionGroupId: executionGroupId, executionGroupName: executionGroupName, startTime: startTime, endTime: endTime, inCharge: inCharge), region: region, logger: logger, on: eventLoop)
    }
}
