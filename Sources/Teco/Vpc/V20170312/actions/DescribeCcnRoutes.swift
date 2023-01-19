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
    /// DescribeCcnRoutes请求参数结构体
    public struct DescribeCcnRoutesRequest: TCRequestModel {
        /// CCN实例ID，形如：ccn-gree226l。
        public let ccnId: String

        /// CCN路由策略唯一ID。形如：ccnr-f49l6u0z。
        public let routeIds: [String]?

        /// 过滤条件，参数不支持同时指定RouteIds和Filters。
        /// <li>route-id - String -（过滤条件）路由策略ID。</li>
        /// <li>cidr-block - String -（过滤条件）目的端。</li>
        /// <li>instance-type - String -（过滤条件）下一跳类型。</li>
        /// <li>instance-region - String -（过滤条件）下一跳所属地域。</li>
        /// <li>instance-id - String -（过滤条件）下一跳实例ID。</li>
        /// <li>route-table-id - String -（过滤条件）路由表ID列表，形如ccntr-1234edfr，可以根据路由表ID 过滤。</li>
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        public init(ccnId: String, routeIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.ccnId = ccnId
            self.routeIds = routeIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case routeIds = "RouteIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeCcnRoutes返回参数结构体
    public struct DescribeCcnRoutesResponse: TCResponseModel {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// CCN路由策略对象。
        public let routeSet: [CcnRoute]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case routeSet = "RouteSet"
            case requestId = "RequestId"
        }
    }

    /// 查询云联网路由策略
    ///
    /// 本接口（DescribeCcnRoutes）用于查询已加入云联网（CCN）的路由
    @inlinable
    public func describeCcnRoutes(_ input: DescribeCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnRoutesResponse> {
        self.client.execute(action: "DescribeCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云联网路由策略
    ///
    /// 本接口（DescribeCcnRoutes）用于查询已加入云联网（CCN）的路由
    @inlinable
    public func describeCcnRoutes(_ input: DescribeCcnRoutesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnRoutesResponse {
        try await self.client.execute(action: "DescribeCcnRoutes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云联网路由策略
    ///
    /// 本接口（DescribeCcnRoutes）用于查询已加入云联网（CCN）的路由
    @inlinable
    public func describeCcnRoutes(ccnId: String, routeIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnRoutesResponse> {
        self.describeCcnRoutes(DescribeCcnRoutesRequest(ccnId: ccnId, routeIds: routeIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云联网路由策略
    ///
    /// 本接口（DescribeCcnRoutes）用于查询已加入云联网（CCN）的路由
    @inlinable
    public func describeCcnRoutes(ccnId: String, routeIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnRoutesResponse {
        try await self.describeCcnRoutes(DescribeCcnRoutesRequest(ccnId: ccnId, routeIds: routeIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
