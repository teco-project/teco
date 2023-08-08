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
    /// RejectDirectConnectTunnel请求参数结构体
    public struct RejectDirectConnectTunnelRequest: TCRequestModel {
        public let directConnectTunnelId: String

        public init(directConnectTunnelId: String) {
            self.directConnectTunnelId = directConnectTunnelId
        }

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
        }
    }

    /// RejectDirectConnectTunnel返回参数结构体
    public struct RejectDirectConnectTunnelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 拒绝专用通道申请
    @inlinable @discardableResult
    public func rejectDirectConnectTunnel(_ input: RejectDirectConnectTunnelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectDirectConnectTunnelResponse> {
        self.client.execute(action: "RejectDirectConnectTunnel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拒绝专用通道申请
    @inlinable @discardableResult
    public func rejectDirectConnectTunnel(_ input: RejectDirectConnectTunnelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectDirectConnectTunnelResponse {
        try await self.client.execute(action: "RejectDirectConnectTunnel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拒绝专用通道申请
    @inlinable @discardableResult
    public func rejectDirectConnectTunnel(directConnectTunnelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RejectDirectConnectTunnelResponse> {
        self.rejectDirectConnectTunnel(.init(directConnectTunnelId: directConnectTunnelId), region: region, logger: logger, on: eventLoop)
    }

    /// 拒绝专用通道申请
    @inlinable @discardableResult
    public func rejectDirectConnectTunnel(directConnectTunnelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectDirectConnectTunnelResponse {
        try await self.rejectDirectConnectTunnel(.init(directConnectTunnelId: directConnectTunnelId), region: region, logger: logger, on: eventLoop)
    }
}
