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

import TecoCore

extension Iecp {
    /// CreateUpdateNodeUnit请求参数结构体
    public struct CreateUpdateNodeUnitRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// NodeUnit所属的NodeGroup名称
        public let nodeGroupName: String

        /// 命名空间，默认为default
        public let namespace: String?

        /// NodeUnit名称，通过模版创建可不填
        public let nodeUnitName: String?

        /// NodeUnit包含的节点列表，通过模版创建可不填
        public let nodes: [String]?

        /// NodeUnit模版ID列表
        public let nodeUnitTemplateIDs: [UInt64]?

        public init(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, nodeUnitName: String? = nil, nodes: [String]? = nil, nodeUnitTemplateIDs: [UInt64]? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeGroupName = nodeGroupName
            self.namespace = namespace
            self.nodeUnitName = nodeUnitName
            self.nodes = nodes
            self.nodeUnitTemplateIDs = nodeUnitTemplateIDs
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeGroupName = "NodeGroupName"
            case namespace = "Namespace"
            case nodeUnitName = "NodeUnitName"
            case nodes = "Nodes"
            case nodeUnitTemplateIDs = "NodeUnitTemplateIDs"
        }
    }

    /// CreateUpdateNodeUnit返回参数结构体
    public struct CreateUpdateNodeUnitResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建或更新边缘单元NodeUnit
    @inlinable @discardableResult
    public func createUpdateNodeUnit(_ input: CreateUpdateNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUpdateNodeUnitResponse> {
        self.client.execute(action: "CreateUpdateNodeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建或更新边缘单元NodeUnit
    @inlinable @discardableResult
    public func createUpdateNodeUnit(_ input: CreateUpdateNodeUnitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUpdateNodeUnitResponse {
        try await self.client.execute(action: "CreateUpdateNodeUnit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建或更新边缘单元NodeUnit
    @inlinable @discardableResult
    public func createUpdateNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, nodeUnitName: String? = nil, nodes: [String]? = nil, nodeUnitTemplateIDs: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUpdateNodeUnitResponse> {
        self.createUpdateNodeUnit(.init(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, namespace: namespace, nodeUnitName: nodeUnitName, nodes: nodes, nodeUnitTemplateIDs: nodeUnitTemplateIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 创建或更新边缘单元NodeUnit
    @inlinable @discardableResult
    public func createUpdateNodeUnit(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, nodeUnitName: String? = nil, nodes: [String]? = nil, nodeUnitTemplateIDs: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUpdateNodeUnitResponse {
        try await self.createUpdateNodeUnit(.init(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, namespace: namespace, nodeUnitName: nodeUnitName, nodes: nodes, nodeUnitTemplateIDs: nodeUnitTemplateIDs), region: region, logger: logger, on: eventLoop)
    }
}
