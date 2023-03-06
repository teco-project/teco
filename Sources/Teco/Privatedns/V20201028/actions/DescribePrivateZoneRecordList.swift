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

extension Privatedns {
    /// DescribePrivateZoneRecordList请求参数结构体
    public struct DescribePrivateZoneRecordListRequest: TCPaginatedRequest {
        /// 私有域ID: zone-xxxxxx
        public let zoneId: String

        /// 过滤参数（支持使用Value、RecordType过滤）
        public let filters: [Filter]?

        /// 分页偏移量，从0开始
        public let offset: Int64?

        /// 分页限制数目， 最大200，默认20
        public let limit: Int64?

        public init(zoneId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.zoneId = zoneId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePrivateZoneRecordListResponse) -> DescribePrivateZoneRecordListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePrivateZoneRecordListRequest(zoneId: self.zoneId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePrivateZoneRecordList返回参数结构体
    public struct DescribePrivateZoneRecordListResponse: TCPaginatedResponse {
        /// 解析记录数量
        public let totalCount: Int64

        /// 解析记录列表
        public let recordSet: [PrivateZoneRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case recordSet = "RecordSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PrivateZoneRecord] {
            self.recordSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordList(_ input: DescribePrivateZoneRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneRecordListResponse> {
        self.client.execute(action: "DescribePrivateZoneRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordList(_ input: DescribePrivateZoneRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneRecordListResponse {
        try await self.client.execute(action: "DescribePrivateZoneRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordList(zoneId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneRecordListResponse> {
        let input = DescribePrivateZoneRecordListRequest(zoneId: zoneId, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePrivateZoneRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordList(zoneId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneRecordListResponse {
        let input = DescribePrivateZoneRecordListRequest(zoneId: zoneId, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePrivateZoneRecordList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域记录列表
    @inlinable
    public func describePrivateZoneRecordListPaginated(_ input: DescribePrivateZoneRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PrivateZoneRecord])> {
        self.client.paginate(input: input, region: region, command: self.describePrivateZoneRecordList, logger: logger, on: eventLoop)
    }

    /// 获取私有域记录列表
    @inlinable @discardableResult
    public func describePrivateZoneRecordListPaginated(_ input: DescribePrivateZoneRecordListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePrivateZoneRecordListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePrivateZoneRecordList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取私有域记录列表
    ///
    /// - Returns: `AsyncSequence`s of `PrivateZoneRecord` and `DescribePrivateZoneRecordListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePrivateZoneRecordListPaginator(_ input: DescribePrivateZoneRecordListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePrivateZoneRecordListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePrivateZoneRecordList, logger: logger, on: eventLoop)
    }
}
