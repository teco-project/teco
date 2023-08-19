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
    /// DeleteEdgeNodeUnitTemplates请求参数结构体
    public struct DeleteEdgeNodeUnitTemplatesRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 删除的NodeUnit模板ID列表
        public let nodeUnitTemplateIDs: [UInt64]

        public init(edgeUnitId: UInt64, nodeUnitTemplateIDs: [UInt64]) {
            self.edgeUnitId = edgeUnitId
            self.nodeUnitTemplateIDs = nodeUnitTemplateIDs
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeUnitTemplateIDs = "NodeUnitTemplateIDs"
        }
    }

    /// DeleteEdgeNodeUnitTemplates返回参数结构体
    public struct DeleteEdgeNodeUnitTemplatesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func deleteEdgeNodeUnitTemplates(_ input: DeleteEdgeNodeUnitTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeNodeUnitTemplatesResponse> {
        self.client.execute(action: "DeleteEdgeNodeUnitTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func deleteEdgeNodeUnitTemplates(_ input: DeleteEdgeNodeUnitTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeNodeUnitTemplatesResponse {
        try await self.client.execute(action: "DeleteEdgeNodeUnitTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func deleteEdgeNodeUnitTemplates(edgeUnitId: UInt64, nodeUnitTemplateIDs: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeNodeUnitTemplatesResponse> {
        self.deleteEdgeNodeUnitTemplates(.init(edgeUnitId: edgeUnitId, nodeUnitTemplateIDs: nodeUnitTemplateIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 删除边缘单元NodeUnit模板
    @inlinable @discardableResult
    public func deleteEdgeNodeUnitTemplates(edgeUnitId: UInt64, nodeUnitTemplateIDs: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeNodeUnitTemplatesResponse {
        try await self.deleteEdgeNodeUnitTemplates(.init(edgeUnitId: edgeUnitId, nodeUnitTemplateIDs: nodeUnitTemplateIDs), region: region, logger: logger, on: eventLoop)
    }
}
