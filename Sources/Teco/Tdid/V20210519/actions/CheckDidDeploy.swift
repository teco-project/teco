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

extension Tdid {
    /// CheckDidDeploy请求参数结构体
    public struct CheckDidDeployRequest: TCRequestModel {
        /// 任务ID
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// CheckDidDeploy返回参数结构体
    public struct CheckDidDeployResponse: TCResponseModel {
        /// 服务信息
        public let task: Task

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case task = "Task"
            case requestId = "RequestId"
        }
    }

    /// 检查部署情况
    @inlinable
    public func checkDidDeploy(_ input: CheckDidDeployRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDidDeployResponse> {
        self.client.execute(action: "CheckDidDeploy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查部署情况
    @inlinable
    public func checkDidDeploy(_ input: CheckDidDeployRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDidDeployResponse {
        try await self.client.execute(action: "CheckDidDeploy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查部署情况
    @inlinable
    public func checkDidDeploy(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckDidDeployResponse> {
        self.checkDidDeploy(CheckDidDeployRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 检查部署情况
    @inlinable
    public func checkDidDeploy(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDidDeployResponse {
        try await self.checkDidDeploy(CheckDidDeployRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
