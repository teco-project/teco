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
    /// DescribeEdgeNodeRemarkList请求参数结构体
    public struct DescribeEdgeNodeRemarkListRequest: TCRequest {
        /// 边缘单元ID
        public let edgeUnitId: UInt64

        public init(edgeUnitId: UInt64) {
            self.edgeUnitId = edgeUnitId
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
        }
    }

    /// DescribeEdgeNodeRemarkList返回参数结构体
    public struct DescribeEdgeNodeRemarkListResponse: TCResponse {
        /// 边缘单元内的备注列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remarks: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case remarks = "Remarks"
            case requestId = "RequestId"
        }
    }

    /// 获取节点备注信息列表
    @inlinable
    public func describeEdgeNodeRemarkList(_ input: DescribeEdgeNodeRemarkListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodeRemarkListResponse> {
        self.client.execute(action: "DescribeEdgeNodeRemarkList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取节点备注信息列表
    @inlinable
    public func describeEdgeNodeRemarkList(_ input: DescribeEdgeNodeRemarkListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodeRemarkListResponse {
        try await self.client.execute(action: "DescribeEdgeNodeRemarkList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取节点备注信息列表
    @inlinable
    public func describeEdgeNodeRemarkList(edgeUnitId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeNodeRemarkListResponse> {
        self.describeEdgeNodeRemarkList(.init(edgeUnitId: edgeUnitId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取节点备注信息列表
    @inlinable
    public func describeEdgeNodeRemarkList(edgeUnitId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeNodeRemarkListResponse {
        try await self.describeEdgeNodeRemarkList(.init(edgeUnitId: edgeUnitId), region: region, logger: logger, on: eventLoop)
    }
}
