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
    /// CheckIntegrationTaskNameExists请求参数结构体
    public struct CheckIntegrationTaskNameExistsRequest: TCRequestModel {
        /// 任务名称
        public let taskName: String

        /// 项目ID
        public let projectId: String

        /// 任务ID
        public let taskId: String?

        /// 同步类型1.单表同步，2.解决方案
        public let syncType: Int64?

        public init(taskName: String, projectId: String, taskId: String? = nil, syncType: Int64? = nil) {
            self.taskName = taskName
            self.projectId = projectId
            self.taskId = taskId
            self.syncType = syncType
        }

        enum CodingKeys: String, CodingKey {
            case taskName = "TaskName"
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case syncType = "SyncType"
        }
    }

    /// CheckIntegrationTaskNameExists返回参数结构体
    public struct CheckIntegrationTaskNameExistsResponse: TCResponseModel {
        /// true表示存在，false表示不存在
        public let data: Bool

        /// 任务名重复类型（0:未重复, 1:开发态重复, 2:生产态重复）
        public let existsType: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case existsType = "ExistsType"
            case requestId = "RequestId"
        }
    }

    /// 判断集成任务名称是否存在
    @inlinable
    public func checkIntegrationTaskNameExists(_ input: CheckIntegrationTaskNameExistsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckIntegrationTaskNameExistsResponse> {
        self.client.execute(action: "CheckIntegrationTaskNameExists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 判断集成任务名称是否存在
    @inlinable
    public func checkIntegrationTaskNameExists(_ input: CheckIntegrationTaskNameExistsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckIntegrationTaskNameExistsResponse {
        try await self.client.execute(action: "CheckIntegrationTaskNameExists", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 判断集成任务名称是否存在
    @inlinable
    public func checkIntegrationTaskNameExists(taskName: String, projectId: String, taskId: String? = nil, syncType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckIntegrationTaskNameExistsResponse> {
        self.checkIntegrationTaskNameExists(.init(taskName: taskName, projectId: projectId, taskId: taskId, syncType: syncType), region: region, logger: logger, on: eventLoop)
    }

    /// 判断集成任务名称是否存在
    @inlinable
    public func checkIntegrationTaskNameExists(taskName: String, projectId: String, taskId: String? = nil, syncType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckIntegrationTaskNameExistsResponse {
        try await self.checkIntegrationTaskNameExists(.init(taskName: taskName, projectId: projectId, taskId: taskId, syncType: syncType), region: region, logger: logger, on: eventLoop)
    }
}
