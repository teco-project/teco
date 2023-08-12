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
import TecoPaginationHelpers

extension Dasb {
    /// DescribeLoginEvent请求参数结构体
    public struct DescribeLoginEventRequest: TCPaginatedRequest {
        /// 用户名，如果不包含其他条件时对user_name or real_name两个字段模糊查询
        public let userName: String?

        /// 姓名，模糊查询
        public let realName: String?

        /// 查询时间范围，起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 查询时间范围，结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 来源IP，模糊查询
        public let sourceIp: String?

        /// 登录入口：1-字符界面,2-图形界面，3-web页面, 4-API
        public let entry: UInt64?

        /// 操作结果，1-成功，2-失败
        public let result: UInt64?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 分页每页记录数，默认20
        public let limit: UInt64?

        public init(userName: String? = nil, realName: String? = nil, startTime: Date? = nil, endTime: Date? = nil, sourceIp: String? = nil, entry: UInt64? = nil, result: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.userName = userName
            self.realName = realName
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.sourceIp = sourceIp
            self.entry = entry
            self.result = result
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sourceIp = "SourceIp"
            case entry = "Entry"
            case result = "Result"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLoginEventResponse) -> DescribeLoginEventRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLoginEventRequest(userName: self.userName, realName: self.realName, startTime: self.startTime, endTime: self.endTime, sourceIp: self.sourceIp, entry: self.entry, result: self.result, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeLoginEvent返回参数结构体
    public struct DescribeLoginEventResponse: TCPaginatedResponse {
        /// 登录日志列表
        public let loginEventSet: [LoginEvent]

        /// 总记录数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loginEventSet = "LoginEventSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LoginEvent`` list from the paginated response.
        public func getItems() -> [LoginEvent] {
            self.loginEventSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询登录日志
    @inlinable
    public func describeLoginEvent(_ input: DescribeLoginEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginEventResponse> {
        self.client.execute(action: "DescribeLoginEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询登录日志
    @inlinable
    public func describeLoginEvent(_ input: DescribeLoginEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginEventResponse {
        try await self.client.execute(action: "DescribeLoginEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询登录日志
    @inlinable
    public func describeLoginEvent(userName: String? = nil, realName: String? = nil, startTime: Date? = nil, endTime: Date? = nil, sourceIp: String? = nil, entry: UInt64? = nil, result: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoginEventResponse> {
        self.describeLoginEvent(.init(userName: userName, realName: realName, startTime: startTime, endTime: endTime, sourceIp: sourceIp, entry: entry, result: result, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询登录日志
    @inlinable
    public func describeLoginEvent(userName: String? = nil, realName: String? = nil, startTime: Date? = nil, endTime: Date? = nil, sourceIp: String? = nil, entry: UInt64? = nil, result: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoginEventResponse {
        try await self.describeLoginEvent(.init(userName: userName, realName: realName, startTime: startTime, endTime: endTime, sourceIp: sourceIp, entry: entry, result: result, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询登录日志
    @inlinable
    public func describeLoginEventPaginated(_ input: DescribeLoginEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LoginEvent])> {
        self.client.paginate(input: input, region: region, command: self.describeLoginEvent, logger: logger, on: eventLoop)
    }

    /// 查询登录日志
    @inlinable @discardableResult
    public func describeLoginEventPaginated(_ input: DescribeLoginEventRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLoginEventResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLoginEvent, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询登录日志
    ///
    /// - Returns: `AsyncSequence`s of ``LoginEvent`` and ``DescribeLoginEventResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLoginEventPaginator(_ input: DescribeLoginEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLoginEventRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLoginEvent, logger: logger, on: eventLoop)
    }
}
