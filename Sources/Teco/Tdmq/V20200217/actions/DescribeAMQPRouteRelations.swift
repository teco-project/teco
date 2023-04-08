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
import TecoPaginationHelpers

extension Tdmq {
    /// DescribeAMQPRouteRelations请求参数结构体
    public struct DescribeAMQPRouteRelationsRequest: TCPaginatedRequest {
        /// 查询偏移量
        public let offset: UInt64

        /// 查询限制数
        public let limit: UInt64

        /// 集群ID
        public let clusterId: String

        /// Vhost名称
        public let vHostId: String

        /// 按源exchange名称过滤查询结果，支持模糊查询
        public let filterSourceExchange: String?

        /// 按绑定的目标类型过滤查询结果，可选值:Exchange、Queue
        public let filterDestType: String?

        /// 按目标名称过滤查询结果，支持模糊查询
        public let filterDestValue: String?

        public init(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, filterSourceExchange: String? = nil, filterDestType: String? = nil, filterDestValue: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.filterSourceExchange = filterSourceExchange
            self.filterDestType = filterDestType
            self.filterDestValue = filterDestValue
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case filterSourceExchange = "FilterSourceExchange"
            case filterDestType = "FilterDestType"
            case filterDestValue = "FilterDestValue"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAMQPRouteRelationsResponse) -> DescribeAMQPRouteRelationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAMQPRouteRelationsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, clusterId: self.clusterId, vHostId: self.vHostId, filterSourceExchange: self.filterSourceExchange, filterDestType: self.filterDestType, filterDestValue: self.filterDestValue)
        }
    }

    /// DescribeAMQPRouteRelations返回参数结构体
    public struct DescribeAMQPRouteRelationsResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: UInt64

        /// 路由关系列表
        public let routeRelations: [AMQPRouteRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeRelations = "RouteRelations"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AMQPRouteRelation] {
            self.routeRelations
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取Amqp路由关系列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPRouteRelations(_ input: DescribeAMQPRouteRelationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPRouteRelationsResponse> {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }

    /// 获取Amqp路由关系列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPRouteRelations(_ input: DescribeAMQPRouteRelationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPRouteRelationsResponse {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }

    /// 获取Amqp路由关系列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPRouteRelations(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, filterSourceExchange: String? = nil, filterDestType: String? = nil, filterDestValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPRouteRelationsResponse> {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }

    /// 获取Amqp路由关系列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPRouteRelations(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, filterSourceExchange: String? = nil, filterDestType: String? = nil, filterDestValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPRouteRelationsResponse {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }

    /// 获取Amqp路由关系列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPRouteRelationsPaginated(_ input: DescribeAMQPRouteRelationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AMQPRouteRelation])> {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }

    /// 获取Amqp路由关系列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func describeAMQPRouteRelationsPaginated(_ input: DescribeAMQPRouteRelationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAMQPRouteRelationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }

    /// 获取Amqp路由关系列表
    ///
    /// - Returns: `AsyncSequence`s of `AMQPRouteRelation` and `DescribeAMQPRouteRelationsResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPRouteRelationsPaginator(_ input: DescribeAMQPRouteRelationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAMQPRouteRelationsRequest> {
        fatalError("DescribeAMQPRouteRelations is no longer available.")
    }
}
