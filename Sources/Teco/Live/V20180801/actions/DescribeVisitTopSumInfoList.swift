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

extension Live {
    /// DescribeVisitTopSumInfoList请求参数结构体
    public struct DescribeVisitTopSumInfoListRequest: TCPaginatedRequest {
        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS
        /// 时间跨度在(0,4小时]，支持最近1天数据查询。
        public let endTime: String

        /// 峰值指标，可选值包括”Domain”，”StreamId”。
        public let topIndex: String

        /// 播放域名，默认为不填，表示求总体数据。
        public let playDomains: [String]?

        /// 页号，
        /// 范围是[1,1000]，
        /// 默认值是1。
        public let pageNum: UInt64?

        /// 每页个数，范围是[1,1000]，
        /// 默认值是20。
        public let pageSize: UInt64?

        /// 排序指标，可选值包括” AvgFluxPerSecond”，”TotalRequest”（默认）,“TotalFlux”。
        public let orderParam: String?

        public init(startTime: String, endTime: String, topIndex: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, orderParam: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.topIndex = topIndex
            self.playDomains = playDomains
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.orderParam = orderParam
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case topIndex = "TopIndex"
            case playDomains = "PlayDomains"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case orderParam = "OrderParam"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVisitTopSumInfoListResponse) -> DescribeVisitTopSumInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVisitTopSumInfoListRequest(startTime: self.startTime, endTime: self.endTime, topIndex: self.topIndex, playDomains: self.playDomains, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, orderParam: self.orderParam)
        }
    }

    /// DescribeVisitTopSumInfoList返回参数结构体
    public struct DescribeVisitTopSumInfoListResponse: TCPaginatedResponse {
        /// 页号，
        /// 范围是[1,1000]，
        /// 默认值是1。
        public let pageNum: UInt64

        /// 每页个数，范围是[1,1000]，
        /// 默认值是20。
        public let pageSize: UInt64

        /// 峰值指标，可选值包括”Domain”，”StreamId”。
        public let topIndex: String

        /// 排序指标，可选值包括” AvgFluxPerSecond”(按每秒平均流量排序)，”TotalRequest”（默认，按总请求数排序）,“TotalFlux”（按总流量排序）。
        public let orderParam: String

        /// 记录总数。
        public let totalNum: UInt64

        /// 记录总页数。
        public let totalPage: UInt64

        /// 数据内容。
        public let dataInfoList: [PlaySumStatInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case topIndex = "TopIndex"
            case orderParam = "OrderParam"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PlaySumStatInfo] {
            self.dataInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    @inlinable
    public func describeVisitTopSumInfoList(_ input: DescribeVisitTopSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVisitTopSumInfoListResponse> {
        self.client.execute(action: "DescribeVisitTopSumInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    @inlinable
    public func describeVisitTopSumInfoList(_ input: DescribeVisitTopSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVisitTopSumInfoListResponse {
        try await self.client.execute(action: "DescribeVisitTopSumInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    @inlinable
    public func describeVisitTopSumInfoList(startTime: String, endTime: String, topIndex: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, orderParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVisitTopSumInfoListResponse> {
        self.describeVisitTopSumInfoList(.init(startTime: startTime, endTime: endTime, topIndex: topIndex, playDomains: playDomains, pageNum: pageNum, pageSize: pageSize, orderParam: orderParam), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    @inlinable
    public func describeVisitTopSumInfoList(startTime: String, endTime: String, topIndex: String, playDomains: [String]? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, orderParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVisitTopSumInfoListResponse {
        try await self.describeVisitTopSumInfoList(.init(startTime: startTime, endTime: endTime, topIndex: topIndex, playDomains: playDomains, pageNum: pageNum, pageSize: pageSize, orderParam: orderParam), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    @inlinable
    public func describeVisitTopSumInfoListPaginated(_ input: DescribeVisitTopSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PlaySumStatInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeVisitTopSumInfoList, logger: logger, on: eventLoop)
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    @inlinable @discardableResult
    public func describeVisitTopSumInfoListPaginated(_ input: DescribeVisitTopSumInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVisitTopSumInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVisitTopSumInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询某时间段top n的域名或流id信息
    ///
    /// 查询某时间段top n的域名或流id信息（暂支持top 1000）。
    ///
    /// - Returns: `AsyncSequence`s of `PlaySumStatInfo` and `DescribeVisitTopSumInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVisitTopSumInfoListPaginator(_ input: DescribeVisitTopSumInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVisitTopSumInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVisitTopSumInfoList, logger: logger, on: eventLoop)
    }
}
