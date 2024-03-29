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

extension Vpc {
    /// ResetNatGatewayConnection请求参数结构体
    public struct ResetNatGatewayConnectionRequest: TCRequest {
        /// NAT网关ID。
        public let natGatewayId: String

        /// NAT网关并发连接上限，形如：1000000、3000000、10000000。
        public let maxConcurrentConnection: UInt64

        public init(natGatewayId: String, maxConcurrentConnection: UInt64) {
            self.natGatewayId = natGatewayId
            self.maxConcurrentConnection = maxConcurrentConnection
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case maxConcurrentConnection = "MaxConcurrentConnection"
        }
    }

    /// ResetNatGatewayConnection返回参数结构体
    public struct ResetNatGatewayConnectionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整NAT网关并发连接上限
    ///
    /// 本接口（ResetNatGatewayConnection）用来NAT网关并发连接上限。
    @inlinable @discardableResult
    public func resetNatGatewayConnection(_ input: ResetNatGatewayConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetNatGatewayConnectionResponse> {
        self.client.execute(action: "ResetNatGatewayConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整NAT网关并发连接上限
    ///
    /// 本接口（ResetNatGatewayConnection）用来NAT网关并发连接上限。
    @inlinable @discardableResult
    public func resetNatGatewayConnection(_ input: ResetNatGatewayConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetNatGatewayConnectionResponse {
        try await self.client.execute(action: "ResetNatGatewayConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整NAT网关并发连接上限
    ///
    /// 本接口（ResetNatGatewayConnection）用来NAT网关并发连接上限。
    @inlinable @discardableResult
    public func resetNatGatewayConnection(natGatewayId: String, maxConcurrentConnection: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetNatGatewayConnectionResponse> {
        self.resetNatGatewayConnection(.init(natGatewayId: natGatewayId, maxConcurrentConnection: maxConcurrentConnection), region: region, logger: logger, on: eventLoop)
    }

    /// 调整NAT网关并发连接上限
    ///
    /// 本接口（ResetNatGatewayConnection）用来NAT网关并发连接上限。
    @inlinable @discardableResult
    public func resetNatGatewayConnection(natGatewayId: String, maxConcurrentConnection: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetNatGatewayConnectionResponse {
        try await self.resetNatGatewayConnection(.init(natGatewayId: natGatewayId, maxConcurrentConnection: maxConcurrentConnection), region: region, logger: logger, on: eventLoop)
    }
}
