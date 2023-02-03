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

extension Bmvpc {
    /// ModifyVpcPeerConnection请求参数结构体
    public struct ModifyVpcPeerConnectionRequest: TCRequestModel {
        /// 黑石对等连接唯一ID
        public let vpcPeerConnectionId: String

        /// 对等连接带宽
        public let bandwidth: UInt64?

        /// 对等连接名称
        public let vpcPeerConnectionName: String?

        public init(vpcPeerConnectionId: String, bandwidth: UInt64? = nil, vpcPeerConnectionName: String? = nil) {
            self.vpcPeerConnectionId = vpcPeerConnectionId
            self.bandwidth = bandwidth
            self.vpcPeerConnectionName = vpcPeerConnectionName
        }

        enum CodingKeys: String, CodingKey {
            case vpcPeerConnectionId = "VpcPeerConnectionId"
            case bandwidth = "Bandwidth"
            case vpcPeerConnectionName = "VpcPeerConnectionName"
        }
    }

    /// ModifyVpcPeerConnection返回参数结构体
    public struct ModifyVpcPeerConnectionResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改黑石对等连接
    @inlinable
    public func modifyVpcPeerConnection(_ input: ModifyVpcPeerConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcPeerConnectionResponse> {
        self.client.execute(action: "ModifyVpcPeerConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石对等连接
    @inlinable
    public func modifyVpcPeerConnection(_ input: ModifyVpcPeerConnectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcPeerConnectionResponse {
        try await self.client.execute(action: "ModifyVpcPeerConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改黑石对等连接
    @inlinable
    public func modifyVpcPeerConnection(vpcPeerConnectionId: String, bandwidth: UInt64? = nil, vpcPeerConnectionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcPeerConnectionResponse> {
        let input = ModifyVpcPeerConnectionRequest(vpcPeerConnectionId: vpcPeerConnectionId, bandwidth: bandwidth, vpcPeerConnectionName: vpcPeerConnectionName)
        return self.client.execute(action: "ModifyVpcPeerConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改黑石对等连接
    @inlinable
    public func modifyVpcPeerConnection(vpcPeerConnectionId: String, bandwidth: UInt64? = nil, vpcPeerConnectionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcPeerConnectionResponse {
        let input = ModifyVpcPeerConnectionRequest(vpcPeerConnectionId: vpcPeerConnectionId, bandwidth: bandwidth, vpcPeerConnectionName: vpcPeerConnectionName)
        return try await self.client.execute(action: "ModifyVpcPeerConnection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
