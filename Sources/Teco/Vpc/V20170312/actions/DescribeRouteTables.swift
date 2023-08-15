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
    /// DescribeRouteTables请求参数结构体
    public struct DescribeRouteTablesRequest: TCRequestModel {
        /// 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        /// - route-table-id - String - （过滤条件）路由表实例ID。
        /// - route-table-name - String - （过滤条件）路由表名称。
        /// - vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// - association.main - String - （过滤条件）是否主路由表。
        /// - tag-key - String -是否必填：否 - （过滤条件）按照标签键进行过滤。
        /// - tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。
        /// - next-hop-type - String - 是否必填：否 - （过滤条件）按下一跳类型进行过滤。使用next-hop-type进行过滤时，必须同时携带route-table-id与vpc-id。
        ///   目前我们支持的类型有：
        ///   LOCAL: 本地路由
        ///   CVM：公网网关类型的云服务器；
        ///   VPN：VPN网关；
        ///   DIRECTCONNECT：专线网关；
        ///   PEERCONNECTION：对等连接；
        ///   HAVIP：高可用虚拟IP；
        ///   NAT：NAT网关;
        ///   NORMAL_CVM：普通云服务器；
        ///   EIP：云服务器的公网IP；
        ///   CCN：云联网；
        ///   LOCAL_GATEWAY：本地网关。
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

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(_ input: DescribeRouteTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.client.execute(action: "DescribeRouteTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(filters: [Filter]? = nil, routeTableIds: [String]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteTablesResponse> {
        self.describeRouteTables(.init(filters: filters, routeTableIds: routeTableIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询路由表
    ///
    /// 本接口（DescribeRouteTables）用于查询路由表。
    @inlinable
    public func describeRouteTables(filters: [Filter]? = nil, routeTableIds: [String]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteTablesResponse {
        try await self.describeRouteTables(.init(filters: filters, routeTableIds: routeTableIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
