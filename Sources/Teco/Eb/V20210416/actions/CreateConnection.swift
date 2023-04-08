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

extension Eb {
    /// CreateConnection请求参数结构体
    public struct CreateConnectionRequest: TCRequestModel {
        /// 连接器描述
        public let connectionDescription: ConnectionDescription

        /// 事件集ID
        public let eventBusId: String

        /// 连接器名称
        public let connectionName: String

        /// 描述
        public let description: String?

        /// 使能开关
        public let enable: Bool?

        /// 类型
        public let type: String?

        public init(connectionDescription: ConnectionDescription, eventBusId: String, connectionName: String, description: String? = nil, enable: Bool? = nil, type: String? = nil) {
            self.connectionDescription = connectionDescription
            self.eventBusId = eventBusId
            self.connectionName = connectionName
            self.description = description
            self.enable = enable
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case connectionDescription = "ConnectionDescription"
            case eventBusId = "EventBusId"
            case connectionName = "ConnectionName"
            case description = "Description"
            case enable = "Enable"
            case type = "Type"
        }
    }

    /// CreateConnection返回参数结构体
    public struct CreateConnectionResponse: TCResponseModel {
        /// 连接器ID
        public let connectionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case connectionId = "ConnectionId"
            case requestId = "RequestId"
        }
    }

    /// 创建事件连接器
    @inlinable
    public func createConnection(_ input: CreateConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectionResponse> {
        self.client.execute(action: "CreateConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建事件连接器
    @inlinable
    public func createConnection(_ input: CreateConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConnectionResponse {
        try await self.client.execute(action: "CreateConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建事件连接器
    @inlinable
    public func createConnection(connectionDescription: ConnectionDescription, eventBusId: String, connectionName: String, description: String? = nil, enable: Bool? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectionResponse> {
        self.createConnection(.init(connectionDescription: connectionDescription, eventBusId: eventBusId, connectionName: connectionName, description: description, enable: enable, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 创建事件连接器
    @inlinable
    public func createConnection(connectionDescription: ConnectionDescription, eventBusId: String, connectionName: String, description: String? = nil, enable: Bool? = nil, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConnectionResponse {
        try await self.createConnection(.init(connectionDescription: connectionDescription, eventBusId: eventBusId, connectionName: connectionName, description: description, enable: enable, type: type), region: region, logger: logger, on: eventLoop)
    }
}
