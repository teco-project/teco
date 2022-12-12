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
    /// DescribeEdgeNodes请求参数结构体
    public struct DescribeEdgeNodesRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64
        
        /// 边缘节点名称模糊搜索串
        public let namePattern: String?
        
        /// 边缘节点名称列表，支持批量查询 ，优先于模糊查询
        public let nameMatchedList: [String]?
        
        /// 排序信息列表
        public let sort: [Sort]?
        
        /// 偏移量
        public let offset: UInt64?
        
        /// 页面大小Limit
        public let limit: UInt64?
        
        /// 节点类型
        public let nodeType: Int64?
        
        public init (edgeUnitId: UInt64, namePattern: String? = nil, nameMatchedList: [String]? = nil, sort: [Sort]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, nodeType: Int64? = nil) {
            self.edgeUnitId = edgeUnitId
            self.namePattern = namePattern
            self.nameMatchedList = nameMatchedList
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.nodeType = nodeType
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case namePattern = "NamePattern"
            case nameMatchedList = "NameMatchedList"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case nodeType = "NodeType"
        }
    }
    
    /// DescribeEdgeNodes返回参数结构体
    public struct DescribeEdgeNodesResponse: TCResponseModel {
        /// 边缘节点数量
        public let totalCount: UInt64
        
        /// 节点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeSet: [EdgeNodeInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodeSet = "NodeSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodes(_ input: DescribeEdgeNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeNodesResponse > {
        self.client.execute(action: "DescribeEdgeNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询边缘节点列表
    @inlinable
    public func describeEdgeNodes(_ input: DescribeEdgeNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodesResponse {
        try await self.client.execute(action: "DescribeEdgeNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
