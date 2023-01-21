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

extension Iecp {
    /// ModifyNodeUnitTemplate请求参数结构体
    public struct ModifyNodeUnitTemplateRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// NodeUnit模板ID
        public let nodeUnitTemplateID: UInt64

        /// 包含的节点列表
        public let nodes: [String]?

        public init(edgeUnitId: UInt64, nodeUnitTemplateID: UInt64, nodes: [String]? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeUnitTemplateID = nodeUnitTemplateID
            self.nodes = nodes
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeUnitTemplateID = "NodeUnitTemplateID"
            case nodes = "Nodes"
        }
    }

    /// ModifyNodeUnitTemplate返回参数结构体
    public struct ModifyNodeUnitTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func modifyNodeUnitTemplate(_ input: ModifyNodeUnitTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNodeUnitTemplateResponse> {
        self.client.execute(action: "ModifyNodeUnitTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func modifyNodeUnitTemplate(_ input: ModifyNodeUnitTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNodeUnitTemplateResponse {
        try await self.client.execute(action: "ModifyNodeUnitTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func modifyNodeUnitTemplate(edgeUnitId: UInt64, nodeUnitTemplateID: UInt64, nodes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNodeUnitTemplateResponse> {
        self.modifyNodeUnitTemplate(ModifyNodeUnitTemplateRequest(edgeUnitId: edgeUnitId, nodeUnitTemplateID: nodeUnitTemplateID, nodes: nodes), region: region, logger: logger, on: eventLoop)
    }

    /// 修改边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func modifyNodeUnitTemplate(edgeUnitId: UInt64, nodeUnitTemplateID: UInt64, nodes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNodeUnitTemplateResponse {
        try await self.modifyNodeUnitTemplate(ModifyNodeUnitTemplateRequest(edgeUnitId: edgeUnitId, nodeUnitTemplateID: nodeUnitTemplateID, nodes: nodes), region: region, logger: logger, on: eventLoop)
    }
}
