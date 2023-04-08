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

extension Ecm {
    /// DescribeNode请求参数结构体
    public struct DescribeNodeRequest: TCRequestModel {
        /// 过滤条件，name取值为： InstanceFamily-实例系列
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeNode返回参数结构体
    public struct DescribeNodeResponse: TCResponseModel {
        /// 节点详细信息的列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeSet: [Node]?

        /// 所有的节点数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeSet = "NodeSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取节点列表
    @inlinable
    public func describeNode(_ input: DescribeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodeResponse> {
        self.client.execute(action: "DescribeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取节点列表
    @inlinable
    public func describeNode(_ input: DescribeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeResponse {
        try await self.client.execute(action: "DescribeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取节点列表
    @inlinable
    public func describeNode(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodeResponse> {
        self.describeNode(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取节点列表
    @inlinable
    public func describeNode(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeResponse {
        try await self.describeNode(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
