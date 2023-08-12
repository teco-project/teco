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

extension Ecm {
    /// DescribeRegionIpv6Addresses请求参数结构体
    public struct DescribeRegionIpv6AddressesRequest: TCPaginatedRequest {
        /// ECM 地域，为空时返回所有地域的IPv6地址。
        public let ecmRegion: String

        /// 详细的过滤条件如下：
        /// address-id - String - 是否必填：否 - （过滤条件）按照 EIP 的 ID 过滤。
        /// address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。
        /// network-interface-id - String - 是否必填：否 - （过滤条件）按照弹性网卡的唯一ID过滤。
        /// instance-id - String - 是否必填：否 - （过滤条件）按照 EIP 所绑定的实例 ID 过滤。
        /// vpc-id - String - 是否必填：否 - （过滤条件）按照 EIP 所在 VPC 的 ID 进行过滤。
        /// address-isp - String - 是否必填：否 - （过滤条件）按照 EIP 的运营商进行过滤。
        /// address-status  - String - 是否必填：否 - （过滤条件）按照 EIP  的状态信息进行过滤。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        public let limit: Int64?

        public init(ecmRegion: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.ecmRegion = ecmRegion
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRegionIpv6AddressesResponse) -> DescribeRegionIpv6AddressesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRegionIpv6AddressesRequest(ecmRegion: self.ecmRegion, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeRegionIpv6Addresses返回参数结构体
    public struct DescribeRegionIpv6AddressesResponse: TCPaginatedResponse {
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

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    @inlinable
    public func describeRegionIpv6Addresses(_ input: DescribeRegionIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionIpv6AddressesResponse> {
        self.client.execute(action: "DescribeRegionIpv6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    @inlinable
    public func describeRegionIpv6Addresses(_ input: DescribeRegionIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionIpv6AddressesResponse {
        try await self.client.execute(action: "DescribeRegionIpv6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    @inlinable
    public func describeRegionIpv6Addresses(ecmRegion: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionIpv6AddressesResponse> {
        self.describeRegionIpv6Addresses(.init(ecmRegion: ecmRegion, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    @inlinable
    public func describeRegionIpv6Addresses(ecmRegion: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionIpv6AddressesResponse {
        try await self.describeRegionIpv6Addresses(.init(ecmRegion: ecmRegion, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    @inlinable
    public func describeRegionIpv6AddressesPaginated(_ input: DescribeRegionIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Address])> {
        self.client.paginate(input: input, region: region, command: self.describeRegionIpv6Addresses, logger: logger, on: eventLoop)
    }

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    @inlinable @discardableResult
    public func describeRegionIpv6AddressesPaginated(_ input: DescribeRegionIpv6AddressesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRegionIpv6AddressesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRegionIpv6Addresses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询地域下IPV6地址信息
    ///
    /// 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。
    ///
    /// - Returns: `AsyncSequence`s of `Address` and `DescribeRegionIpv6AddressesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRegionIpv6AddressesPaginator(_ input: DescribeRegionIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRegionIpv6AddressesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRegionIpv6Addresses, logger: logger, on: eventLoop)
    }
}
