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
    /// DescribeNodeUnitTemplateOnNodeGroup请求参数结构体
    public struct DescribeNodeUnitTemplateOnNodeGroupRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// NodeGroup名称
        public let nodeGroupName: String

        /// 命名空间，默认default
        public let namespace: String?

        /// 名称模糊匹配
        public let nodeUnitNamePattern: String?

        /// 分页查询offset，默认0
        public let offset: UInt64?

        /// 分页查询limit，默认20
        public let limit: UInt64?

        /// 排序，默认DESC
        public let order: String?

        public init(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, nodeUnitNamePattern: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.nodeGroupName = nodeGroupName
            self.namespace = namespace
            self.nodeUnitNamePattern = nodeUnitNamePattern
            self.offset = offset
            self.limit = limit
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeGroupName = "NodeGroupName"
            case namespace = "Namespace"
            case nodeUnitNamePattern = "NodeUnitNamePattern"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
        }
    }

    /// DescribeNodeUnitTemplateOnNodeGroup返回参数结构体
    public struct DescribeNodeUnitTemplateOnNodeGroupResponse: TCResponseModel {
        /// 记录总数
        public let total: UInt64

        /// NodeUnit模板
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeUnitTemplates: [NodeGroupNodeUnitTemplateInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case nodeUnitTemplates = "NodeUnitTemplates"
            case requestId = "RequestId"
        }
    }

    /// 查询指定NodeGroup下NodeUnit模板列表
    @inlinable
    public func describeNodeUnitTemplateOnNodeGroup(_ input: DescribeNodeUnitTemplateOnNodeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNodeUnitTemplateOnNodeGroupResponse > {
        self.client.execute(action: "DescribeNodeUnitTemplateOnNodeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定NodeGroup下NodeUnit模板列表
    @inlinable
    public func describeNodeUnitTemplateOnNodeGroup(_ input: DescribeNodeUnitTemplateOnNodeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeUnitTemplateOnNodeGroupResponse {
        try await self.client.execute(action: "DescribeNodeUnitTemplateOnNodeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定NodeGroup下NodeUnit模板列表
    @inlinable
    public func describeNodeUnitTemplateOnNodeGroup(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, nodeUnitNamePattern: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNodeUnitTemplateOnNodeGroupResponse > {
        self.describeNodeUnitTemplateOnNodeGroup(DescribeNodeUnitTemplateOnNodeGroupRequest(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, namespace: namespace, nodeUnitNamePattern: nodeUnitNamePattern, offset: offset, limit: limit, order: order), logger: logger, on: eventLoop)
    }

    /// 查询指定NodeGroup下NodeUnit模板列表
    @inlinable
    public func describeNodeUnitTemplateOnNodeGroup(edgeUnitId: UInt64, nodeGroupName: String, namespace: String? = nil, nodeUnitNamePattern: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeUnitTemplateOnNodeGroupResponse {
        try await self.describeNodeUnitTemplateOnNodeGroup(DescribeNodeUnitTemplateOnNodeGroupRequest(edgeUnitId: edgeUnitId, nodeGroupName: nodeGroupName, namespace: namespace, nodeUnitNamePattern: nodeUnitNamePattern, offset: offset, limit: limit, order: order), logger: logger, on: eventLoop)
    }
}
