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
    /// DescribeLiveStreamPushInfoList请求参数结构体
    public struct DescribeLiveStreamPushInfoListRequest: TCPaginatedRequest {
        /// 推流域名。
        public let pushDomain: String?

        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        public let appName: String?

        /// 页数，
        /// 范围[1,10000]，
        /// 默认值：1。
        public let pageNum: UInt64?

        /// 每页个数，
        /// 范围：[1,1000]，
        /// 默认值： 200。
        public let pageSize: UInt64?

        public init(pushDomain: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil) {
            self.pushDomain = pushDomain
            self.appName = appName
            self.pageNum = pageNum
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case pushDomain = "PushDomain"
            case appName = "AppName"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLiveStreamPushInfoListResponse) -> DescribeLiveStreamPushInfoListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLiveStreamPushInfoListRequest(pushDomain: self.pushDomain, appName: self.appName, pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeLiveStreamPushInfoList返回参数结构体
    public struct DescribeLiveStreamPushInfoListResponse: TCPaginatedResponse {
        /// 直播流的统计信息列表。
        public let dataInfoList: [PushDataInfo]

        /// 所有在线流的总数量。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 当前数据所在页码。
        public let pageNum: UInt64

        /// 每页的在线流的个数。
        public let pageSize: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PushDataInfo] {
            self.dataInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoList(_ input: DescribeLiveStreamPushInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamPushInfoListResponse> {
        self.client.execute(action: "DescribeLiveStreamPushInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoList(_ input: DescribeLiveStreamPushInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamPushInfoListResponse {
        try await self.client.execute(action: "DescribeLiveStreamPushInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoList(pushDomain: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamPushInfoListResponse> {
        let input = DescribeLiveStreamPushInfoListRequest(pushDomain: pushDomain, appName: appName, pageNum: pageNum, pageSize: pageSize)
        return self.client.execute(action: "DescribeLiveStreamPushInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoList(pushDomain: String? = nil, appName: String? = nil, pageNum: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamPushInfoListResponse {
        let input = DescribeLiveStreamPushInfoListRequest(pushDomain: pushDomain, appName: appName, pageNum: pageNum, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeLiveStreamPushInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable
    public func describeLiveStreamPushInfoListPaginated(_ input: DescribeLiveStreamPushInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PushDataInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveStreamPushInfoList, logger: logger, on: eventLoop)
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    @inlinable @discardableResult
    public func describeLiveStreamPushInfoListPaginated(_ input: DescribeLiveStreamPushInfoListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveStreamPushInfoListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveStreamPushInfoList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取在线流的推流数据
    ///
    /// 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。
    ///
    /// - Returns: `AsyncSequence`s of `PushDataInfo` and `DescribeLiveStreamPushInfoListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLiveStreamPushInfoListPaginator(_ input: DescribeLiveStreamPushInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLiveStreamPushInfoListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveStreamPushInfoList, logger: logger, on: eventLoop)
    }
}
