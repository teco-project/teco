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
    /// DescribeDhcpIps请求参数结构体
    public struct DescribeDhcpIpsRequest: TCPaginatedRequest {
        /// DhcpIp实例ID。形如：dhcpip-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定DhcpIpIds和Filters。
        public let dhcpIpIds: [String]?

        /// 过滤条件，参数不支持同时指定DhcpIpIds和Filters。
        /// - vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// - subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。
        /// - dhcpip-id - String - （过滤条件）DhcpIp实例ID，形如：dhcpip-pxir56ns。
        /// - dhcpip-name - String - （过滤条件）DhcpIp实例名称。
        /// - address-ip - String - （过滤条件）DhcpIp实例的IP，根据IP精确查找。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(dhcpIpIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.dhcpIpIds = dhcpIpIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case dhcpIpIds = "DhcpIpIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDhcpIpsResponse) -> DescribeDhcpIpsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(dhcpIpIds: self.dhcpIpIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDhcpIps返回参数结构体
    public struct DescribeDhcpIpsResponse: TCPaginatedResponse {
        /// 实例详细信息列表。
        public let dhcpIpSet: [DhcpIp]

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dhcpIpSet = "DhcpIpSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DhcpIp`` list from the paginated response.
        public func getItems() -> [DhcpIp] {
            self.dhcpIpSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    @inlinable
    public func describeDhcpIps(_ input: DescribeDhcpIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDhcpIpsResponse> {
        self.client.execute(action: "DescribeDhcpIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    @inlinable
    public func describeDhcpIps(_ input: DescribeDhcpIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDhcpIpsResponse {
        try await self.client.execute(action: "DescribeDhcpIps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    @inlinable
    public func describeDhcpIps(dhcpIpIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDhcpIpsResponse> {
        self.describeDhcpIps(.init(dhcpIpIds: dhcpIpIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    @inlinable
    public func describeDhcpIps(dhcpIpIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDhcpIpsResponse {
        try await self.describeDhcpIps(.init(dhcpIpIds: dhcpIpIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    @inlinable
    public func describeDhcpIpsPaginated(_ input: DescribeDhcpIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DhcpIp])> {
        self.client.paginate(input: input, region: region, command: self.describeDhcpIps, logger: logger, on: eventLoop)
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    @inlinable @discardableResult
    public func describeDhcpIpsPaginated(_ input: DescribeDhcpIpsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDhcpIpsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDhcpIps, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询DhcpIp列表
    ///
    /// 本接口（DescribeDhcpIps）用于查询DhcpIp列表
    ///
    /// - Returns: `AsyncSequence`s of ``DhcpIp`` and ``DescribeDhcpIpsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDhcpIpsPaginator(_ input: DescribeDhcpIpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDhcpIpsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDhcpIps, logger: logger, on: eventLoop)
    }
}
