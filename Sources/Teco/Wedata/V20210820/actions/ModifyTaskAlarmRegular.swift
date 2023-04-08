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

extension Wedata {
    /// ModifyTaskAlarmRegular请求参数结构体
    public struct ModifyTaskAlarmRegularRequest: TCRequestModel {
        /// 主键ID
        public let id: String

        /// 规则信息
        public let taskAlarmInfo: TaskAlarmInfo

        /// 项目ID
        public let projectId: String

        public init(id: String, taskAlarmInfo: TaskAlarmInfo, projectId: String) {
            self.id = id
            self.taskAlarmInfo = taskAlarmInfo
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case taskAlarmInfo = "TaskAlarmInfo"
            case projectId = "ProjectId"
        }
    }

    /// ModifyTaskAlarmRegular返回参数结构体
    public struct ModifyTaskAlarmRegularResponse: TCResponseModel {
        /// 判断是否修改成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改任务告警规则
    @inlinable
    public func modifyTaskAlarmRegular(_ input: ModifyTaskAlarmRegularRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskAlarmRegularResponse> {
        self.client.execute(action: "ModifyTaskAlarmRegular", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改任务告警规则
    @inlinable
    public func modifyTaskAlarmRegular(_ input: ModifyTaskAlarmRegularRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskAlarmRegularResponse {
        try await self.client.execute(action: "ModifyTaskAlarmRegular", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改任务告警规则
    @inlinable
    public func modifyTaskAlarmRegular(id: String, taskAlarmInfo: TaskAlarmInfo, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskAlarmRegularResponse> {
        self.modifyTaskAlarmRegular(.init(id: id, taskAlarmInfo: taskAlarmInfo, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改任务告警规则
    @inlinable
    public func modifyTaskAlarmRegular(id: String, taskAlarmInfo: TaskAlarmInfo, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskAlarmRegularResponse {
        try await self.modifyTaskAlarmRegular(.init(id: id, taskAlarmInfo: taskAlarmInfo, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
