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

extension Bmvpc {
    /// DeleteVpcPeerConnection请求参数结构体
    public struct DeleteVpcPeerConnectionRequest: TCRequest {
        /// 黑石对等连接实例ID
        public let vpcPeerConnectionId: String

        public init(vpcPeerConnectionId: String) {
            self.vpcPeerConnectionId = vpcPeerConnectionId
        }

        enum CodingKeys: String, CodingKey {
            case vpcPeerConnectionId = "VpcPeerConnectionId"
        }
    }

    /// DeleteVpcPeerConnection返回参数结构体
    public struct DeleteVpcPeerConnectionResponse: TCResponse {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除黑石对等连接
    @inlinable
    public func deleteVpcPeerConnection(_ input: DeleteVpcPeerConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcPeerConnectionResponse> {
        self.client.execute(action: "DeleteVpcPeerConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除黑石对等连接
    @inlinable
    public func deleteVpcPeerConnection(_ input: DeleteVpcPeerConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcPeerConnectionResponse {
        try await self.client.execute(action: "DeleteVpcPeerConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除黑石对等连接
    @inlinable
    public func deleteVpcPeerConnection(vpcPeerConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpcPeerConnectionResponse> {
        self.deleteVpcPeerConnection(.init(vpcPeerConnectionId: vpcPeerConnectionId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除黑石对等连接
    @inlinable
    public func deleteVpcPeerConnection(vpcPeerConnectionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcPeerConnectionResponse {
        try await self.deleteVpcPeerConnection(.init(vpcPeerConnectionId: vpcPeerConnectionId), region: region, logger: logger, on: eventLoop)
    }
}
