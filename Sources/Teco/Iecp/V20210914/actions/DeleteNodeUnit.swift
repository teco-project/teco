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

extension Iecp {
    /// DeleteNodeUnit请求参数结构体
    public struct DeleteNodeUnitRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// NodeUnit所属的NodeGroup名称
        public let nodeGroupName: String

        /// NodeUnit名称
        public let nodeUnitName: String

        /// 命名空间，默认为default
        public let namespace: String?

        /// NodeUnit包含的节点列表
        public let nodes: [String]?

        public init(edgeUnitId: UInt64, nodeGroupName: String, nodeUnitName: String, namespace: String? = nil, nodes: [String]? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeGroupName = nodeGroupName
            self.nodeUnitName = nodeUnitName
            self.namespace = namespace
            self.nodes = nodes
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeGroupName = "NodeGroupName"
            case nodeUnitName = "NodeUnitName"
            case namespace = "Namespace"
            case nodes = "Nodes"
        }
    }

    /// DeleteNodeUnit返回参数结构体
    public struct DeleteNodeUnitResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除边缘单元NodeUnit
    @inlinable @discardableResult
    public func deleteNodeUnit(_ input: DeleteNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNodeUnitResponse> {
        self.client.execute(action: "DeleteNodeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除边缘单元NodeUnit
    @inlinable @discardableResult
    public func deleteNodeUnit(_ input: DeleteNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNodeUnitResponse {
        try await self.client.execute(action: "DeleteNodeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除边缘单元NodeUnit
    @inlinable @discardableResult
    public func deleteNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, nodeUnitName: String, namespace: String? = nil, nodes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNodeUnitResponse> {
        self.deleteNodeUnit(.init(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, nodeUnitName: nodeUnitName, namespace: namespace, nodes: nodes), region: region, logger: logger, on: eventLoop)
    }

    /// 删除边缘单元NodeUnit
    @inlinable @discardableResult
    public func deleteNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, nodeUnitName: String, namespace: String? = nil, nodes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNodeUnitResponse {
        try await self.deleteNodeUnit(.init(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, nodeUnitName: nodeUnitName, namespace: namespace, nodes: nodes), region: region, logger: logger, on: eventLoop)
    }
}
