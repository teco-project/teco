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

extension Waf {
    /// SearchAccessLog请求参数结构体
    public struct SearchAccessLogRequest: TCRequestModel {
        /// 客户要查询的日志主题ID，每个客户都有对应的一个主题，新版本此字段填空字符串
        public let topicId: String

        /// 要查询的日志的起始时间，Unix时间戳，单位ms
        public let from: Int64

        /// 要查询的日志的结束时间，Unix时间戳，单位ms
        public let to: Int64

        /// 查询语句，语句长度最大为4096
        public let query: String

        /// 单次查询返回的日志条数，最大值为100
        public let limit: Int64?

        /// 新版本此字段失效，填空字符串，翻页使用Page
        public let context: String?

        /// 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        public let sort: String?

        /// 第几页，从0开始。新版本接口字段
        public let page: Int64?

        public init(topicId: String, from: Int64, to: Int64, query: String, limit: Int64? = nil, context: String? = nil, sort: String? = nil, page: Int64? = nil) {
            self.topicId = topicId
            self.from = from
            self.to = to
            self.query = query
            self.limit = limit
            self.context = context
            self.sort = sort
            self.page = page
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case from = "From"
            case to = "To"
            case query = "Query"
            case limit = "Limit"
            case context = "Context"
            case sort = "Sort"
            case page = "Page"
        }
    }

    /// SearchAccessLog返回参数结构体
    public struct SearchAccessLogResponse: TCResponseModel {
        /// 新接口此字段失效，默认返回空字符串
        public let context: String

        /// 日志查询结果是否全部返回，其中，“true”表示结果返回，“false”表示结果为返回
        public let listOver: Bool

        /// 返回的是否为分析结果，其中，“true”表示返回分析结果，“false”表示未返回分析结果
        public let analysis: Bool

        /// 如果Analysis为True，则返回分析结果的列名，否则为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let colNames: [String]?

        /// 日志查询结果；当Analysis为True时，可能返回为null
        /// 注意：此字段可能返回 null，表示取不到有效值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [AccessLogInfo]?

        /// 日志分析结果；当Analysis为False时，可能返回为null
        /// 注意：此字段可能返回 null，表示取不到有效值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let analysisResults: [AccessLogItems]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case listOver = "ListOver"
            case analysis = "Analysis"
            case colNames = "ColNames"
            case results = "Results"
            case analysisResults = "AnalysisResults"
            case requestId = "RequestId"
        }
    }

    /// 搜索访问日志
    ///
    /// 本接口用于搜索WAF访问日志
    @inlinable
    public func searchAccessLog(_ input: SearchAccessLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAccessLogResponse> {
        self.client.execute(action: "SearchAccessLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索访问日志
    ///
    /// 本接口用于搜索WAF访问日志
    @inlinable
    public func searchAccessLog(_ input: SearchAccessLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchAccessLogResponse {
        try await self.client.execute(action: "SearchAccessLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索访问日志
    ///
    /// 本接口用于搜索WAF访问日志
    @inlinable
    public func searchAccessLog(topicId: String, from: Int64, to: Int64, query: String, limit: Int64? = nil, context: String? = nil, sort: String? = nil, page: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAccessLogResponse> {
        self.searchAccessLog(.init(topicId: topicId, from: from, to: to, query: query, limit: limit, context: context, sort: sort, page: page), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索访问日志
    ///
    /// 本接口用于搜索WAF访问日志
    @inlinable
    public func searchAccessLog(topicId: String, from: Int64, to: Int64, query: String, limit: Int64? = nil, context: String? = nil, sort: String? = nil, page: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchAccessLogResponse {
        try await self.searchAccessLog(.init(topicId: topicId, from: from, to: to, query: query, limit: limit, context: context, sort: sort, page: page), region: region, logger: logger, on: eventLoop)
    }
}
