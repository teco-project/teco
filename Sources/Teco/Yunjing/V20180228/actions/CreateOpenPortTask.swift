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

extension Yunjing {
    /// CreateOpenPortTask请求参数结构体
    public struct CreateOpenPortTaskRequest: TCRequestModel {
        /// 云镜客户端唯一Uuid。
        public let uuid: String

        public init(uuid: String) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// CreateOpenPortTask返回参数结构体
    public struct CreateOpenPortTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建实时获取端口任务
    ///
    /// 本接口 (CreateOpenPortTask) 用于创建实时获取端口任务。
    @inlinable
    public func createOpenPortTask(_ input: CreateOpenPortTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOpenPortTaskResponse > {
        self.client.execute(action: "CreateOpenPortTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实时获取端口任务
    ///
    /// 本接口 (CreateOpenPortTask) 用于创建实时获取端口任务。
    @inlinable
    public func createOpenPortTask(_ input: CreateOpenPortTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenPortTaskResponse {
        try await self.client.execute(action: "CreateOpenPortTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实时获取端口任务
    ///
    /// 本接口 (CreateOpenPortTask) 用于创建实时获取端口任务。
    @inlinable
    public func createOpenPortTask(uuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOpenPortTaskResponse > {
        self.createOpenPortTask(CreateOpenPortTaskRequest(uuid: uuid), logger: logger, on: eventLoop)
    }

    /// 创建实时获取端口任务
    ///
    /// 本接口 (CreateOpenPortTask) 用于创建实时获取端口任务。
    @inlinable
    public func createOpenPortTask(uuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpenPortTaskResponse {
        try await self.createOpenPortTask(CreateOpenPortTaskRequest(uuid: uuid), logger: logger, on: eventLoop)
    }
}
