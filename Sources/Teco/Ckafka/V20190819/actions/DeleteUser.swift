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

extension Ckafka {
    /// DeleteUser请求参数结构体
    public struct DeleteUserRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 用户名称
        public let name: String

        public init(instanceId: String, name: String) {
            self.instanceId = instanceId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case name = "Name"
        }
    }

    /// DeleteUser返回参数结构体
    public struct DeleteUserResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除用户
    @inlinable
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户
    @inlinable
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户
    @inlinable
    public func deleteUser(instanceId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        let input = DeleteUserRequest(instanceId: instanceId, name: name)
        return self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户
    @inlinable
    public func deleteUser(instanceId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        let input = DeleteUserRequest(instanceId: instanceId, name: name)
        return try await self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
