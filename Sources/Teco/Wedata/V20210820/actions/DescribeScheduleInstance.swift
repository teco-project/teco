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
    /// DescribeScheduleInstance请求参数结构体
    public struct DescribeScheduleInstanceRequest: TCRequest {
        /// 基线id
        public let taskId: String

        /// 任务实例数据时间
        public let curRunDate: String

        public init(taskId: String, curRunDate: String) {
            self.taskId = taskId
            self.curRunDate = curRunDate
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case curRunDate = "CurRunDate"
        }
    }

    /// DescribeScheduleInstance返回参数结构体
    public struct DescribeScheduleInstanceResponse: TCResponse {
        /// 基线实例中的调度任务实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: InstanceOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询调度任务实例
    ///
    /// 在基线系统内查询单个调度任务实例
    @inlinable
    public func describeScheduleInstance(_ input: DescribeScheduleInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduleInstanceResponse> {
        self.client.execute(action: "DescribeScheduleInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询调度任务实例
    ///
    /// 在基线系统内查询单个调度任务实例
    @inlinable
    public func describeScheduleInstance(_ input: DescribeScheduleInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScheduleInstanceResponse {
        try await self.client.execute(action: "DescribeScheduleInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询调度任务实例
    ///
    /// 在基线系统内查询单个调度任务实例
    @inlinable
    public func describeScheduleInstance(taskId: String, curRunDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduleInstanceResponse> {
        self.describeScheduleInstance(.init(taskId: taskId, curRunDate: curRunDate), region: region, logger: logger, on: eventLoop)
    }

    /// 查询调度任务实例
    ///
    /// 在基线系统内查询单个调度任务实例
    @inlinable
    public func describeScheduleInstance(taskId: String, curRunDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScheduleInstanceResponse {
        try await self.describeScheduleInstance(.init(taskId: taskId, curRunDate: curRunDate), region: region, logger: logger, on: eventLoop)
    }
}
