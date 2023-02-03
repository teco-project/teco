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

extension Ecm {
    /// DescribeRouteTables请求参数结构体
    public struct DescribeRouteTablesRequest: TCRequestModel {
        /// 路由表实例ID，例如：rtb-azd4dt1c。
        public let routeTableIds: [String]?

        /// 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        /// route-table-id - String - （过滤条件）路由表实例ID。
        /// route-table-name - String - （过滤条件）路由表名称。
        /// vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// association.main - String - （过滤条件）是否主路由表。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 限数
        public let limit: UInt64?

        /// ECM 地域，传空或不传表示所有区域
        public let ecmRegion: String?

        public init(routeTableIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil) {
            self.routeTableIds = routeTableIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case routeTableIds = "RouteTableIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case ecmRegion = "EcmRegion"
        }
    }

    /// DescribeRouteTables返回参数结构体
    public struct DescribeRouteTablesResponse: TCResponseModel {
        /// 符合条件的实例数量
        public let totalCount: UInt64

        /// 路由表列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let routeTableSet: [RouteTable]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeTableSet = "RouteTableSet"
            case requestId = "RequestId"
        }
    }

    /// 查询路由表对象列表
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路由表对象列表
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路由表对象列表
    @inlinable
    public func describeRouteTables(routeTableIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        let input = DescribeRouteTablesRequest(routeTableIds: routeTableIds, filters: filters, offset: offset, limit: limit, ecmRegion: ecmRegion)
        return self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路由表对象列表
    @inlinable
    public func describeRouteTables(routeTableIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        let input = DescribeRouteTablesRequest(routeTableIds: routeTableIds, filters: filters, offset: offset, limit: limit, ecmRegion: ecmRegion)
        return try await self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
