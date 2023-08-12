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
import TecoPaginationHelpers

extension Tdmq {
    /// DescribeRabbitMQNodeList请求参数结构体
    public struct DescribeRabbitMQNodeListRequest: TCPaginatedRequest {
        /// rabbitmq集群ID
        public let instanceId: String

        /// 偏移量
        public let offset: UInt64?

        /// 一页限制
        public let limit: UInt64?

        /// 模糊搜索节点名字
        public let nodeName: String?

        /// 过滤参数的名字和数值
        /// 现在只有一个nodeStatus
        /// running/down
        /// 数组类型，兼容后续添加过滤参数
        public let filters: [Filter]?

        /// 按指定元素排序，现在只有2个
        /// cpuUsage/diskUsage
        public let sortElement: String?

        /// 升序/降序
        /// ascend/descend
        public let sortOrder: String?

        public init(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, nodeName: String? = nil, filters: [Filter]? = nil, sortElement: String? = nil, sortOrder: String? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.nodeName = nodeName
            self.filters = filters
            self.sortElement = sortElement
            self.sortOrder = sortOrder
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case nodeName = "NodeName"
            case filters = "Filters"
            case sortElement = "SortElement"
            case sortOrder = "SortOrder"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRabbitMQNodeListResponse) -> DescribeRabbitMQNodeListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRabbitMQNodeListRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, nodeName: self.nodeName, filters: self.filters, sortElement: self.sortElement, sortOrder: self.sortOrder)
        }
    }

    /// DescribeRabbitMQNodeList返回参数结构体
    public struct DescribeRabbitMQNodeListResponse: TCPaginatedResponse {
        /// 集群列表数量
        public let totalCount: UInt64

        /// 集群列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeList: [RabbitMQPrivateNode]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodeList = "NodeList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RabbitMQPrivateNode`` list from the paginated response.
        public func getItems() -> [RabbitMQPrivateNode] {
            self.nodeList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// RabbitMQ专享版查询节点列表
    @inlinable
    public func describeRabbitMQNodeList(_ input: DescribeRabbitMQNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQNodeListResponse> {
        self.client.execute(action: "DescribeRabbitMQNodeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询节点列表
    @inlinable
    public func describeRabbitMQNodeList(_ input: DescribeRabbitMQNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQNodeListResponse {
        try await self.client.execute(action: "DescribeRabbitMQNodeList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// RabbitMQ专享版查询节点列表
    @inlinable
    public func describeRabbitMQNodeList(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, nodeName: String? = nil, filters: [Filter]? = nil, sortElement: String? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQNodeListResponse> {
        self.describeRabbitMQNodeList(.init(instanceId: instanceId, offset: offset, limit: limit, nodeName: nodeName, filters: filters, sortElement: sortElement, sortOrder: sortOrder), region: region, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询节点列表
    @inlinable
    public func describeRabbitMQNodeList(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, nodeName: String? = nil, filters: [Filter]? = nil, sortElement: String? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQNodeListResponse {
        try await self.describeRabbitMQNodeList(.init(instanceId: instanceId, offset: offset, limit: limit, nodeName: nodeName, filters: filters, sortElement: sortElement, sortOrder: sortOrder), region: region, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询节点列表
    @inlinable
    public func describeRabbitMQNodeListPaginated(_ input: DescribeRabbitMQNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RabbitMQPrivateNode])> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQNodeList, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询节点列表
    @inlinable @discardableResult
    public func describeRabbitMQNodeListPaginated(_ input: DescribeRabbitMQNodeListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRabbitMQNodeListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQNodeList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询节点列表
    ///
    /// - Returns: `AsyncSequence`s of `RabbitMQPrivateNode` and `DescribeRabbitMQNodeListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRabbitMQNodeListPaginator(_ input: DescribeRabbitMQNodeListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRabbitMQNodeListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRabbitMQNodeList, logger: logger, on: eventLoop)
    }
}
