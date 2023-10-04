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

extension Vpc {
    /// DescribeVpcEndPoint请求参数结构体
    public struct DescribeVpcEndPointRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// - end-point-service-id- String - （过滤条件）终端节点服务ID。
        /// - end-point-name - String - （过滤条件）终端节点实例名称。
        /// - end-point-id- String - （过滤条件）终端节点实例ID。
        /// - vpc-id- String - （过滤条件）VPC实例ID。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 单页返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 终端节点ID列表。
        public let endPointId: [String]?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointId: [String]? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.endPointId = endPointId
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case endPointId = "EndPointId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcEndPointResponse) -> DescribeVpcEndPointRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, endPointId: self.endPointId)
        }
    }

    /// DescribeVpcEndPoint返回参数结构体
    public struct DescribeVpcEndPointResponse: TCPaginatedResponse {
        /// 终端节点对象。
        public let endPointSet: [EndPoint]

        /// 符合查询条件的终端节点个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endPointSet = "EndPointSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EndPoint`` list from the paginated response.
        public func getItems() -> [EndPoint] {
            self.endPointSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    @inlinable
    public func describeVpcEndPoint(_ input: DescribeVpcEndPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointResponse> {
        self.client.execute(action: "DescribeVpcEndPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    @inlinable
    public func describeVpcEndPoint(_ input: DescribeVpcEndPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointResponse {
        try await self.client.execute(action: "DescribeVpcEndPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    @inlinable
    public func describeVpcEndPoint(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointId: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointResponse> {
        self.describeVpcEndPoint(.init(filters: filters, offset: offset, limit: limit, endPointId: endPointId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    @inlinable
    public func describeVpcEndPoint(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointId: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointResponse {
        try await self.describeVpcEndPoint(.init(filters: filters, offset: offset, limit: limit, endPointId: endPointId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    @inlinable
    public func describeVpcEndPointPaginated(_ input: DescribeVpcEndPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EndPoint])> {
        self.client.paginate(input: input, region: region, command: self.describeVpcEndPoint, logger: logger, on: eventLoop)
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    @inlinable @discardableResult
    public func describeVpcEndPointPaginated(_ input: DescribeVpcEndPointRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcEndPointResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpcEndPoint, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询终端节点列表
    ///
    /// 本接口（DescribeVpcEndPoint）用于查询终端节点列表。
    ///
    /// - Returns: `AsyncSequence`s of ``EndPoint`` and ``DescribeVpcEndPointResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcEndPointPaginator(_ input: DescribeVpcEndPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcEndPointRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcEndPoint, logger: logger, on: eventLoop)
    }
}
