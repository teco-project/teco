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
    /// DeleteClusterNodePool请求参数结构体
    public struct DeleteClusterNodePoolRequest: TCRequestModel {
        /// 节点池对应的 ClusterId
        public let clusterId: String

        /// 需要删除的节点池 Id 列表
        public let nodePoolIds: [String]

        /// 删除节点池时是否保留节点池内节点(节点仍然会被移出集群，但对应的实例不会被销毁)
        public let keepInstance: Bool

        public init(clusterId: String, nodePoolIds: [String], keepInstance: Bool) {
            self.clusterId = clusterId
            self.nodePoolIds = nodePoolIds
            self.keepInstance = keepInstance
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolIds = "NodePoolIds"
            case keepInstance = "KeepInstance"
        }
    }

    /// DeleteClusterNodePool返回参数结构体
    public struct DeleteClusterNodePoolResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除节点池
    @inlinable @discardableResult
    public func deleteClusterNodePool(_ input: DeleteClusterNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterNodePoolResponse> {
        self.client.execute(action: "DeleteClusterNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除节点池
    @inlinable @discardableResult
    public func deleteClusterNodePool(_ input: DeleteClusterNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterNodePoolResponse {
        try await self.client.execute(action: "DeleteClusterNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除节点池
    @inlinable @discardableResult
    public func deleteClusterNodePool(clusterId: String, nodePoolIds: [String], keepInstance: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterNodePoolResponse> {
        self.deleteClusterNodePool(.init(clusterId: clusterId, nodePoolIds: nodePoolIds, keepInstance: keepInstance), region: region, logger: logger, on: eventLoop)
    }

    /// 删除节点池
    @inlinable @discardableResult
    public func deleteClusterNodePool(clusterId: String, nodePoolIds: [String], keepInstance: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterNodePoolResponse {
        try await self.deleteClusterNodePool(.init(clusterId: clusterId, nodePoolIds: nodePoolIds, keepInstance: keepInstance), region: region, logger: logger, on: eventLoop)
    }
}
