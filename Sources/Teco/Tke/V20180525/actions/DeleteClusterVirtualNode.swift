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
    /// DeleteClusterVirtualNode请求参数结构体
    public struct DeleteClusterVirtualNodeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 虚拟节点列表
        public let nodeNames: [String]

        /// 是否强制删除：如果虚拟节点上有运行中Pod，则非强制删除状态下不会进行删除
        public let force: Bool?

        public init(clusterId: String, nodeNames: [String], force: Bool? = nil) {
            self.clusterId = clusterId
            self.nodeNames = nodeNames
            self.force = force
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodeNames = "NodeNames"
            case force = "Force"
        }
    }

    /// DeleteClusterVirtualNode返回参数结构体
    public struct DeleteClusterVirtualNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除虚拟节点
    @inlinable @discardableResult
    public func deleteClusterVirtualNode(_ input: DeleteClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterVirtualNodeResponse> {
        self.client.execute(action: "DeleteClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除虚拟节点
    @inlinable @discardableResult
    public func deleteClusterVirtualNode(_ input: DeleteClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterVirtualNodeResponse {
        try await self.client.execute(action: "DeleteClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除虚拟节点
    @inlinable @discardableResult
    public func deleteClusterVirtualNode(clusterId: String, nodeNames: [String], force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterVirtualNodeResponse> {
        self.deleteClusterVirtualNode(.init(clusterId: clusterId, nodeNames: nodeNames, force: force), region: region, logger: logger, on: eventLoop)
    }

    /// 删除虚拟节点
    @inlinable @discardableResult
    public func deleteClusterVirtualNode(clusterId: String, nodeNames: [String], force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterVirtualNodeResponse {
        try await self.deleteClusterVirtualNode(.init(clusterId: clusterId, nodeNames: nodeNames, force: force), region: region, logger: logger, on: eventLoop)
    }
}
