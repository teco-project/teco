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
    /// DescribeLiveForbidStreamList请求参数结构体
    public struct DescribeLiveForbidStreamListRequest: TCPaginatedRequest {
        /// 取得第几页，默认1。
        public let pageNum: Int64?

        /// 每页大小，最大100。
        /// 取值：1~100之前的任意整数。
        /// 默认值：10。
        public let pageSize: Int64?

        /// 按流名称查询。
        public let streamName: String?

        public init(pageNum: Int64? = nil, pageSize: Int64? = nil, streamName: String? = nil) {
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.streamName = streamName
        }

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case streamName = "StreamName"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLiveForbidStreamListResponse) -> DescribeLiveForbidStreamListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLiveForbidStreamListRequest(pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize, streamName: self.streamName)
        }
    }

    /// DescribeLiveForbidStreamList返回参数结构体
    public struct DescribeLiveForbidStreamListResponse: TCPaginatedResponse {
        /// 符合条件的总个数。
        public let totalNum: Int64

        /// 总页数。
        public let totalPage: Int64

        /// 分页的页码。
        public let pageNum: Int64

        /// 每页显示的条数。
        public let pageSize: Int64

        /// 禁推流列表。
        public let forbidStreamList: [ForbidStreamInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case forbidStreamList = "ForbidStreamList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ForbidStreamInfo] {
            self.forbidStreamList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable
    public func describeLiveForbidStreamList(_ input: DescribeLiveForbidStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveForbidStreamListResponse> {
        self.client.execute(action: "DescribeLiveForbidStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable
    public func describeLiveForbidStreamList(_ input: DescribeLiveForbidStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveForbidStreamListResponse {
        try await self.client.execute(action: "DescribeLiveForbidStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable
    public func describeLiveForbidStreamList(pageNum: Int64? = nil, pageSize: Int64? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveForbidStreamListResponse> {
        let input = DescribeLiveForbidStreamListRequest(pageNum: pageNum, pageSize: pageSize, streamName: streamName)
        return self.client.execute(action: "DescribeLiveForbidStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable
    public func describeLiveForbidStreamList(pageNum: Int64? = nil, pageSize: Int64? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveForbidStreamListResponse {
        let input = DescribeLiveForbidStreamListRequest(pageNum: pageNum, pageSize: pageSize, streamName: streamName)
        return try await self.client.execute(action: "DescribeLiveForbidStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable
    public func describeLiveForbidStreamListPaginated(_ input: DescribeLiveForbidStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ForbidStreamInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveForbidStreamList, logger: logger, on: eventLoop)
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable @discardableResult
    public func describeLiveForbidStreamListPaginated(_ input: DescribeLiveForbidStreamListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveForbidStreamListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveForbidStreamList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取禁推流列表
    ///
    /// 获取禁推流列表。
    ///
    /// 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。
    @inlinable
    public func describeLiveForbidStreamListPaginator(_ input: DescribeLiveForbidStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeLiveForbidStreamListRequest, DescribeLiveForbidStreamListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeLiveForbidStreamListRequest, DescribeLiveForbidStreamListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveForbidStreamList, logger: logger, on: eventLoop)
    }
}
