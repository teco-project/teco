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

extension Live {
    /// DescribeLiveStreamPublishedList请求参数结构体
    public struct DescribeLiveStreamPublishedListRequest: TCPaginatedRequest {
        /// 您的推流域名。
        public let domainName: String

        /// 结束时间。
        /// UTC 格式，例如：2016-06-30T19:00:00Z。
        /// 不超过当前时间。
        /// 注意：EndTime和StartTime相差不可超过30天。
        public let endTime: String

        /// 起始时间。
        /// UTC 格式，例如：2016-06-29T19:00:00Z。
        /// 最长支持查询60天内数据。
        public let startTime: String

        /// 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。不支持模糊匹配。
        public let appName: String?

        /// 取得第几页。
        /// 默认值：1。
        public let pageNum: UInt64?

        /// 分页大小。
        /// 最大值：100。
        /// 取值范围：10~100 之前的任意整数。
        /// 默认值：10。
        public let pageSize: UInt64?

        /// 流名称，支持模糊匹配。
        public let streamName: String?

        public init(domainName: String, endTime: String, startTime: String, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, streamName: String? = nil) {
            self.domainName = domainName
            self.endTime = endTime
            self.startTime = startTime
            self.appName = appName
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.streamName = streamName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case appName = "AppName"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case streamName = "StreamName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLiveStreamPublishedListResponse) -> DescribeLiveStreamPublishedListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(domainName: self.domainName, endTime: self.endTime, startTime: self.startTime, appName: self.appName, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, streamName: self.streamName)
        }
    }

    /// DescribeLiveStreamPublishedList返回参数结构体
    public struct DescribeLiveStreamPublishedListResponse: TCPaginatedResponse {
        /// 推流记录信息。
        public let publishInfo: [StreamName]

        /// 分页的页码。
        public let pageNum: UInt64

        /// 每页大小
        public let pageSize: UInt64

        /// 符合条件的总个数。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case publishInfo = "PublishInfo"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }

        /// Extract the returned ``StreamName`` list from the paginated response.
        public func getItems() -> [StreamName] {
            self.publishInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    @inlinable
    public func describeLiveStreamPublishedList(_ input: DescribeLiveStreamPublishedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamPublishedListResponse> {
        self.client.execute(action: "DescribeLiveStreamPublishedList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    @inlinable
    public func describeLiveStreamPublishedList(_ input: DescribeLiveStreamPublishedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamPublishedListResponse {
        try await self.client.execute(action: "DescribeLiveStreamPublishedList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    @inlinable
    public func describeLiveStreamPublishedList(domainName: String, endTime: String, startTime: String, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamPublishedListResponse> {
        self.describeLiveStreamPublishedList(.init(domainName: domainName, endTime: endTime, startTime: startTime, appName: appName, pageNum: pageNum, pageSize: pageSize, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    @inlinable
    public func describeLiveStreamPublishedList(domainName: String, endTime: String, startTime: String, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamPublishedListResponse {
        try await self.describeLiveStreamPublishedList(.init(domainName: domainName, endTime: endTime, startTime: startTime, appName: appName, pageNum: pageNum, pageSize: pageSize, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    @inlinable
    public func describeLiveStreamPublishedListPaginated(_ input: DescribeLiveStreamPublishedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [StreamName])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveStreamPublishedList, logger: logger, on: eventLoop)
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    @inlinable @discardableResult
    public func describeLiveStreamPublishedListPaginated(_ input: DescribeLiveStreamPublishedListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveStreamPublishedListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveStreamPublishedList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询历史流列表
    ///
    /// 返回已经推过流的流列表。
    ///
    /// 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。
    ///
    /// - Returns: `AsyncSequence`s of ``StreamName`` and ``DescribeLiveStreamPublishedListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLiveStreamPublishedListPaginator(_ input: DescribeLiveStreamPublishedListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLiveStreamPublishedListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveStreamPublishedList, logger: logger, on: eventLoop)
    }
}
