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

extension Bmvpc {
    /// RejectVpcPeerConnection请求参数结构体
    public struct RejectVpcPeerConnectionRequest: TCRequestModel {
        /// 黑石对等连接实例ID
        public let vpcPeerConnectionId: String

        public init(vpcPeerConnectionId: String) {
            self.vpcPeerConnectionId = vpcPeerConnectionId
        }

        enum CodingKeys: String, CodingKey {
            case vpcPeerConnectionId = "VpcPeerConnectionId"
        }
    }

    /// RejectVpcPeerConnection返回参数结构体
    public struct RejectVpcPeerConnectionResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 拒绝黑石对等连接申请
    @inlinable
    public func rejectVpcPeerConnection(_ input: RejectVpcPeerConnectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RejectVpcPeerConnectionResponse > {
        self.client.execute(action: "RejectVpcPeerConnection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拒绝黑石对等连接申请
    @inlinable
    public func rejectVpcPeerConnection(_ input: RejectVpcPeerConnectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectVpcPeerConnectionResponse {
        try await self.client.execute(action: "RejectVpcPeerConnection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拒绝黑石对等连接申请
    @inlinable
    public func rejectVpcPeerConnection(vpcPeerConnectionId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RejectVpcPeerConnectionResponse > {
        self.rejectVpcPeerConnection(RejectVpcPeerConnectionRequest(vpcPeerConnectionId: vpcPeerConnectionId), logger: logger, on: eventLoop)
    }

    /// 拒绝黑石对等连接申请
    @inlinable
    public func rejectVpcPeerConnection(vpcPeerConnectionId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectVpcPeerConnectionResponse {
        try await self.rejectVpcPeerConnection(RejectVpcPeerConnectionRequest(vpcPeerConnectionId: vpcPeerConnectionId), logger: logger, on: eventLoop)
    }
}
