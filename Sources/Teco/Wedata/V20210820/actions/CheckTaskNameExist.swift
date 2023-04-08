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

extension Wedata {
    /// CheckTaskNameExist请求参数结构体
    public struct CheckTaskNameExistRequest: TCRequestModel {
        /// 项目id/工作空间id
        public let projectId: String

        /// 任务类型（跟调度传参保持一致27）
        public let typeId: Int64

        /// 任务名
        public let taskName: String

        public init(projectId: String, typeId: Int64, taskName: String) {
            self.projectId = projectId
            self.typeId = typeId
            self.taskName = taskName
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case typeId = "TypeId"
            case taskName = "TaskName"
        }
    }

    /// CheckTaskNameExist返回参数结构体
    public struct CheckTaskNameExistResponse: TCResponseModel {
        /// 结果
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 离线任务重名校验
    @inlinable
    public func checkTaskNameExist(_ input: CheckTaskNameExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckTaskNameExistResponse> {
        self.client.execute(action: "CheckTaskNameExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 离线任务重名校验
    @inlinable
    public func checkTaskNameExist(_ input: CheckTaskNameExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckTaskNameExistResponse {
        try await self.client.execute(action: "CheckTaskNameExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 离线任务重名校验
    @inlinable
    public func checkTaskNameExist(projectId: String, typeId: Int64, taskName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckTaskNameExistResponse> {
        self.checkTaskNameExist(.init(projectId: projectId, typeId: typeId, taskName: taskName), region: region, logger: logger, on: eventLoop)
    }

    /// 离线任务重名校验
    @inlinable
    public func checkTaskNameExist(projectId: String, typeId: Int64, taskName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckTaskNameExistResponse {
        try await self.checkTaskNameExist(.init(projectId: projectId, typeId: typeId, taskName: taskName), region: region, logger: logger, on: eventLoop)
    }
}
