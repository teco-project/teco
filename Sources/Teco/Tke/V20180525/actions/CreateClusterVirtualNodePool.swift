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

extension Tke {
    /// CreateClusterVirtualNodePool请求参数结构体
    public struct CreateClusterVirtualNodePoolRequest: TCRequestModel {
        /// 集群Id
        public let clusterId: String

        /// 节点池名称
        public let name: String

        /// 子网ID列表
        public let subnetIds: [String]?

        /// 安全组ID列表
        public let securityGroupIds: [String]?

        /// 虚拟节点label
        public let labels: [Label]?

        /// 虚拟节点taint
        public let taints: [Taint]?

        /// 节点列表
        public let virtualNodes: [VirtualNodeSpec]?

        /// 删除保护开关
        public let deletionProtection: Bool?

        /// 节点池操作系统：
        /// - linux（默认）
        /// - windows
        public let os: String?

        public init(clusterId: String, name: String, subnetIds: [String]? = nil, securityGroupIds: [String]? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, virtualNodes: [VirtualNodeSpec]? = nil, deletionProtection: Bool? = nil, os: String? = nil) {
            self.clusterId = clusterId
            self.name = name
            self.subnetIds = subnetIds
            self.securityGroupIds = securityGroupIds
            self.labels = labels
            self.taints = taints
            self.virtualNodes = virtualNodes
            self.deletionProtection = deletionProtection
            self.os = os
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case name = "Name"
            case subnetIds = "SubnetIds"
            case securityGroupIds = "SecurityGroupIds"
            case labels = "Labels"
            case taints = "Taints"
            case virtualNodes = "VirtualNodes"
            case deletionProtection = "DeletionProtection"
            case os = "OS"
        }
    }

    /// CreateClusterVirtualNodePool返回参数结构体
    public struct CreateClusterVirtualNodePoolResponse: TCResponseModel {
        /// 节点池ID
        public let nodePoolId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodePoolId = "NodePoolId"
            case requestId = "RequestId"
        }
    }

    /// 创建虚拟节点池
    @inlinable
    public func createClusterVirtualNodePool(_ input: CreateClusterVirtualNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterVirtualNodePoolResponse> {
        self.client.execute(action: "CreateClusterVirtualNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建虚拟节点池
    @inlinable
    public func createClusterVirtualNodePool(_ input: CreateClusterVirtualNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterVirtualNodePoolResponse {
        try await self.client.execute(action: "CreateClusterVirtualNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建虚拟节点池
    @inlinable
    public func createClusterVirtualNodePool(clusterId: String, name: String, subnetIds: [String]? = nil, securityGroupIds: [String]? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, virtualNodes: [VirtualNodeSpec]? = nil, deletionProtection: Bool? = nil, os: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterVirtualNodePoolResponse> {
        self.createClusterVirtualNodePool(.init(clusterId: clusterId, name: name, subnetIds: subnetIds, securityGroupIds: securityGroupIds, labels: labels, taints: taints, virtualNodes: virtualNodes, deletionProtection: deletionProtection, os: os), region: region, logger: logger, on: eventLoop)
    }

    /// 创建虚拟节点池
    @inlinable
    public func createClusterVirtualNodePool(clusterId: String, name: String, subnetIds: [String]? = nil, securityGroupIds: [String]? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, virtualNodes: [VirtualNodeSpec]? = nil, deletionProtection: Bool? = nil, os: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterVirtualNodePoolResponse {
        try await self.createClusterVirtualNodePool(.init(clusterId: clusterId, name: name, subnetIds: subnetIds, securityGroupIds: securityGroupIds, labels: labels, taints: taints, virtualNodes: virtualNodes, deletionProtection: deletionProtection, os: os), region: region, logger: logger, on: eventLoop)
    }
}
