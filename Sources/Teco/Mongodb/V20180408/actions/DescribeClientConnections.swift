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

extension Mongodb {
    /// DescribeClientConnections请求参数结构体
    public struct DescribeClientConnectionsRequest: TCRequest {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeClientConnections返回参数结构体
    public struct DescribeClientConnectionsResponse: TCResponse {
        /// 客户端连接信息，包括客户端IP和对应IP的连接数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clients: [ClientConnection]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clients = "Clients"
            case requestId = "RequestId"
        }
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。目前只支持3.2版本的MongoDB实例。
    @inlinable
    public func describeClientConnections(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientConnectionsResponse> {
        self.client.execute(action: "DescribeClientConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。目前只支持3.2版本的MongoDB实例。
    @inlinable
    public func describeClientConnections(_ input: DescribeClientConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientConnectionsResponse {
        try await self.client.execute(action: "DescribeClientConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。目前只支持3.2版本的MongoDB实例。
    @inlinable
    public func describeClientConnections(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientConnectionsResponse> {
        self.describeClientConnections(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例客户端连接信息
    ///
    /// 本接口(DescribeClientConnections)用于查询实例客户端连接信息，包括连接IP和连接数量。目前只支持3.2版本的MongoDB实例。
    @inlinable
    public func describeClientConnections(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientConnectionsResponse {
        try await self.describeClientConnections(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
