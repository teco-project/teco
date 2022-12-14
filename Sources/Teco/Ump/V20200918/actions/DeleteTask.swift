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

extension Ump {
    /// DeleteTask请求参数结构体
    public struct DeleteTaskRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 任务ID
        public let taskId: UInt64

        public init(groupCode: String, mallId: UInt64, taskId: UInt64) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case taskId = "TaskId"
        }
    }

    /// DeleteTask返回参数结构体
    public struct DeleteTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除任务
    ///
    /// 删除集团广场对应的任务
    @inlinable
    public func deleteTask(_ input: DeleteTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTaskResponse > {
        self.client.execute(action: "DeleteTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务
    ///
    /// 删除集团广场对应的任务
    @inlinable
    public func deleteTask(_ input: DeleteTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskResponse {
        try await self.client.execute(action: "DeleteTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务
    ///
    /// 删除集团广场对应的任务
    @inlinable
    public func deleteTask(groupCode: String, mallId: UInt64, taskId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTaskResponse > {
        self.deleteTask(DeleteTaskRequest(groupCode: groupCode, mallId: mallId, taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 删除任务
    ///
    /// 删除集团广场对应的任务
    @inlinable
    public func deleteTask(groupCode: String, mallId: UInt64, taskId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskResponse {
        try await self.deleteTask(DeleteTaskRequest(groupCode: groupCode, mallId: mallId, taskId: taskId), logger: logger, on: eventLoop)
    }
}
