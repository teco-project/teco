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

extension Cws {
    /// DescribeSites请求参数结构体
    public struct DescribeSitesRequest: TCRequestModel {
        /// 站点ID列表
        public let siteIds: [UInt64]?

        /// 过滤条件
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为10，最大值为100
        public let limit: UInt64?

        public init(siteIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.siteIds = siteIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case siteIds = "SiteIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSites返回参数结构体
    public struct DescribeSitesResponse: TCResponseModel {
        /// 站点数量。
        public let totalCount: UInt64

        /// 站点信息列表。
        public let sites: [Site]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sites = "Sites"
            case requestId = "RequestId"
        }
    }

    /// 查看站点列表
    ///
    /// 本接口 (DescribeSites) 用于查询一个或多个站点的详细信息。
    @inlinable
    public func describeSites(_ input: DescribeSitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesResponse> {
        self.client.execute(action: "DescribeSites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看站点列表
    ///
    /// 本接口 (DescribeSites) 用于查询一个或多个站点的详细信息。
    @inlinable
    public func describeSites(_ input: DescribeSitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesResponse {
        try await self.client.execute(action: "DescribeSites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看站点列表
    ///
    /// 本接口 (DescribeSites) 用于查询一个或多个站点的详细信息。
    @inlinable
    public func describeSites(siteIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesResponse> {
        self.describeSites(DescribeSitesRequest(siteIds: siteIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看站点列表
    ///
    /// 本接口 (DescribeSites) 用于查询一个或多个站点的详细信息。
    @inlinable
    public func describeSites(siteIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesResponse {
        try await self.describeSites(DescribeSitesRequest(siteIds: siteIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
