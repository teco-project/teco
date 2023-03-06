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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Tsf {
    /// SearchBusinessLog请求参数结构体
    public struct SearchBusinessLogRequest: TCPaginatedRequest {
        /// 日志配置项ID
        public let configId: String

        /// 机器实例ID，不传表示全部实例
        public let instanceIds: [String]?

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 请求偏移量，取值范围大于等于0，默认值为0
        public let offset: UInt64?

        /// 单页请求配置数量，取值范围[1, 200]，默认值为50
        public let limit: UInt64?

        /// 排序规则，默认值"time"
        public let orderBy: String?

        /// 排序方式，取值"asc"或"desc"，默认值"desc"
        public let orderType: String?

        /// 检索关键词
        public let searchWords: [String]?

        /// 部署组ID列表，不传表示全部部署组
        public let groupIds: [String]?

        /// 检索类型，取值"LUCENE", "REGEXP", "NORMAL"
        public let searchWordType: String?

        /// 批量请求类型，取值"page"或"scroll"
        public let batchType: String?

        /// 游标ID
        public let scrollId: String?

        public init(configId: String, instanceIds: [String]? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, orderType: String? = nil, searchWords: [String]? = nil, groupIds: [String]? = nil, searchWordType: String? = nil, batchType: String? = nil, scrollId: String? = nil) {
            self.configId = configId
            self.instanceIds = instanceIds
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderType = orderType
            self.searchWords = searchWords
            self.groupIds = groupIds
            self.searchWordType = searchWordType
            self.batchType = batchType
            self.scrollId = scrollId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case instanceIds = "InstanceIds"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case searchWords = "SearchWords"
            case groupIds = "GroupIds"
            case searchWordType = "SearchWordType"
            case batchType = "BatchType"
            case scrollId = "ScrollId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: SearchBusinessLogResponse) -> SearchBusinessLogRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return SearchBusinessLogRequest(configId: self.configId, instanceIds: self.instanceIds, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, orderType: self.orderType, searchWords: self.searchWords, groupIds: self.groupIds, searchWordType: self.searchWordType, batchType: self.batchType, scrollId: self.scrollId)
        }
    }

    /// SearchBusinessLog返回参数结构体
    public struct SearchBusinessLogResponse: TCPaginatedResponse {
        /// 业务日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageBusinessLogV2?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BusinessLogV2] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 业务日志搜索
    @inlinable
    public func searchBusinessLog(_ input: SearchBusinessLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchBusinessLogResponse> {
        self.client.execute(action: "SearchBusinessLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 业务日志搜索
    @inlinable
    public func searchBusinessLog(_ input: SearchBusinessLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchBusinessLogResponse {
        try await self.client.execute(action: "SearchBusinessLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 业务日志搜索
    @inlinable
    public func searchBusinessLog(configId: String, instanceIds: [String]? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, orderType: String? = nil, searchWords: [String]? = nil, groupIds: [String]? = nil, searchWordType: String? = nil, batchType: String? = nil, scrollId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchBusinessLogResponse> {
        let input = SearchBusinessLogRequest(configId: configId, instanceIds: instanceIds, startTime: startTime, endTime: endTime, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, searchWords: searchWords, groupIds: groupIds, searchWordType: searchWordType, batchType: batchType, scrollId: scrollId)
        return self.client.execute(action: "SearchBusinessLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 业务日志搜索
    @inlinable
    public func searchBusinessLog(configId: String, instanceIds: [String]? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderBy: String? = nil, orderType: String? = nil, searchWords: [String]? = nil, groupIds: [String]? = nil, searchWordType: String? = nil, batchType: String? = nil, scrollId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchBusinessLogResponse {
        let input = SearchBusinessLogRequest(configId: configId, instanceIds: instanceIds, startTime: startTime, endTime: endTime, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, searchWords: searchWords, groupIds: groupIds, searchWordType: searchWordType, batchType: batchType, scrollId: scrollId)
        return try await self.client.execute(action: "SearchBusinessLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 业务日志搜索
    @inlinable
    public func searchBusinessLogPaginated(_ input: SearchBusinessLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BusinessLogV2])> {
        self.client.paginate(input: input, region: region, command: self.searchBusinessLog, logger: logger, on: eventLoop)
    }

    /// 业务日志搜索
    @inlinable @discardableResult
    public func searchBusinessLogPaginated(_ input: SearchBusinessLogRequest, region: TCRegion? = nil, onResponse: @escaping (SearchBusinessLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchBusinessLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 业务日志搜索
    @inlinable
    public func searchBusinessLogPaginator(_ input: SearchBusinessLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchBusinessLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchBusinessLog, logger: logger, on: eventLoop)
    }
}
