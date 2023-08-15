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

extension Vpc {
    /// DescribeDirectConnectGateways请求参数结构体
    public struct DescribeDirectConnectGatewaysRequest: TCPaginatedRequest {
        /// 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        public let directConnectGatewayIds: [String]?

        /// 过滤条件，参数不支持同时指定`DirectConnectGatewayIds`和`Filters`。
        /// - direct-connect-gateway-id - String - 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        /// - direct-connect-gateway-name - String - 专线网关名称，默认模糊查询。
        /// - direct-connect-gateway-ip - String - 专线网关`IP`。
        /// - gateway-type - String - 网关类型，可选值：`NORMAL`（普通型）、`NAT`（NAT型）。
        /// - network-type- String - 网络类型，可选值：`VPC`（私有网络类型）、`CCN`（云联网类型）。
        /// - ccn-id - String - 专线网关所在云联网`ID`。
        /// - vpc-id - String - 专线网关所在私有网络`ID`。
        public let filters: [Filter]?

        /// 偏移量。
        public let offset: UInt64?

        /// 返回数量。
        public let limit: UInt64?

        public init(directConnectGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.directConnectGatewayIds = directConnectGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case directConnectGatewayIds = "DirectConnectGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDirectConnectGatewaysResponse) -> DescribeDirectConnectGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDirectConnectGatewaysRequest(directConnectGatewayIds: self.directConnectGatewayIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDirectConnectGateways返回参数结构体
    public struct DescribeDirectConnectGatewaysResponse: TCPaginatedResponse {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// 专线网关对象数组。
        public let directConnectGatewaySet: [DirectConnectGateway]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case directConnectGatewaySet = "DirectConnectGatewaySet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DirectConnectGateway`` list from the paginated response.
        public func getItems() -> [DirectConnectGateway] {
            self.directConnectGatewaySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGateways(_ input: DescribeDirectConnectGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectGatewaysResponse> {
        self.client.execute(action: "DescribeDirectConnectGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGateways(_ input: DescribeDirectConnectGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectGatewaysResponse {
        try await self.client.execute(action: "DescribeDirectConnectGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGateways(directConnectGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectGatewaysResponse> {
        self.describeDirectConnectGateways(.init(directConnectGatewayIds: directConnectGatewayIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGateways(directConnectGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectGatewaysResponse {
        try await self.describeDirectConnectGateways(.init(directConnectGatewayIds: directConnectGatewayIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGatewaysPaginated(_ input: DescribeDirectConnectGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DirectConnectGateway])> {
        self.client.paginate(input: input, region: region, command: self.describeDirectConnectGateways, logger: logger, on: eventLoop)
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable @discardableResult
    public func describeDirectConnectGatewaysPaginated(_ input: DescribeDirectConnectGatewaysRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDirectConnectGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDirectConnectGateways, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    ///
    /// - Returns: `AsyncSequence`s of ``DirectConnectGateway`` and ``DescribeDirectConnectGatewaysResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDirectConnectGatewaysPaginator(_ input: DescribeDirectConnectGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDirectConnectGatewaysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDirectConnectGateways, logger: logger, on: eventLoop)
    }
}
