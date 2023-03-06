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

extension Bmvpc {
    /// DescribeCustomerGateways请求参数结构体
    public struct DescribeCustomerGatewaysRequest: TCPaginatedRequest {
        /// 对端网关ID，例如：bmcgw-2wqq41m9。每次请求的实例的上限为100。参数不支持同时指定CustomerGatewayIds和Filters。
        public let customerGatewayIds: [String]?

        /// 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定CustomerGatewayIds和Filters。
        /// <li>customergateway-name - String - （过滤条件）对端网关名称。</li>
        /// <li>ip-address - String - （过滤条件)对端网关地址。</li>
        /// <li>customergateway-id - String - （过滤条件）对端网关唯一ID。</li>
        /// <li>zone - String - （过滤条件）对端所在可用区，形如：ap-guangzhou-2。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 排序字段, 支持"CreateTime"排序
        public let orderField: String?

        /// 排序方向, “asc”、“desc”
        public let orderDirection: String?

        public init(customerGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.customerGatewayIds = customerGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case customerGatewayIds = "CustomerGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCustomerGatewaysResponse) -> DescribeCustomerGatewaysRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCustomerGatewaysRequest(customerGatewayIds: self.customerGatewayIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeCustomerGateways返回参数结构体
    public struct DescribeCustomerGatewaysResponse: TCPaginatedResponse {
        /// 对端网关对象列表
        public let customerGatewaySet: [CustomerGateway]

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customerGatewaySet = "CustomerGatewaySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CustomerGateway] {
            self.customerGatewaySet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    @inlinable
    public func describeCustomerGateways(_ input: DescribeCustomerGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomerGatewaysResponse> {
        self.client.execute(action: "DescribeCustomerGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    @inlinable
    public func describeCustomerGateways(_ input: DescribeCustomerGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomerGatewaysResponse {
        try await self.client.execute(action: "DescribeCustomerGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    @inlinable
    public func describeCustomerGateways(customerGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomerGatewaysResponse> {
        let input = DescribeCustomerGatewaysRequest(customerGatewayIds: customerGatewayIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection)
        return self.client.execute(action: "DescribeCustomerGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    @inlinable
    public func describeCustomerGateways(customerGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomerGatewaysResponse {
        let input = DescribeCustomerGatewaysRequest(customerGatewayIds: customerGatewayIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection)
        return try await self.client.execute(action: "DescribeCustomerGateways", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    @inlinable
    public func describeCustomerGatewaysPaginated(_ input: DescribeCustomerGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CustomerGateway])> {
        self.client.paginate(input: input, region: region, command: self.describeCustomerGateways, logger: logger, on: eventLoop)
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    @inlinable @discardableResult
    public func describeCustomerGatewaysPaginated(_ input: DescribeCustomerGatewaysRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCustomerGatewaysResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCustomerGateways, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询对端网关
    ///
    /// 本接口（DescribeCustomerGateways）用于查询对端网关列表。
    ///
    /// - Returns: `AsyncSequence`s of `CustomerGateway` and `DescribeCustomerGatewaysResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCustomerGatewaysPaginator(_ input: DescribeCustomerGatewaysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCustomerGatewaysRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCustomerGateways, logger: logger, on: eventLoop)
    }
}
