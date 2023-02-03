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

extension Tcbr {
    /// DescribeServerManageTask请求参数结构体
    public struct DescribeServerManageTaskRequest: TCRequestModel {
        /// 环境Id
        public let envId: String

        /// 服务名
        public let serverName: String

        /// 任务Id
        public let taskId: Int64

        /// 操作标识
        public let operatorRemark: String?

        public init(envId: String, serverName: String, taskId: Int64, operatorRemark: String? = nil) {
            self.envId = envId
            self.serverName = serverName
            self.taskId = taskId
            self.operatorRemark = operatorRemark
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
            case taskId = "TaskId"
            case operatorRemark = "OperatorRemark"
        }
    }

    /// DescribeServerManageTask返回参数结构体
    public struct DescribeServerManageTaskResponse: TCResponseModel {
        /// 是否存在
        public let isExist: Bool

        /// 任务信息
        public let task: ServerManageTaskInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isExist = "IsExist"
            case task = "Task"
            case requestId = "RequestId"
        }
    }

    /// 查询服务管理任务信息
    @inlinable
    public func describeServerManageTask(_ input: DescribeServerManageTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerManageTaskResponse> {
        self.client.execute(action: "DescribeServerManageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务管理任务信息
    @inlinable
    public func describeServerManageTask(_ input: DescribeServerManageTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServerManageTaskResponse {
        try await self.client.execute(action: "DescribeServerManageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务管理任务信息
    @inlinable
    public func describeServerManageTask(envId: String, serverName: String, taskId: Int64, operatorRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerManageTaskResponse> {
        let input = DescribeServerManageTaskRequest(envId: envId, serverName: serverName, taskId: taskId, operatorRemark: operatorRemark)
        return self.client.execute(action: "DescribeServerManageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务管理任务信息
    @inlinable
    public func describeServerManageTask(envId: String, serverName: String, taskId: Int64, operatorRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServerManageTaskResponse {
        let input = DescribeServerManageTaskRequest(envId: envId, serverName: serverName, taskId: taskId, operatorRemark: operatorRemark)
        return try await self.client.execute(action: "DescribeServerManageTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
