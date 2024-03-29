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

extension Tdmq {
    /// ModifyRabbitMQUser请求参数结构体
    public struct ModifyRabbitMQUserRequest: TCRequest {
        /// 集群实例Id
        public let instanceId: String

        /// 用户名，登录时使用
        public let user: String

        /// 密码，登录时使用
        public let password: String

        /// 描述，不传则不修改
        public let description: String?

        /// 用户标签，用于决定改用户访问RabbitMQ Management的权限范围，不传则不修改
        public let tags: [String]?

        /// 该用户的最大连接数，不传则不修改
        public let maxConnections: Int64?

        /// 该用户的最大channel数，不传则不修改
        public let maxChannels: Int64?

        public init(instanceId: String, user: String, password: String, description: String? = nil, tags: [String]? = nil, maxConnections: Int64? = nil, maxChannels: Int64? = nil) {
            self.instanceId = instanceId
            self.user = user
            self.password = password
            self.description = description
            self.tags = tags
            self.maxConnections = maxConnections
            self.maxChannels = maxChannels
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case user = "User"
            case password = "Password"
            case description = "Description"
            case tags = "Tags"
            case maxConnections = "MaxConnections"
            case maxChannels = "MaxChannels"
        }
    }

    /// ModifyRabbitMQUser返回参数结构体
    public struct ModifyRabbitMQUserResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改RabbitMQ的用户
    @inlinable @discardableResult
    public func modifyRabbitMQUser(_ input: ModifyRabbitMQUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRabbitMQUserResponse> {
        self.client.execute(action: "ModifyRabbitMQUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改RabbitMQ的用户
    @inlinable @discardableResult
    public func modifyRabbitMQUser(_ input: ModifyRabbitMQUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRabbitMQUserResponse {
        try await self.client.execute(action: "ModifyRabbitMQUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改RabbitMQ的用户
    @inlinable @discardableResult
    public func modifyRabbitMQUser(instanceId: String, user: String, password: String, description: String? = nil, tags: [String]? = nil, maxConnections: Int64? = nil, maxChannels: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRabbitMQUserResponse> {
        self.modifyRabbitMQUser(.init(instanceId: instanceId, user: user, password: password, description: description, tags: tags, maxConnections: maxConnections, maxChannels: maxChannels), region: region, logger: logger, on: eventLoop)
    }

    /// 修改RabbitMQ的用户
    @inlinable @discardableResult
    public func modifyRabbitMQUser(instanceId: String, user: String, password: String, description: String? = nil, tags: [String]? = nil, maxConnections: Int64? = nil, maxChannels: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRabbitMQUserResponse {
        try await self.modifyRabbitMQUser(.init(instanceId: instanceId, user: user, password: password, description: description, tags: tags, maxConnections: maxConnections, maxChannels: maxChannels), region: region, logger: logger, on: eventLoop)
    }
}
