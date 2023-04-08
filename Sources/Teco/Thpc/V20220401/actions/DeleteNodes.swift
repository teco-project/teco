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

extension Thpc {
    /// DeleteNodes请求参数结构体
    public struct DeleteNodesRequest: TCRequestModel {
        /// 集群ID。
        public let clusterId: String

        /// 节点ID。
        public let nodeIds: [String]

        public init(clusterId: String, nodeIds: [String]) {
            self.clusterId = clusterId
            self.nodeIds = nodeIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodeIds = "NodeIds"
        }
    }

    /// DeleteNodes返回参数结构体
    public struct DeleteNodesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除节点
    ///
    /// 本接口(DeleteNodes)用于删除指定集群中一个或者多个计算节点或者登录节点。
    @inlinable @discardableResult
    public func deleteNodes(_ input: DeleteNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNodesResponse> {
        self.client.execute(action: "DeleteNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除节点
    ///
    /// 本接口(DeleteNodes)用于删除指定集群中一个或者多个计算节点或者登录节点。
    @inlinable @discardableResult
    public func deleteNodes(_ input: DeleteNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNodesResponse {
        try await self.client.execute(action: "DeleteNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除节点
    ///
    /// 本接口(DeleteNodes)用于删除指定集群中一个或者多个计算节点或者登录节点。
    @inlinable @discardableResult
    public func deleteNodes(clusterId: String, nodeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNodesResponse> {
        self.deleteNodes(.init(clusterId: clusterId, nodeIds: nodeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除节点
    ///
    /// 本接口(DeleteNodes)用于删除指定集群中一个或者多个计算节点或者登录节点。
    @inlinable @discardableResult
    public func deleteNodes(clusterId: String, nodeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNodesResponse {
        try await self.deleteNodes(.init(clusterId: clusterId, nodeIds: nodeIds), region: region, logger: logger, on: eventLoop)
    }
}
