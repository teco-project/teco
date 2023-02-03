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

extension Cws {
    /// DescribeVuls请求参数结构体
    public struct DescribeVulsRequest: TCRequestModel {
        /// 站点ID
        public let siteId: UInt64?

        /// 监控任务ID
        public let monitorId: UInt64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为10，最大值为100
        public let limit: UInt64?

        public init(siteId: UInt64? = nil, monitorId: UInt64? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.siteId = siteId
            self.monitorId = monitorId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case siteId = "SiteId"
            case monitorId = "MonitorId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeVuls返回参数结构体
    public struct DescribeVulsResponse: TCResponseModel {
        /// 漏洞数量。
        public let totalCount: UInt64

        /// 漏洞信息列表。
        public let vuls: [Vul]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vuls = "Vuls"
            case requestId = "RequestId"
        }
    }

    /// 查看漏洞列表
    ///
    /// 本接口 (DescribeVuls) 用于查询一个或多个漏洞的详细信息。
    @inlinable
    public func describeVuls(_ input: DescribeVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulsResponse> {
        self.client.execute(action: "DescribeVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看漏洞列表
    ///
    /// 本接口 (DescribeVuls) 用于查询一个或多个漏洞的详细信息。
    @inlinable
    public func describeVuls(_ input: DescribeVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulsResponse {
        try await self.client.execute(action: "DescribeVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看漏洞列表
    ///
    /// 本接口 (DescribeVuls) 用于查询一个或多个漏洞的详细信息。
    @inlinable
    public func describeVuls(siteId: UInt64? = nil, monitorId: UInt64? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulsResponse> {
        let input = DescribeVulsRequest(siteId: siteId, monitorId: monitorId, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看漏洞列表
    ///
    /// 本接口 (DescribeVuls) 用于查询一个或多个漏洞的详细信息。
    @inlinable
    public func describeVuls(siteId: UInt64? = nil, monitorId: UInt64? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulsResponse {
        let input = DescribeVulsRequest(siteId: siteId, monitorId: monitorId, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
