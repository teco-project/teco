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
    /// DescribeIp6Addresses请求参数结构体
    public struct DescribeIp6AddressesRequest: TCPaginatedRequest {
        /// 标识 IPV6 的唯一 ID 列表。IPV6 唯一 ID 形如：`eip-11112222`。参数不支持同时指定`Ip6AddressIds`和`Filters`。
        public let ip6AddressIds: [String]?

        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`AddressIds`和`Filters`。详细的过滤条件如下：
        /// - address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。
        /// - network-interface-id - String - 是否必填：否 - （过滤条件）按照弹性网卡的唯一ID过滤。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        public let limit: Int64?

        public init(ip6AddressIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.ip6AddressIds = ip6AddressIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case ip6AddressIds = "Ip6AddressIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIp6AddressesResponse) -> DescribeIp6AddressesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(ip6AddressIds: self.ip6AddressIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeIp6Addresses返回参数结构体
    public struct DescribeIp6AddressesResponse: TCPaginatedResponse {
        /// 符合条件的 IPV6 数量。
        public let totalCount: Int64

        /// IPV6 详细信息列表。
        public let addressSet: [Address]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case addressSet = "AddressSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Address`` list from the paginated response.
        public func getItems() -> [Address] {
            self.addressSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    @inlinable
    public func describeIp6Addresses(_ input: DescribeIp6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIp6AddressesResponse> {
        self.client.execute(action: "DescribeIp6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    @inlinable
    public func describeIp6Addresses(_ input: DescribeIp6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIp6AddressesResponse {
        try await self.client.execute(action: "DescribeIp6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    @inlinable
    public func describeIp6Addresses(ip6AddressIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIp6AddressesResponse> {
        self.describeIp6Addresses(.init(ip6AddressIds: ip6AddressIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    @inlinable
    public func describeIp6Addresses(ip6AddressIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIp6AddressesResponse {
        try await self.describeIp6Addresses(.init(ip6AddressIds: ip6AddressIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    @inlinable
    public func describeIp6AddressesPaginated(_ input: DescribeIp6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Address])> {
        self.client.paginate(input: input, region: region, command: self.describeIp6Addresses, logger: logger, on: eventLoop)
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    @inlinable @discardableResult
    public func describeIp6AddressesPaginated(_ input: DescribeIp6AddressesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIp6AddressesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIp6Addresses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询IPV6地址信息
    ///
    /// 该接口用于查询IPV6地址信息
    ///
    /// - Returns: `AsyncSequence`s of ``Address`` and ``DescribeIp6AddressesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIp6AddressesPaginator(_ input: DescribeIp6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIp6AddressesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIp6Addresses, logger: logger, on: eventLoop)
    }
}
