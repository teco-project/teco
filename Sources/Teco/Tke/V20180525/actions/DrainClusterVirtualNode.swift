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
    /// DrainClusterVirtualNode请求参数结构体
    public struct DrainClusterVirtualNodeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 节点名
        public let nodeName: String

        public init(clusterId: String, nodeName: String) {
            self.clusterId = clusterId
            self.nodeName = nodeName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodeName = "NodeName"
        }
    }

    /// DrainClusterVirtualNode返回参数结构体
    public struct DrainClusterVirtualNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 驱逐虚拟节点
    @inlinable @discardableResult
    public func drainClusterVirtualNode(_ input: DrainClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DrainClusterVirtualNodeResponse> {
        self.client.execute(action: "DrainClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 驱逐虚拟节点
    @inlinable @discardableResult
    public func drainClusterVirtualNode(_ input: DrainClusterVirtualNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DrainClusterVirtualNodeResponse {
        try await self.client.execute(action: "DrainClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 驱逐虚拟节点
    @inlinable @discardableResult
    public func drainClusterVirtualNode(clusterId: String, nodeName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DrainClusterVirtualNodeResponse> {
        let input = DrainClusterVirtualNodeRequest(clusterId: clusterId, nodeName: nodeName)
        return self.client.execute(action: "DrainClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 驱逐虚拟节点
    @inlinable @discardableResult
    public func drainClusterVirtualNode(clusterId: String, nodeName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DrainClusterVirtualNodeResponse {
        let input = DrainClusterVirtualNodeRequest(clusterId: clusterId, nodeName: nodeName)
        return try await self.client.execute(action: "DrainClusterVirtualNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
