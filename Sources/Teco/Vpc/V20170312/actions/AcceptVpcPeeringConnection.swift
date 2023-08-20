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
    /// AcceptVpcPeeringConnection请求参数结构体
    public struct AcceptVpcPeeringConnectionRequest: TCRequest {
        /// 对等连接唯一ID。
        public let peeringConnectionId: String

        public init(peeringConnectionId: String) {
            self.peeringConnectionId = peeringConnectionId
        }

        enum CodingKeys: String, CodingKey {
            case peeringConnectionId = "PeeringConnectionId"
        }
    }

    /// AcceptVpcPeeringConnection返回参数结构体
    public struct AcceptVpcPeeringConnectionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 接受对等连接
    ///
    /// 本接口（AcceptVpcPeeringConnection）用于接受对等连接请求。
    @inlinable @discardableResult
    public func acceptVpcPeeringConnection(_ input: AcceptVpcPeeringConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptVpcPeeringConnectionResponse> {
        self.client.execute(action: "AcceptVpcPeeringConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 接受对等连接
    ///
    /// 本接口（AcceptVpcPeeringConnection）用于接受对等连接请求。
    @inlinable @discardableResult
    public func acceptVpcPeeringConnection(_ input: AcceptVpcPeeringConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptVpcPeeringConnectionResponse {
        try await self.client.execute(action: "AcceptVpcPeeringConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 接受对等连接
    ///
    /// 本接口（AcceptVpcPeeringConnection）用于接受对等连接请求。
    @inlinable @discardableResult
    public func acceptVpcPeeringConnection(peeringConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptVpcPeeringConnectionResponse> {
        self.acceptVpcPeeringConnection(.init(peeringConnectionId: peeringConnectionId), region: region, logger: logger, on: eventLoop)
    }

    /// 接受对等连接
    ///
    /// 本接口（AcceptVpcPeeringConnection）用于接受对等连接请求。
    @inlinable @discardableResult
    public func acceptVpcPeeringConnection(peeringConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptVpcPeeringConnectionResponse {
        try await self.acceptVpcPeeringConnection(.init(peeringConnectionId: peeringConnectionId), region: region, logger: logger, on: eventLoop)
    }
}
