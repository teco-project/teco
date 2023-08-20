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
    /// RejectVpcPeeringConnection请求参数结构体
    public struct RejectVpcPeeringConnectionRequest: TCRequest {
        public init() {
        }
    }

    /// RejectVpcPeeringConnection返回参数结构体
    public struct RejectVpcPeeringConnectionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 驳回对等连接
    ///
    /// 本接口（RejectVpcPeeringConnection）用于驳回对等连接请求。
    @inlinable @discardableResult
    public func rejectVpcPeeringConnection(_ input: RejectVpcPeeringConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectVpcPeeringConnectionResponse> {
        self.client.execute(action: "RejectVpcPeeringConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 驳回对等连接
    ///
    /// 本接口（RejectVpcPeeringConnection）用于驳回对等连接请求。
    @inlinable @discardableResult
    public func rejectVpcPeeringConnection(_ input: RejectVpcPeeringConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectVpcPeeringConnectionResponse {
        try await self.client.execute(action: "RejectVpcPeeringConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 驳回对等连接
    ///
    /// 本接口（RejectVpcPeeringConnection）用于驳回对等连接请求。
    @inlinable @discardableResult
    public func rejectVpcPeeringConnection(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectVpcPeeringConnectionResponse> {
        self.rejectVpcPeeringConnection(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 驳回对等连接
    ///
    /// 本接口（RejectVpcPeeringConnection）用于驳回对等连接请求。
    @inlinable @discardableResult
    public func rejectVpcPeeringConnection(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectVpcPeeringConnectionResponse {
        try await self.rejectVpcPeeringConnection(.init(), region: region, logger: logger, on: eventLoop)
    }
}
