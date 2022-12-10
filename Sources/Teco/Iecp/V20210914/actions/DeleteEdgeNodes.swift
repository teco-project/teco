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
    /// 批量删除边缘节点
    @inlinable
    public func deleteEdgeNodes(_ input: DeleteEdgeNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteEdgeNodesResponse > {
        self.client.execute(action: "DeleteEdgeNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量删除边缘节点
    @inlinable
    public func deleteEdgeNodes(_ input: DeleteEdgeNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeNodesResponse {
        try await self.client.execute(action: "DeleteEdgeNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteEdgeNodes请求参数结构体
    public struct DeleteEdgeNodesRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64
        
        /// IECP边缘节点ID列表
        public let nodeIds: [UInt64]
        
        public init (edgeUnitId: UInt64, nodeIds: [UInt64]) {
            self.edgeUnitId = edgeUnitId
            self.nodeIds = nodeIds
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeIds = "NodeIds"
        }
    }
    
    /// DeleteEdgeNodes返回参数结构体
    public struct DeleteEdgeNodesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
