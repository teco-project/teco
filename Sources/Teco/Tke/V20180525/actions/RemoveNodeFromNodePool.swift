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
    /// RemoveNodeFromNodePool请求参数结构体
    public struct RemoveNodeFromNodePoolRequest: TCRequest {
        /// 集群id
        public let clusterId: String

        /// 节点池id
        public let nodePoolId: String

        /// 节点id列表，一次最多支持100台
        public let instanceIds: [String]

        public init(clusterId: String, nodePoolId: String, instanceIds: [String]) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case instanceIds = "InstanceIds"
        }
    }

    /// RemoveNodeFromNodePool返回参数结构体
    public struct RemoveNodeFromNodePoolResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 移出节点池节点
    ///
    /// 移出节点池节点，但保留在集群内
    @inlinable @discardableResult
    public func removeNodeFromNodePool(_ input: RemoveNodeFromNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveNodeFromNodePoolResponse> {
        self.client.execute(action: "RemoveNodeFromNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 移出节点池节点
    ///
    /// 移出节点池节点，但保留在集群内
    @inlinable @discardableResult
    public func removeNodeFromNodePool(_ input: RemoveNodeFromNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveNodeFromNodePoolResponse {
        try await self.client.execute(action: "RemoveNodeFromNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 移出节点池节点
    ///
    /// 移出节点池节点，但保留在集群内
    @inlinable @discardableResult
    public func removeNodeFromNodePool(clusterId: String, nodePoolId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveNodeFromNodePoolResponse> {
        self.removeNodeFromNodePool(.init(clusterId: clusterId, nodePoolId: nodePoolId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 移出节点池节点
    ///
    /// 移出节点池节点，但保留在集群内
    @inlinable @discardableResult
    public func removeNodeFromNodePool(clusterId: String, nodePoolId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveNodeFromNodePoolResponse {
        try await self.removeNodeFromNodePool(.init(clusterId: clusterId, nodePoolId: nodePoolId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
