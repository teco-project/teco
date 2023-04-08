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
    /// DescribeLiveStreamOnlineList请求参数结构体
    public struct DescribeLiveStreamOnlineListRequest: TCPaginatedRequest {
        /// 推流域名。多域名用户需要填写 DomainName。
        public let domainName: String?

        /// 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。多路径用户需要填写 AppName。
        public let appName: String?

        /// 取得第几页，默认1。
        public let pageNum: UInt64?

        /// 每页大小，最大100。
        /// 取值：10~100之间的任意整数。
        /// 默认值：10。
        public let pageSize: UInt64?

        /// 流名称，用于精确查询。
        public let streamName: String?

        public init(domainName: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, streamName: String? = nil) {
            self.domainName = domainName
            self.appName = appName
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.streamName = streamName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case appName = "AppName"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case streamName = "StreamName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLiveStreamOnlineListResponse) -> DescribeLiveStreamOnlineListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLiveStreamOnlineListRequest(domainName: self.domainName, appName: self.appName, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, streamName: self.streamName)
        }
    }

    /// DescribeLiveStreamOnlineList返回参数结构体
    public struct DescribeLiveStreamOnlineListResponse: TCPaginatedResponse {
        /// 符合条件的总个数。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 分页的页码。
        public let pageNum: UInt64

        /// 每页显示的条数。
        public let pageSize: UInt64

        /// 正在推送流的信息列表。
        public let onlineInfo: [StreamOnlineInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case onlineInfo = "OnlineInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [StreamOnlineInfo] {
            self.onlineInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    @inlinable
    public func describeLiveStreamOnlineList(_ input: DescribeLiveStreamOnlineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamOnlineListResponse> {
        self.client.execute(action: "DescribeLiveStreamOnlineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    @inlinable
    public func describeLiveStreamOnlineList(_ input: DescribeLiveStreamOnlineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamOnlineListResponse {
        try await self.client.execute(action: "DescribeLiveStreamOnlineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    @inlinable
    public func describeLiveStreamOnlineList(domainName: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamOnlineListResponse> {
        self.describeLiveStreamOnlineList(.init(domainName: domainName, appName: appName, pageNum: pageNum, pageSize: pageSize, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    @inlinable
    public func describeLiveStreamOnlineList(domainName: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamOnlineListResponse {
        try await self.describeLiveStreamOnlineList(.init(domainName: domainName, appName: appName, pageNum: pageNum, pageSize: pageSize, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    @inlinable
    public func describeLiveStreamOnlineListPaginated(_ input: DescribeLiveStreamOnlineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [StreamOnlineInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveStreamOnlineList, logger: logger, on: eventLoop)
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    @inlinable @discardableResult
    public func describeLiveStreamOnlineListPaginated(_ input: DescribeLiveStreamOnlineListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveStreamOnlineListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveStreamOnlineList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询直播中的流
    ///
    /// 返回正在直播中的流列表。适用于推流成功后查询在线流信息。
    ///
    /// 注意：
    /// 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
    /// 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。
    ///
    /// - Returns: `AsyncSequence`s of `StreamOnlineInfo` and `DescribeLiveStreamOnlineListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLiveStreamOnlineListPaginator(_ input: DescribeLiveStreamOnlineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLiveStreamOnlineListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveStreamOnlineList, logger: logger, on: eventLoop)
    }
}
