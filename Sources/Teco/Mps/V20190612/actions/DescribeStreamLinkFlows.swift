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

extension Mps {
    /// DescribeStreamLinkFlows请求参数结构体
    public struct DescribeStreamLinkFlowsRequest: TCPaginatedRequest {
        /// 当前页数，默认1。
        public let pageNum: Int64?

        /// 每页大小，默认10。
        public let pageSize: Int64?

        public init(pageNum: Int64? = nil, pageSize: Int64? = nil) {
            self.pageNum = pageNum
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeStreamLinkFlowsResponse) -> DescribeStreamLinkFlowsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeStreamLinkFlowsRequest(pageNum: (self.pageNum ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeStreamLinkFlows返回参数结构体
    public struct DescribeStreamLinkFlowsResponse: TCPaginatedResponse {
        /// 流的配置信息列表。
        public let infos: [DescribeFlow]

        /// 当前页数。
        public let pageNum: Int64

        /// 每页大小。
        public let pageSize: Int64

        /// 总数量。
        public let totalNum: Int64

        /// 总页数。
        public let totalPage: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case infos = "Infos"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescribeFlow] {
            self.infos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlows(_ input: DescribeStreamLinkFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowsResponse> {
        self.client.execute(action: "DescribeStreamLinkFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlows(_ input: DescribeStreamLinkFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowsResponse {
        try await self.client.execute(action: "DescribeStreamLinkFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlows(pageNum: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowsResponse> {
        let input = DescribeStreamLinkFlowsRequest(pageNum: pageNum, pageSize: pageSize)
        return self.client.execute(action: "DescribeStreamLinkFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlows(pageNum: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowsResponse {
        let input = DescribeStreamLinkFlowsRequest(pageNum: pageNum, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeStreamLinkFlows", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlowsPaginated(_ input: DescribeStreamLinkFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribeFlow])> {
        self.client.paginate(input: input, region: region, command: self.describeStreamLinkFlows, logger: logger, on: eventLoop)
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable @discardableResult
    public func describeStreamLinkFlowsPaginated(_ input: DescribeStreamLinkFlowsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStreamLinkFlowsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStreamLinkFlows, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 批量查询媒体输入流
    ///
    /// 批量查询媒体输入流的配置信息。
    @inlinable
    public func describeStreamLinkFlowsPaginator(_ input: DescribeStreamLinkFlowsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeStreamLinkFlowsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStreamLinkFlows, logger: logger, on: eventLoop)
    }
}
