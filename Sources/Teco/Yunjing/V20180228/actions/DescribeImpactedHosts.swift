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

extension Yunjing {
    /// DescribeImpactedHosts请求参数结构体
    public struct DescribeImpactedHostsRequest: TCPaginatedRequest {
        /// 漏洞种类ID。
        public let vulId: UInt64

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED：待处理 | FIXED：已修复）</li>
        public let filters: [Filter]?

        public init(vulId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.vulId = vulId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImpactedHostsResponse) -> DescribeImpactedHostsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImpactedHostsRequest(vulId: self.vulId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeImpactedHosts返回参数结构体
    public struct DescribeImpactedHostsResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: UInt64

        /// 漏洞影响机器列表数组
        public let impactedHosts: [ImpactedHost]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case impactedHosts = "ImpactedHosts"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImpactedHost] {
            self.impactedHosts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(_ input: DescribeImpactedHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImpactedHostsResponse> {
        self.client.execute(action: "DescribeImpactedHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(_ input: DescribeImpactedHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImpactedHostsResponse {
        try await self.client.execute(action: "DescribeImpactedHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(vulId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImpactedHostsResponse> {
        self.describeImpactedHosts(.init(vulId: vulId, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(vulId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImpactedHostsResponse {
        try await self.describeImpactedHosts(.init(vulId: vulId, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHostsPaginated(_ input: DescribeImpactedHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ImpactedHost])> {
        self.client.paginate(input: input, region: region, command: self.describeImpactedHosts, logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable @discardableResult
    public func describeImpactedHostsPaginated(_ input: DescribeImpactedHostsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImpactedHostsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImpactedHosts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    ///
    /// - Returns: `AsyncSequence`s of `ImpactedHost` and `DescribeImpactedHostsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImpactedHostsPaginator(_ input: DescribeImpactedHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImpactedHostsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImpactedHosts, logger: logger, on: eventLoop)
    }
}
