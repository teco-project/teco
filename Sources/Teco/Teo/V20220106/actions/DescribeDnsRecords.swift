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

extension Teo {
    /// DescribeDnsRecords请求参数结构体
    public struct DescribeDnsRecordsRequest: TCRequestModel {
        /// 查询条件过滤器
        public let filters: [DnsRecordFilter]?

        /// 排序
        public let order: String?

        /// 可选值 asc, desc
        public let direction: String?

        /// 可选值 all, any
        public let match: String?

        /// 分页查询限制数目，默认为 100，最大可设置为 1000
        public let limit: Int64?

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 站点 ID
        public let zoneId: String?

        public init(filters: [DnsRecordFilter]? = nil, order: String? = nil, direction: String? = nil, match: String? = nil, limit: Int64? = nil, offset: Int64? = nil, zoneId: String? = nil) {
            self.filters = filters
            self.order = order
            self.direction = direction
            self.match = match
            self.limit = limit
            self.offset = offset
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case order = "Order"
            case direction = "Direction"
            case match = "Match"
            case limit = "Limit"
            case offset = "Offset"
            case zoneId = "ZoneId"
        }
    }

    /// DescribeDnsRecords返回参数结构体
    public struct DescribeDnsRecordsResponse: TCResponseModel {
        /// 总数，用于分页查询
        public let totalCount: Int64

        /// DNS 记录列表
        public let records: [DnsRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case records = "Records"
            case requestId = "RequestId"
        }
    }

    /// 查询 DNS 记录列表
    ///
    /// 查询 DNS 记录列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeDnsRecords(_ input: DescribeDnsRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnsRecordsResponse> {
        self.client.execute(action: "DescribeDnsRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 DNS 记录列表
    ///
    /// 查询 DNS 记录列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeDnsRecords(_ input: DescribeDnsRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsRecordsResponse {
        try await self.client.execute(action: "DescribeDnsRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 DNS 记录列表
    ///
    /// 查询 DNS 记录列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeDnsRecords(filters: [DnsRecordFilter]? = nil, order: String? = nil, direction: String? = nil, match: String? = nil, limit: Int64? = nil, offset: Int64? = nil, zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnsRecordsResponse> {
        let input = DescribeDnsRecordsRequest(filters: filters, order: order, direction: direction, match: match, limit: limit, offset: offset, zoneId: zoneId)
        return self.client.execute(action: "DescribeDnsRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 DNS 记录列表
    ///
    /// 查询 DNS 记录列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeDnsRecords(filters: [DnsRecordFilter]? = nil, order: String? = nil, direction: String? = nil, match: String? = nil, limit: Int64? = nil, offset: Int64? = nil, zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsRecordsResponse {
        let input = DescribeDnsRecordsRequest(filters: filters, order: order, direction: direction, match: match, limit: limit, offset: offset, zoneId: zoneId)
        return try await self.client.execute(action: "DescribeDnsRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
