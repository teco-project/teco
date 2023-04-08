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
    /// ModifyClusterVirtualNodePool请求参数结构体
    public struct ModifyClusterVirtualNodePoolRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 节点池ID
        public let nodePoolId: String

        /// 节点池名称
        public let name: String?

        /// 虚拟节点label
        public let labels: [Label]?

        /// 虚拟节点taint
        public let taints: [Taint]?

        /// 删除保护开关
        public let deletionProtection: Bool?

        public init(clusterId: String, nodePoolId: String, name: String? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, deletionProtection: Bool? = nil) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.name = name
            self.labels = labels
            self.taints = taints
            self.deletionProtection = deletionProtection
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case name = "Name"
            case labels = "Labels"
            case taints = "Taints"
            case deletionProtection = "DeletionProtection"
        }
    }

    /// ModifyClusterVirtualNodePool返回参数结构体
    public struct ModifyClusterVirtualNodePoolResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改虚拟节点池
    @inlinable @discardableResult
    public func modifyClusterVirtualNodePool(_ input: ModifyClusterVirtualNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterVirtualNodePoolResponse> {
        self.client.execute(action: "ModifyClusterVirtualNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改虚拟节点池
    @inlinable @discardableResult
    public func modifyClusterVirtualNodePool(_ input: ModifyClusterVirtualNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterVirtualNodePoolResponse {
        try await self.client.execute(action: "ModifyClusterVirtualNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改虚拟节点池
    @inlinable @discardableResult
    public func modifyClusterVirtualNodePool(clusterId: String, nodePoolId: String, name: String? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, deletionProtection: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterVirtualNodePoolResponse> {
        self.modifyClusterVirtualNodePool(.init(clusterId: clusterId, nodePoolId: nodePoolId, name: name, labels: labels, taints: taints, deletionProtection: deletionProtection), region: region, logger: logger, on: eventLoop)
    }

    /// 修改虚拟节点池
    @inlinable @discardableResult
    public func modifyClusterVirtualNodePool(clusterId: String, nodePoolId: String, name: String? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, deletionProtection: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterVirtualNodePoolResponse {
        try await self.modifyClusterVirtualNodePool(.init(clusterId: clusterId, nodePoolId: nodePoolId, name: name, labels: labels, taints: taints, deletionProtection: deletionProtection), region: region, logger: logger, on: eventLoop)
    }
}
