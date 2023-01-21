//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Iecp {
    /// CreateEdgeNodeBatch请求参数结构体
    public struct CreateEdgeNodeBatchRequest: TCRequestModel {
        /// 边缘单元ID
        public let edgeUnitId: UInt64

        /// 节点信息
        public let nodes: [DracoNodeInfo]

        public init(edgeUnitId: UInt64, nodes: [DracoNodeInfo]) {
            self.edgeUnitId = edgeUnitId
            self.nodes = nodes
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodes = "Nodes"
        }
    }

    /// CreateEdgeNodeBatch返回参数结构体
    public struct CreateEdgeNodeBatchResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量预注册节点
    @inlinable @discardableResult
    public func createEdgeNodeBatch(_ input: CreateEdgeNodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEdgeNodeBatchResponse> {
        self.client.execute(action: "CreateEdgeNodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量预注册节点
    @inlinable @discardableResult
    public func createEdgeNodeBatch(_ input: CreateEdgeNodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeNodeBatchResponse {
        try await self.client.execute(action: "CreateEdgeNodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量预注册节点
    @inlinable @discardableResult
    public func createEdgeNodeBatch(edgeUnitId: UInt64, nodes: [DracoNodeInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEdgeNodeBatchResponse> {
        self.createEdgeNodeBatch(CreateEdgeNodeBatchRequest(edgeUnitId: edgeUnitId, nodes: nodes), region: region, logger: logger, on: eventLoop)
    }

    /// 批量预注册节点
    @inlinable @discardableResult
    public func createEdgeNodeBatch(edgeUnitId: UInt64, nodes: [DracoNodeInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeNodeBatchResponse {
        try await self.createEdgeNodeBatch(CreateEdgeNodeBatchRequest(edgeUnitId: edgeUnitId, nodes: nodes), region: region, logger: logger, on: eventLoop)
    }
}
