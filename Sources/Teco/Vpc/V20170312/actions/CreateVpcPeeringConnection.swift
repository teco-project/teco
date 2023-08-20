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
    /// CreateVpcPeeringConnection请求参数结构体
    public struct CreateVpcPeeringConnectionRequest: TCRequest {
        public init() {
        }
    }

    /// CreateVpcPeeringConnection返回参数结构体
    public struct CreateVpcPeeringConnectionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建私有网络对等连接
    ///
    /// 本接口（CreateVpcPeeringConnection）用于创建私有网络对等连接。
    @inlinable @discardableResult
    public func createVpcPeeringConnection(_ input: CreateVpcPeeringConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcPeeringConnectionResponse> {
        self.client.execute(action: "CreateVpcPeeringConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建私有网络对等连接
    ///
    /// 本接口（CreateVpcPeeringConnection）用于创建私有网络对等连接。
    @inlinable @discardableResult
    public func createVpcPeeringConnection(_ input: CreateVpcPeeringConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcPeeringConnectionResponse {
        try await self.client.execute(action: "CreateVpcPeeringConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建私有网络对等连接
    ///
    /// 本接口（CreateVpcPeeringConnection）用于创建私有网络对等连接。
    @inlinable @discardableResult
    public func createVpcPeeringConnection(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVpcPeeringConnectionResponse> {
        self.createVpcPeeringConnection(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 创建私有网络对等连接
    ///
    /// 本接口（CreateVpcPeeringConnection）用于创建私有网络对等连接。
    @inlinable @discardableResult
    public func createVpcPeeringConnection(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcPeeringConnectionResponse {
        try await self.createVpcPeeringConnection(.init(), region: region, logger: logger, on: eventLoop)
    }
}