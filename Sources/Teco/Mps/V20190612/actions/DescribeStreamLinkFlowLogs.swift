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
import TecoPaginationHelpers

extension Mps {
    /// DescribeStreamLinkFlowLogs请求参数结构体
    public struct DescribeStreamLinkFlowLogsRequest: TCPaginatedRequest {
        /// 传输流Id。
        public let flowId: String

        /// 统计的开始时间，默认为前一小时，最多支持查询近7天。
        /// UTC时间，如'2020-01-01T12:00:00Z'。
        public let startTime: String

        /// 统计的结束时间，默认为StartTime后一小时，最多支持查询24小时的数据。
        /// UTC时间，如'2020-01-01T12:00:00Z'。
        public let endTime: String

        /// 输入或输出类型，可选[input|output]。
        public let type: [String]

        /// 主通道或备通道，可选[0|1]。
        public let pipeline: [String]

        /// 每页大小，默认100，范围为[1, 1000]。
        public let pageSize: Int64

        /// 按Timestamp升序或降序排序，默认降序，可选[desc|asc]。
        public let sortType: String?

        /// 页码，默认1，范围为[1, 1000]。
        public let pageNum: Int64?

        public init(flowId: String, startTime: String, endTime: String, type: [String], pipeline: [String], pageSize: Int64, sortType: String? = nil, pageNum: Int64? = nil) {
            self.flowId = flowId
            self.startTime = startTime
            self.endTime = endTime
            self.type = type
            self.pipeline = pipeline
            self.pageSize = pageSize
            self.sortType = sortType
            self.pageNum = pageNum
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case type = "Type"
            case pipeline = "Pipeline"
            case pageSize = "PageSize"
            case sortType = "SortType"
            case pageNum = "PageNum"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeStreamLinkFlowLogsResponse) -> DescribeStreamLinkFlowLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeStreamLinkFlowLogsRequest(flowId: self.flowId, startTime: self.startTime, endTime: self.endTime, type: self.type, pipeline: self.pipeline, pageSize: self.pageSize, sortType: self.sortType, pageNum: (self.pageNum ?? 0) + 1)
        }
    }

    /// DescribeStreamLinkFlowLogs返回参数结构体
    public struct DescribeStreamLinkFlowLogsResponse: TCPaginatedResponse {
        /// 日志信息列表。
        public let infos: [FlowLogInfo]

        /// 当前页码。
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

        /// Extract the returned ``FlowLogInfo`` list from the paginated response.
        public func getItems() -> [FlowLogInfo] {
            self.infos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    @inlinable
    public func describeStreamLinkFlowLogs(_ input: DescribeStreamLinkFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowLogsResponse> {
        self.client.execute(action: "DescribeStreamLinkFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    @inlinable
    public func describeStreamLinkFlowLogs(_ input: DescribeStreamLinkFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowLogsResponse {
        try await self.client.execute(action: "DescribeStreamLinkFlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    @inlinable
    public func describeStreamLinkFlowLogs(flowId: String, startTime: String, endTime: String, type: [String], pipeline: [String], pageSize: Int64, sortType: String? = nil, pageNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamLinkFlowLogsResponse> {
        self.describeStreamLinkFlowLogs(.init(flowId: flowId, startTime: startTime, endTime: endTime, type: type, pipeline: pipeline, pageSize: pageSize, sortType: sortType, pageNum: pageNum), region: region, logger: logger, on: eventLoop)
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    @inlinable
    public func describeStreamLinkFlowLogs(flowId: String, startTime: String, endTime: String, type: [String], pipeline: [String], pageSize: Int64, sortType: String? = nil, pageNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamLinkFlowLogsResponse {
        try await self.describeStreamLinkFlowLogs(.init(flowId: flowId, startTime: startTime, endTime: endTime, type: type, pipeline: pipeline, pageSize: pageSize, sortType: sortType, pageNum: pageNum), region: region, logger: logger, on: eventLoop)
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    @inlinable
    public func describeStreamLinkFlowLogsPaginated(_ input: DescribeStreamLinkFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FlowLogInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeStreamLinkFlowLogs, logger: logger, on: eventLoop)
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    @inlinable @discardableResult
    public func describeStreamLinkFlowLogsPaginated(_ input: DescribeStreamLinkFlowLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStreamLinkFlowLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStreamLinkFlowLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询传输流的日志
    ///
    /// 查询媒体传输流的日志信息。
    ///
    /// - Returns: `AsyncSequence`s of ``FlowLogInfo`` and ``DescribeStreamLinkFlowLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeStreamLinkFlowLogsPaginator(_ input: DescribeStreamLinkFlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeStreamLinkFlowLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStreamLinkFlowLogs, logger: logger, on: eventLoop)
    }
}
