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

extension Vpc {
    /// DescribeNetDetects请求参数结构体
    public struct DescribeNetDetectsRequest: TCPaginatedRequest {
        /// 网络探测实例`ID`数组。形如：[`netd-12345678`]。
        public let netDetectIds: [String]?

        /// 过滤条件，参数不支持同时指定NetDetectIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-12345678</li>
        /// <li>net-detect-id - String - （过滤条件）网络探测实例ID，形如：netd-12345678</li>
        /// <li>subnet-id - String - （过滤条件）子网实例ID，形如：subnet-12345678</li>
        /// <li>net-detect-name - String - （过滤条件）网络探测名称</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(netDetectIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.netDetectIds = netDetectIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case netDetectIds = "NetDetectIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNetDetectsResponse) -> DescribeNetDetectsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetDetectsRequest(netDetectIds: self.netDetectIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeNetDetects返回参数结构体
    public struct DescribeNetDetectsResponse: TCPaginatedResponse {
        /// 符合条件的网络探测对象数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netDetectSet: [NetDetect]?

        /// 符合条件的网络探测对象数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case netDetectSet = "NetDetectSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetDetect] {
            self.netDetectSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    @inlinable
    public func describeNetDetects(_ input: DescribeNetDetectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetDetectsResponse> {
        self.client.execute(action: "DescribeNetDetects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    @inlinable
    public func describeNetDetects(_ input: DescribeNetDetectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetDetectsResponse {
        try await self.client.execute(action: "DescribeNetDetects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    @inlinable
    public func describeNetDetects(netDetectIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetDetectsResponse> {
        self.describeNetDetects(.init(netDetectIds: netDetectIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    @inlinable
    public func describeNetDetects(netDetectIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetDetectsResponse {
        try await self.describeNetDetects(.init(netDetectIds: netDetectIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    @inlinable
    public func describeNetDetectsPaginated(_ input: DescribeNetDetectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetDetect])> {
        self.client.paginate(input: input, region: region, command: self.describeNetDetects, logger: logger, on: eventLoop)
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    @inlinable @discardableResult
    public func describeNetDetectsPaginated(_ input: DescribeNetDetectsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetDetectsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetDetects, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询网络探测列表
    ///
    /// 本接口（DescribeNetDetects）用于查询网络探测列表。
    ///
    /// - Returns: `AsyncSequence`s of `NetDetect` and `DescribeNetDetectsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNetDetectsPaginator(_ input: DescribeNetDetectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNetDetectsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNetDetects, logger: logger, on: eventLoop)
    }
}
