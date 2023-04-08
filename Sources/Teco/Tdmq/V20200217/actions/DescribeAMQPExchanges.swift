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

import TecoPaginationHelpers

extension Tdmq {
    /// DescribeAMQPExchanges请求参数结构体
    public struct DescribeAMQPExchangesRequest: TCPaginatedRequest {
        /// 查询偏移量
        public let offset: UInt64

        /// 查询限制数
        public let limit: UInt64

        /// 集群ID
        public let clusterId: String

        /// Vhost ID
        public let vHostId: String

        /// 按路由类型过滤查询结果，可选择Direct, Fanout, Topic
        public let filterType: [String]?

        /// 按exchange名称搜索，支持模糊查询
        public let filterName: String?

        /// 过滤查询内部或者外部exchange
        public let filterInternal: Bool?

        public init(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, filterType: [String]? = nil, filterName: String? = nil, filterInternal: Bool? = nil) {
            self.offset = offset
            self.limit = limit
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.filterType = filterType
            self.filterName = filterName
            self.filterInternal = filterInternal
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case filterType = "FilterType"
            case filterName = "FilterName"
            case filterInternal = "FilterInternal"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAMQPExchangesResponse) -> DescribeAMQPExchangesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAMQPExchangesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, clusterId: self.clusterId, vHostId: self.vHostId, filterType: self.filterType, filterName: self.filterName, filterInternal: self.filterInternal)
        }
    }

    /// DescribeAMQPExchanges返回参数结构体
    public struct DescribeAMQPExchangesResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: UInt64

        /// 主题信息列表
        public let exchanges: [AMQPExchange]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case exchanges = "Exchanges"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AMQPExchange] {
            self.exchanges
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取AMQP Exchange列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPExchanges(_ input: DescribeAMQPExchangesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPExchangesResponse> {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }

    /// 获取AMQP Exchange列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPExchanges(_ input: DescribeAMQPExchangesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPExchangesResponse {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }

    /// 获取AMQP Exchange列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPExchanges(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, filterType: [String]? = nil, filterName: String? = nil, filterInternal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPExchangesResponse> {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }

    /// 获取AMQP Exchange列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPExchanges(offset: UInt64, limit: UInt64, clusterId: String, vHostId: String, filterType: [String]? = nil, filterName: String? = nil, filterInternal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPExchangesResponse {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }

    /// 获取AMQP Exchange列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPExchangesPaginated(_ input: DescribeAMQPExchangesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AMQPExchange])> {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }

    /// 获取AMQP Exchange列表
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func describeAMQPExchangesPaginated(_ input: DescribeAMQPExchangesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAMQPExchangesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }

    /// 获取AMQP Exchange列表
    ///
    /// - Returns: `AsyncSequence`s of `AMQPExchange` and `DescribeAMQPExchangesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func describeAMQPExchangesPaginator(_ input: DescribeAMQPExchangesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAMQPExchangesRequest> {
        fatalError("DescribeAMQPExchanges is no longer available.")
    }
}
