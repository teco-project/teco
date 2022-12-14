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
    /// ModifyEdgeNodeLabels请求参数结构体
    public struct ModifyEdgeNodeLabelsRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// IECP边缘节点ID
        public let nodeId: UInt64

        /// 标签列表
        public let labels: [KeyValueObj]

        public init(edgeUnitId: UInt64, nodeId: UInt64, labels: [KeyValueObj]) {
            self.edgeUnitId = edgeUnitId
            self.nodeId = nodeId
            self.labels = labels
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeId = "NodeId"
            case labels = "Labels"
        }
    }

    /// ModifyEdgeNodeLabels返回参数结构体
    public struct ModifyEdgeNodeLabelsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑边缘节点标签
    @inlinable
    public func modifyEdgeNodeLabels(_ input: ModifyEdgeNodeLabelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyEdgeNodeLabelsResponse > {
        self.client.execute(action: "ModifyEdgeNodeLabels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑边缘节点标签
    @inlinable
    public func modifyEdgeNodeLabels(_ input: ModifyEdgeNodeLabelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeNodeLabelsResponse {
        try await self.client.execute(action: "ModifyEdgeNodeLabels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑边缘节点标签
    @inlinable
    public func modifyEdgeNodeLabels(edgeUnitId: UInt64, nodeId: UInt64, labels: [KeyValueObj], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyEdgeNodeLabelsResponse > {
        self.modifyEdgeNodeLabels(ModifyEdgeNodeLabelsRequest(edgeUnitId: edgeUnitId, nodeId: nodeId, labels: labels), logger: logger, on: eventLoop)
    }

    /// 编辑边缘节点标签
    @inlinable
    public func modifyEdgeNodeLabels(edgeUnitId: UInt64, nodeId: UInt64, labels: [KeyValueObj], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeNodeLabelsResponse {
        try await self.modifyEdgeNodeLabels(ModifyEdgeNodeLabelsRequest(edgeUnitId: edgeUnitId, nodeId: nodeId, labels: labels), logger: logger, on: eventLoop)
    }
}
