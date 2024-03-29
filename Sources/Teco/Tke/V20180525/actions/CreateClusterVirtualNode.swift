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

extension Tke {
    /// CreateClusterVirtualNode请求参数结构体
    public struct CreateClusterVirtualNodeRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 虚拟节点所属节点池
        public let nodePoolId: String

        /// 虚拟节点所属子网
        public let subnetId: String?

        /// 虚拟节点子网ID列表，和参数SubnetId互斥
        public let subnetIds: [String]?

        /// 虚拟节点列表
        public let virtualNodes: [VirtualNodeSpec]?

        public init(clusterId: String, nodePoolId: String, subnetId: String? = nil, subnetIds: [String]? = nil, virtualNodes: [VirtualNodeSpec]? = nil) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.subnetId = subnetId
            self.subnetIds = subnetIds
            self.virtualNodes = virtualNodes
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case subnetId = "SubnetId"
            case subnetIds = "SubnetIds"
            case virtualNodes = "VirtualNodes"
        }
    }

    /// CreateClusterVirtualNode返回参数结构体
    public struct CreateClusterVirtualNodeResponse: TCResponse {
        /// 虚拟节点名称
        public let nodeName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeName = "NodeName"
            case requestId = "RequestId"
        }
    }

    /// 创建虚拟节点
    @inlinable
    public func createClusterVirtualNode(_ input: CreateClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterVirtualNodeResponse> {
        self.client.execute(action: "CreateClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建虚拟节点
    @inlinable
    public func createClusterVirtualNode(_ input: CreateClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterVirtualNodeResponse {
        try await self.client.execute(action: "CreateClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建虚拟节点
    @inlinable
    public func createClusterVirtualNode(clusterId: String, nodePoolId: String, subnetId: String? = nil, subnetIds: [String]? = nil, virtualNodes: [VirtualNodeSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterVirtualNodeResponse> {
        self.createClusterVirtualNode(.init(clusterId: clusterId, nodePoolId: nodePoolId, subnetId: subnetId, subnetIds: subnetIds, virtualNodes: virtualNodes), region: region, logger: logger, on: eventLoop)
    }

    /// 创建虚拟节点
    @inlinable
    public func createClusterVirtualNode(clusterId: String, nodePoolId: String, subnetId: String? = nil, subnetIds: [String]? = nil, virtualNodes: [VirtualNodeSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterVirtualNodeResponse {
        try await self.createClusterVirtualNode(.init(clusterId: clusterId, nodePoolId: nodePoolId, subnetId: subnetId, subnetIds: subnetIds, virtualNodes: virtualNodes), region: region, logger: logger, on: eventLoop)
    }
}
