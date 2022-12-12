//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dc {
    /// AcceptDirectConnectTunnel请求参数结构体
    public struct AcceptDirectConnectTunnelRequest: TCRequestModel {
        /// 物理专线拥有者接受共享专用通道申请
        public let directConnectTunnelId: String
        
        public init (directConnectTunnelId: String) {
            self.directConnectTunnelId = directConnectTunnelId
        }
        
        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
        }
    }
    
    /// AcceptDirectConnectTunnel返回参数结构体
    public struct AcceptDirectConnectTunnelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 接受专用通道申请
    @inlinable
    public func acceptDirectConnectTunnel(_ input: AcceptDirectConnectTunnelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AcceptDirectConnectTunnelResponse > {
        self.client.execute(action: "AcceptDirectConnectTunnel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 接受专用通道申请
    @inlinable
    public func acceptDirectConnectTunnel(_ input: AcceptDirectConnectTunnelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptDirectConnectTunnelResponse {
        try await self.client.execute(action: "AcceptDirectConnectTunnel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
