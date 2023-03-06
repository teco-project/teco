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
    /// DescribeCallbackRecordsList请求参数结构体
    public struct DescribeCallbackRecordsListRequest: TCPaginatedRequest {
        /// 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过1天。
        public let endTime: String

        /// 流名称，精确匹配。
        public let streamName: String

        /// 页码。
        public let pageNum: UInt64

        /// 每页条数。
        public let pageSize: UInt64

        /// 事件类型。
        /// 0: "断流",
        /// 1: "推流",
        /// 100: "录制"
        /// 200: "截图回调"。
        public let eventType: UInt64?

        /// 回调结果。
        /// 0为成功，其他为失败。
        public let resultCode: UInt64?

        public init(startTime: String, endTime: String, streamName: String, pageNum: UInt64, pageSize: UInt64, eventType: UInt64? = nil, resultCode: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.streamName = streamName
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.eventType = eventType
            self.resultCode = resultCode
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case streamName = "StreamName"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case eventType = "EventType"
            case resultCode = "ResultCode"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCallbackRecordsListResponse) -> DescribeCallbackRecordsListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCallbackRecordsListRequest(startTime: self.startTime, endTime: self.endTime, streamName: self.streamName, pageNum: self.pageNum + 1, pageSize: self.pageSize, eventType: self.eventType, resultCode: self.resultCode)
        }
    }

    /// DescribeCallbackRecordsList返回参数结构体
    public struct DescribeCallbackRecordsListResponse: TCPaginatedResponse {
        /// 回调事件列表。
        public let dataInfoList: [CallbackEventInfo]

        /// 页码。
        public let pageNum: UInt64

        /// 每页条数。
        public let pageSize: UInt64

        /// 总条数。
        public let totalNum: UInt64

        /// 总页数。
        public let totalPage: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case totalNum = "TotalNum"
            case totalPage = "TotalPage"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CallbackEventInfo] {
            self.dataInfoList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsList(_ input: DescribeCallbackRecordsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCallbackRecordsListResponse> {
        self.client.execute(action: "DescribeCallbackRecordsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsList(_ input: DescribeCallbackRecordsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCallbackRecordsListResponse {
        try await self.client.execute(action: "DescribeCallbackRecordsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsList(startTime: String, endTime: String, streamName: String, pageNum: UInt64, pageSize: UInt64, eventType: UInt64? = nil, resultCode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCallbackRecordsListResponse> {
        let input = DescribeCallbackRecordsListRequest(startTime: startTime, endTime: endTime, streamName: streamName, pageNum: pageNum, pageSize: pageSize, eventType: eventType, resultCode: resultCode)
        return self.client.execute(action: "DescribeCallbackRecordsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsList(startTime: String, endTime: String, streamName: String, pageNum: UInt64, pageSize: UInt64, eventType: UInt64? = nil, resultCode: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCallbackRecordsListResponse {
        let input = DescribeCallbackRecordsListRequest(startTime: startTime, endTime: endTime, streamName: streamName, pageNum: pageNum, pageSize: pageSize, eventType: eventType, resultCode: resultCode)
        return try await self.client.execute(action: "DescribeCallbackRecordsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsListPaginated(_ input: DescribeCallbackRecordsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CallbackEventInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeCallbackRecordsList, logger: logger, on: eventLoop)
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsListPaginated(_ input: DescribeCallbackRecordsListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCallbackRecordsListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCallbackRecordsList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 回调事件查询
    ///
    /// 用于查询回调事件。
    @inlinable
    public func describeCallbackRecordsListPaginator(_ input: DescribeCallbackRecordsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCallbackRecordsListRequest, DescribeCallbackRecordsListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCallbackRecordsListRequest, DescribeCallbackRecordsListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeCallbackRecordsListRequest, DescribeCallbackRecordsListResponse>.ResultSequence(input: input, region: region, command: self.describeCallbackRecordsList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeCallbackRecordsListRequest, DescribeCallbackRecordsListResponse>.ResponseSequence(input: input, region: region, command: self.describeCallbackRecordsList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
