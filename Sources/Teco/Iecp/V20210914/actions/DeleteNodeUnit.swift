//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iecp {
    /// DeleteNodeUnit请求参数结构体
    public struct DeleteNodeUnitRequest: TCRequestModel {
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
    public struct DeleteNodeUnitResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除边缘单元NodeUnit
    @inlinable
    public func deleteNodeUnit(_ input: DeleteNodeUnitRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNodeUnitResponse > {
        self.client.execute(action: "DeleteNodeUnit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除边缘单元NodeUnit
    @inlinable
    public func deleteNodeUnit(_ input: DeleteNodeUnitRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNodeUnitResponse {
        try await self.client.execute(action: "DeleteNodeUnit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除边缘单元NodeUnit
    @inlinable
    public func deleteNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, nodeUnitName: String, namespace: String? = nil, nodes: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteNodeUnitResponse > {
        self.deleteNodeUnit(DeleteNodeUnitRequest(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, nodeUnitName: nodeUnitName, namespace: namespace, nodes: nodes), logger: logger, on: eventLoop)
    }

    /// 删除边缘单元NodeUnit
    @inlinable
    public func deleteNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, nodeUnitName: String, namespace: String? = nil, nodes: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNodeUnitResponse {
        try await self.deleteNodeUnit(DeleteNodeUnitRequest(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, nodeUnitName: nodeUnitName, namespace: namespace, nodes: nodes), logger: logger, on: eventLoop)
    }
}
