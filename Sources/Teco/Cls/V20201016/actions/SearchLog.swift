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

extension Cls {
    /// SearchLog请求参数结构体
    public struct SearchLogRequest: TCRequestModel {
        /// 要检索分析的日志的起始时间，Unix时间戳（毫秒）
        public let from: Int64

        /// 要检索分析的日志的结束时间，Unix时间戳（毫秒）
        public let to: Int64

        /// 检索分析语句，最大长度为12KB
        /// 语句由 <a href="https://cloud.tencent.com/document/product/614/47044" target="_blank">[检索条件]</a> | <a href="https://cloud.tencent.com/document/product/614/44061" target="_blank">[SQL语句]</a>构成，无需对日志进行统计分析时，可省略其中的管道符<code> | </code>及SQL语句
        /// 使用*或空字符串可查询所有日志
        public let query: String

        /// 要检索分析的日志主题ID
        public let topicId: String?

        /// 表示单次查询返回的原始日志条数，最大值为1000，获取后续日志需使用Context参数
        /// 注意：
        /// * 仅当检索分析语句(Query)不包含SQL时有效
        /// * SQL结果条数指定方式参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        public let limit: Int64?

        /// 透传上次接口返回的Context值，可获取后续更多日志，总计最多可获取1万条原始日志，过期时间1小时
        /// 注意：
        /// * 透传该参数时，请勿修改除该参数外的其它参数
        /// * 仅当检索分析语句(Query)不包含SQL时有效
        /// * SQL获取后续结果参考<a href="https://cloud.tencent.com/document/product/614/58977" target="_blank">SQL LIMIT语法</a>
        public let context: String?

        /// 原始日志是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        /// 注意：
        /// * 仅当检索分析语句(Query)不包含SQL时有效
        /// * SQL结果排序方式参考<a href="https://cloud.tencent.com/document/product/614/58978" target="_blank">SQL ORDER BY语法</a>
        public let sort: String?

        /// 为true代表使用新的检索结果返回方式，输出参数AnalysisRecords和Columns有效
        /// 为false时代表使用老的检索结果返回方式, 输出AnalysisResults和ColNames有效
        /// 两种返回方式在编码格式上有少量区别，建议使用true
        public let useNewAnalysis: Bool?

        /// 执行统计分析（Query中包含SQL）时，是否对原始日志先进行采样，再进行统计分析。
        /// 0：自动采样;
        /// 0～1：按指定采样率采样，例如0.02;
        /// 1：不采样，即精确分析
        /// 默认值为1
        public let samplingRate: Float?

        public init(from: Int64, to: Int64, query: String, topicId: String? = nil, limit: Int64? = nil, context: String? = nil, sort: String? = nil, useNewAnalysis: Bool? = nil, samplingRate: Float? = nil) {
            self.from = from
            self.to = to
            self.query = query
            self.topicId = topicId
            self.limit = limit
            self.context = context
            self.sort = sort
            self.useNewAnalysis = useNewAnalysis
            self.samplingRate = samplingRate
        }

        enum CodingKeys: String, CodingKey {
            case from = "From"
            case to = "To"
            case query = "Query"
            case topicId = "TopicId"
            case limit = "Limit"
            case context = "Context"
            case sort = "Sort"
            case useNewAnalysis = "UseNewAnalysis"
            case samplingRate = "SamplingRate"
        }
    }

    /// SearchLog返回参数结构体
    public struct SearchLogResponse: TCResponseModel {
        /// 透传本次接口返回的Context值，可获取后续更多日志，过期时间1小时
        public let context: String

        /// 符合检索条件的日志是否已全部返回，如未全部返回可使用Context参数获取后续更多日志
        /// 注意：仅当检索分析语句(Query)不包含SQL时有效
        public let listOver: Bool

        /// 返回的是否为统计分析（即SQL）结果
        public let analysis: Bool

        /// 匹配检索条件的原始日志
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [LogInfo]?

        /// 日志统计分析结果的列名
        /// 当UseNewAnalysis为false时生效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let colNames: [String]?

        /// 日志统计分析结果
        /// 当UseNewAnalysis为false时生效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let analysisResults: [LogItems]?

        /// 日志统计分析结果
        /// 当UseNewAnalysis为true时生效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let analysisRecords: [String]?

        /// 日志统计分析结果的列属性
        /// 当UseNewAnalysis为true时生效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let columns: [Column]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case listOver = "ListOver"
            case analysis = "Analysis"
            case results = "Results"
            case colNames = "ColNames"
            case analysisResults = "AnalysisResults"
            case analysisRecords = "AnalysisRecords"
            case columns = "Columns"
            case requestId = "RequestId"
        }
    }

    /// 检索分析日志
    ///
    /// 本接口用于检索分析日志, 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。
    @inlinable
    public func searchLog(_ input: SearchLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchLogResponse> {
        self.client.execute(action: "SearchLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检索分析日志
    ///
    /// 本接口用于检索分析日志, 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。
    @inlinable
    public func searchLog(_ input: SearchLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchLogResponse {
        try await self.client.execute(action: "SearchLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检索分析日志
    ///
    /// 本接口用于检索分析日志, 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。
    @inlinable
    public func searchLog(from: Int64, to: Int64, query: String, topicId: String? = nil, limit: Int64? = nil, context: String? = nil, sort: String? = nil, useNewAnalysis: Bool? = nil, samplingRate: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchLogResponse> {
        let input = SearchLogRequest(from: from, to: to, query: query, topicId: topicId, limit: limit, context: context, sort: sort, useNewAnalysis: useNewAnalysis, samplingRate: samplingRate)
        return self.client.execute(action: "SearchLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检索分析日志
    ///
    /// 本接口用于检索分析日志, 该接口除受默认接口请求频率限制外，针对单个日志主题，查询并发数不能超过15。
    @inlinable
    public func searchLog(from: Int64, to: Int64, query: String, topicId: String? = nil, limit: Int64? = nil, context: String? = nil, sort: String? = nil, useNewAnalysis: Bool? = nil, samplingRate: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchLogResponse {
        let input = SearchLogRequest(from: from, to: to, query: query, topicId: topicId, limit: limit, context: context, sort: sort, useNewAnalysis: useNewAnalysis, samplingRate: samplingRate)
        return try await self.client.execute(action: "SearchLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
