//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Vpc {
    /// DescribeRouteTables请求参数结构体
    public struct DescribeRouteTablesRequest: TCRequestModel {
        /// 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        /// <li>route-table-id - String - （过滤条件）路由表实例ID。</li>
        /// <li>route-table-name - String - （过滤条件）路由表名称。</li>
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        /// <li>association.main - String - （过滤条件）是否主路由表。</li>
        /// <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。</li>
        /// <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。</li>
        public let filters: [Filter]?

        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableIds: [String]?

        /// 偏移量。
        public let offset: String?

        /// 请求对象个数。
        public let limit: String?

        public init(filters: [Filter]? = nil, routeTableIds: [String]? = nil, offset: String? = nil, limit: String? = nil) {
            self.filters = filters
            self.routeTableIds = routeTableIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case routeTableIds = "RouteTableIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeRouteTables返回参数结构体
    public struct DescribeRouteTablesResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 路由表对象。
        public let routeTableSet: [RouteTable]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeTableSet = "RouteTableSet"
            case requestId = "RequestId"
        }
    }

    /// 查询路由列表
    ///
    ///  本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路由列表
    ///
    ///  本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路由列表
    ///
    ///  本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(filters: [Filter]? = nil, routeTableIds: [String]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.describeRouteTables(DescribeRouteTablesRequest(filters: filters, routeTableIds: routeTableIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询路由列表
    ///
    ///  本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(filters: [Filter]? = nil, routeTableIds: [String]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.describeRouteTables(DescribeRouteTablesRequest(filters: filters, routeTableIds: routeTableIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
