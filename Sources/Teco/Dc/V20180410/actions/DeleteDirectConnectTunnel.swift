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

extension Dc {
    /// DeleteDirectConnectTunnel请求参数结构体
    public struct DeleteDirectConnectTunnelRequest: TCRequestModel {
        /// 专用通道ID
        public let directConnectTunnelId: String

        public init(directConnectTunnelId: String) {
            self.directConnectTunnelId = directConnectTunnelId
        }

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
        }
    }

    /// DeleteDirectConnectTunnel返回参数结构体
    public struct DeleteDirectConnectTunnelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除专用通道
    @inlinable @discardableResult
    public func deleteDirectConnectTunnel(_ input: DeleteDirectConnectTunnelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectConnectTunnelResponse> {
        self.client.execute(action: "DeleteDirectConnectTunnel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除专用通道
    @inlinable @discardableResult
    public func deleteDirectConnectTunnel(_ input: DeleteDirectConnectTunnelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectConnectTunnelResponse {
        try await self.client.execute(action: "DeleteDirectConnectTunnel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除专用通道
    @inlinable @discardableResult
    public func deleteDirectConnectTunnel(directConnectTunnelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDirectConnectTunnelResponse> {
        self.deleteDirectConnectTunnel(.init(directConnectTunnelId: directConnectTunnelId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除专用通道
    @inlinable @discardableResult
    public func deleteDirectConnectTunnel(directConnectTunnelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDirectConnectTunnelResponse {
        try await self.deleteDirectConnectTunnel(.init(directConnectTunnelId: directConnectTunnelId), region: region, logger: logger, on: eventLoop)
    }
}
