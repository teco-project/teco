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
    /// DescribeVpcIpv6Addresses请求参数结构体
    public struct DescribeVpcIpv6AddressesRequest: TCPaginatedRequest {
        /// `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        public let vpcId: String

        /// `IP`地址列表，批量查询单次请求最多支持`10`个。
        public let ipv6Addresses: [String]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// VPC下的子网ID。
        public let subnetId: String?

        public init(vpcId: String, ipv6Addresses: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subnetId: String? = nil) {
            self.vpcId = vpcId
            self.ipv6Addresses = ipv6Addresses
            self.offset = offset
            self.limit = limit
            self.subnetId = subnetId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ipv6Addresses = "Ipv6Addresses"
            case offset = "Offset"
            case limit = "Limit"
            case subnetId = "SubnetId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcIpv6AddressesResponse) -> DescribeVpcIpv6AddressesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(vpcId: self.vpcId, ipv6Addresses: self.ipv6Addresses, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, subnetId: self.subnetId)
        }
    }

    /// DescribeVpcIpv6Addresses返回参数结构体
    public struct DescribeVpcIpv6AddressesResponse: TCPaginatedResponse {
        /// `IPv6`地址列表。
        public let ipv6AddressSet: [VpcIpv6Address]

        /// `IPv6`地址总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipv6AddressSet = "Ipv6AddressSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VpcIpv6Address`` list from the paginated response.
        public func getItems() -> [VpcIpv6Address] {
            self.ipv6AddressSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcIpv6Addresses(_ input: DescribeVpcIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcIpv6AddressesResponse> {
        self.client.execute(action: "DescribeVpcIpv6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcIpv6Addresses(_ input: DescribeVpcIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcIpv6AddressesResponse {
        try await self.client.execute(action: "DescribeVpcIpv6Addresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcIpv6Addresses(vpcId: String, ipv6Addresses: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subnetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcIpv6AddressesResponse> {
        self.describeVpcIpv6Addresses(.init(vpcId: vpcId, ipv6Addresses: ipv6Addresses, offset: offset, limit: limit, subnetId: subnetId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcIpv6Addresses(vpcId: String, ipv6Addresses: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, subnetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcIpv6AddressesResponse {
        try await self.describeVpcIpv6Addresses(.init(vpcId: vpcId, ipv6Addresses: ipv6Addresses, offset: offset, limit: limit, subnetId: subnetId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable
    public func describeVpcIpv6AddressesPaginated(_ input: DescribeVpcIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpcIpv6Address])> {
        self.client.paginate(input: input, region: region, command: self.describeVpcIpv6Addresses, logger: logger, on: eventLoop)
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    @inlinable @discardableResult
    public func describeVpcIpv6AddressesPaginated(_ input: DescribeVpcIpv6AddressesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcIpv6AddressesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpcIpv6Addresses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询VPC内IPv6列表
    ///
    /// 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
    /// 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。
    ///
    /// - Returns: `AsyncSequence`s of ``VpcIpv6Address`` and ``DescribeVpcIpv6AddressesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcIpv6AddressesPaginator(_ input: DescribeVpcIpv6AddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcIpv6AddressesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcIpv6Addresses, logger: logger, on: eventLoop)
    }
}
