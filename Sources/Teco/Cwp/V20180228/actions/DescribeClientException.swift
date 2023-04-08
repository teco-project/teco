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

import TecoCore
import TecoPaginationHelpers

extension Cwp {
    /// DescribeClientException请求参数结构体
    public struct DescribeClientExceptionRequest: TCPaginatedRequest {
        /// 客户端异常类型 1:客户端离线，2:客户端卸载
        public let exceptionType: Int64

        /// 分页的偏移量
        public let offset: UInt64

        /// 分页单页限制数目，不为0，最大值100
        public let limit: UInt64

        /// 起始时间 `2006-01-02 15:04:05` 格式
        public let startTime: String?

        /// 结束时间 `2006-01-02 15:04:05` 格式
        public let endTime: String?

        public init(exceptionType: Int64, offset: UInt64, limit: UInt64, startTime: String? = nil, endTime: String? = nil) {
            self.exceptionType = exceptionType
            self.offset = offset
            self.limit = limit
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case exceptionType = "ExceptionType"
            case offset = "Offset"
            case limit = "Limit"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClientExceptionResponse) -> DescribeClientExceptionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClientExceptionRequest(exceptionType: self.exceptionType, offset: self.offset + .init(response.getItems().count), limit: self.limit, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeClientException返回参数结构体
    public struct DescribeClientExceptionResponse: TCPaginatedResponse {
        /// 事件总数量
        public let totalCount: UInt64

        /// 事件详情
        public let records: [RecordInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case records = "Records"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RecordInfo] {
            self.records
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取客户端异常事件
    @inlinable
    public func describeClientException(_ input: DescribeClientExceptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientExceptionResponse> {
        self.client.execute(action: "DescribeClientException", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取客户端异常事件
    @inlinable
    public func describeClientException(_ input: DescribeClientExceptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientExceptionResponse {
        try await self.client.execute(action: "DescribeClientException", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取客户端异常事件
    @inlinable
    public func describeClientException(exceptionType: Int64, offset: UInt64, limit: UInt64, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientExceptionResponse> {
        self.describeClientException(.init(exceptionType: exceptionType, offset: offset, limit: limit, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取客户端异常事件
    @inlinable
    public func describeClientException(exceptionType: Int64, offset: UInt64, limit: UInt64, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientExceptionResponse {
        try await self.describeClientException(.init(exceptionType: exceptionType, offset: offset, limit: limit, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取客户端异常事件
    @inlinable
    public func describeClientExceptionPaginated(_ input: DescribeClientExceptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RecordInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeClientException, logger: logger, on: eventLoop)
    }

    /// 获取客户端异常事件
    @inlinable @discardableResult
    public func describeClientExceptionPaginated(_ input: DescribeClientExceptionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClientExceptionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClientException, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取客户端异常事件
    ///
    /// - Returns: `AsyncSequence`s of `RecordInfo` and `DescribeClientExceptionResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClientExceptionPaginator(_ input: DescribeClientExceptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClientExceptionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClientException, logger: logger, on: eventLoop)
    }
}
