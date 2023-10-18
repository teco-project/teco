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

extension Cdn {
    /// SearchClsLog请求参数结构体
    public struct SearchClsLogRequest: TCRequest {
        /// 需要查询的日志集ID
        public let logsetId: String

        /// 需要查询的日志主题ID组合，以逗号分隔
        public let topicIds: String

        /// 需要查询的日志的起始时间，格式 YYYY-mm-dd HH:MM:SS
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 需要查询的日志的结束时间，格式 YYYY-mm-dd HH:MM:SS
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 单次要返回的日志条数，单次返回的最大条数为100
        public let limit: Int64

        /// 接入渠道，cdn或者ecdn，默认值为cdn
        public let channel: String?

        /// 需要查询的内容，详情请参考https://cloud.tencent.com/document/product/614/16982
        public let query: String?

        /// 加载更多使用，透传上次返回的 context 值，获取后续的日志内容，通过游标最多可获取10000条，请尽可能缩小时间范围
        public let context: String?

        /// 按日志时间排序， asc（升序）或者 desc（降序），默认为 desc
        public let sort: String?

        public init(logsetId: String, topicIds: String, startTime: Date, endTime: Date, limit: Int64, channel: String? = nil, query: String? = nil, context: String? = nil, sort: String? = nil) {
            self.logsetId = logsetId
            self.topicIds = topicIds
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.limit = limit
            self.channel = channel
            self.query = query
            self.context = context
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case topicIds = "TopicIds"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case channel = "Channel"
            case query = "Query"
            case context = "Context"
            case sort = "Sort"
        }
    }

    /// SearchClsLog返回参数结构体
    public struct SearchClsLogResponse: TCResponse {
        /// 查询结果
        public let logs: ClsSearchLogs

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logs = "Logs"
            case requestId = "RequestId"
        }
    }

    /// 搜索CLS日志
    ///
    /// SearchClsLog 用于 CLS 日志检索。支持检索今天，24小时（可选近7中的某一天），近7天的日志数据。
    @inlinable
    public func searchClsLog(_ input: SearchClsLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClsLogResponse> {
        self.client.execute(action: "SearchClsLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索CLS日志
    ///
    /// SearchClsLog 用于 CLS 日志检索。支持检索今天，24小时（可选近7中的某一天），近7天的日志数据。
    @inlinable
    public func searchClsLog(_ input: SearchClsLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClsLogResponse {
        try await self.client.execute(action: "SearchClsLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索CLS日志
    ///
    /// SearchClsLog 用于 CLS 日志检索。支持检索今天，24小时（可选近7中的某一天），近7天的日志数据。
    @inlinable
    public func searchClsLog(logsetId: String, topicIds: String, startTime: Date, endTime: Date, limit: Int64, channel: String? = nil, query: String? = nil, context: String? = nil, sort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClsLogResponse> {
        self.searchClsLog(.init(logsetId: logsetId, topicIds: topicIds, startTime: startTime, endTime: endTime, limit: limit, channel: channel, query: query, context: context, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索CLS日志
    ///
    /// SearchClsLog 用于 CLS 日志检索。支持检索今天，24小时（可选近7中的某一天），近7天的日志数据。
    @inlinable
    public func searchClsLog(logsetId: String, topicIds: String, startTime: Date, endTime: Date, limit: Int64, channel: String? = nil, query: String? = nil, context: String? = nil, sort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClsLogResponse {
        try await self.searchClsLog(.init(logsetId: logsetId, topicIds: topicIds, startTime: startTime, endTime: endTime, limit: limit, channel: channel, query: query, context: context, sort: sort), region: region, logger: logger, on: eventLoop)
    }
}
