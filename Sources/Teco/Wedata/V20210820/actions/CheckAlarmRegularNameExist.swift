//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CheckAlarmRegularNameExist请求参数结构体
    public struct CheckAlarmRegularNameExistRequest: TCRequestModel {
        /// 项目名称
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 规则名称
        public let alarmRegularName: String

        /// 主键ID
        public let id: String?

        public init(projectId: String, taskId: String, alarmRegularName: String, id: String? = nil) {
            self.projectId = projectId
            self.taskId = taskId
            self.alarmRegularName = alarmRegularName
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case alarmRegularName = "AlarmRegularName"
            case id = "Id"
        }
    }

    /// CheckAlarmRegularNameExist返回参数结构体
    public struct CheckAlarmRegularNameExistResponse: TCResponseModel {
        /// 是否重名
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 判断告警规则重名
    @inlinable
    public func checkAlarmRegularNameExist(_ input: CheckAlarmRegularNameExistRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckAlarmRegularNameExistResponse > {
        self.client.execute(action: "CheckAlarmRegularNameExist", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 判断告警规则重名
    @inlinable
    public func checkAlarmRegularNameExist(_ input: CheckAlarmRegularNameExistRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAlarmRegularNameExistResponse {
        try await self.client.execute(action: "CheckAlarmRegularNameExist", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 判断告警规则重名
    @inlinable
    public func checkAlarmRegularNameExist(projectId: String, taskId: String, alarmRegularName: String, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckAlarmRegularNameExistResponse > {
        self.checkAlarmRegularNameExist(CheckAlarmRegularNameExistRequest(projectId: projectId, taskId: taskId, alarmRegularName: alarmRegularName, id: id), logger: logger, on: eventLoop)
    }

    /// 判断告警规则重名
    @inlinable
    public func checkAlarmRegularNameExist(projectId: String, taskId: String, alarmRegularName: String, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckAlarmRegularNameExistResponse {
        try await self.checkAlarmRegularNameExist(CheckAlarmRegularNameExistRequest(projectId: projectId, taskId: taskId, alarmRegularName: alarmRegularName, id: id), logger: logger, on: eventLoop)
    }
}
