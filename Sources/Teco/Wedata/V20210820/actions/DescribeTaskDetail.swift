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

extension Wedata {
    /// DescribeTaskDetail请求参数结构体
    public struct DescribeTaskDetailRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 任务告警状态
        public let taskAlarmStatus: Int64?

        public init(projectId: String, taskId: String, taskAlarmStatus: Int64? = nil) {
            self.projectId = projectId
            self.taskId = taskId
            self.taskAlarmStatus = taskAlarmStatus
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case taskAlarmStatus = "TaskAlarmStatus"
        }
    }

    /// DescribeTaskDetail返回参数结构体
    public struct DescribeTaskDetailResponse: TCResponseModel {
        /// 任务详情1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: TaskInfoData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询任务具体详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 查询任务具体详情
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务具体详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 查询任务具体详情
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务具体详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 查询任务具体详情
    @inlinable
    public func describeTaskDetail(projectId: String, taskId: String, taskAlarmStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.describeTaskDetail(DescribeTaskDetailRequest(projectId: projectId, taskId: taskId, taskAlarmStatus: taskAlarmStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务具体详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 查询任务具体详情
    @inlinable
    public func describeTaskDetail(projectId: String, taskId: String, taskAlarmStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.describeTaskDetail(DescribeTaskDetailRequest(projectId: projectId, taskId: taskId, taskAlarmStatus: taskAlarmStatus), region: region, logger: logger, on: eventLoop)
    }
}
