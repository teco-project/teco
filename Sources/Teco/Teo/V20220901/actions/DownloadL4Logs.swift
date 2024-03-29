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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DownloadL4Logs请求参数结构体
    public struct DownloadL4LogsRequest: TCPaginatedRequest {
        /// 开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 站点集合，此参数必填，不填默认查询为空。
        public let zoneIds: [String]?

        /// 四层实例 ID 集合。
        public let proxyIds: [String]?

        /// 分页查询的限制数目，默认值为 20，最大查询条目为 300。
        public let limit: Int64?

        /// 分页的偏移量，默认值为 0。
        public let offset: Int64?

        public init(startTime: Date, endTime: Date, zoneIds: [String]? = nil, proxyIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.zoneIds = zoneIds
            self.proxyIds = proxyIds
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case zoneIds = "ZoneIds"
            case proxyIds = "ProxyIds"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DownloadL4LogsResponse) -> DownloadL4LogsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, zoneIds: self.zoneIds, proxyIds: self.proxyIds, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DownloadL4Logs返回参数结构体
    public struct DownloadL4LogsResponse: TCPaginatedResponse {
        /// 查询结果的总条数。
        public let totalCount: UInt64

        /// 四层离线日志数据列表。
        public let data: [L4OfflineLog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``L4OfflineLog`` list from the paginated response.
        public func getItems() -> [L4OfflineLog] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(_ input: DownloadL4LogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadL4LogsResponse> {
        self.client.execute(action: "DownloadL4Logs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(_ input: DownloadL4LogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadL4LogsResponse {
        try await self.client.execute(action: "DownloadL4Logs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(startTime: Date, endTime: Date, zoneIds: [String]? = nil, proxyIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadL4LogsResponse> {
        self.downloadL4Logs(.init(startTime: startTime, endTime: endTime, zoneIds: zoneIds, proxyIds: proxyIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4Logs(startTime: Date, endTime: Date, zoneIds: [String]? = nil, proxyIds: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadL4LogsResponse {
        try await self.downloadL4Logs(.init(startTime: startTime, endTime: endTime, zoneIds: zoneIds, proxyIds: proxyIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable
    public func downloadL4LogsPaginated(_ input: DownloadL4LogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [L4OfflineLog])> {
        self.client.paginate(input: input, region: region, command: self.downloadL4Logs, logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    @inlinable @discardableResult
    public func downloadL4LogsPaginated(_ input: DownloadL4LogsRequest, region: TCRegion? = nil, onResponse: @escaping (DownloadL4LogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.downloadL4Logs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 下载四层离线日志
    ///
    /// 本接口（DownloadL4Logs）用于下载四层离线日志。
    ///
    /// - Returns: `AsyncSequence`s of ``L4OfflineLog`` and ``DownloadL4LogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func downloadL4LogsPaginator(_ input: DownloadL4LogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DownloadL4LogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.downloadL4Logs, logger: logger, on: eventLoop)
    }
}
