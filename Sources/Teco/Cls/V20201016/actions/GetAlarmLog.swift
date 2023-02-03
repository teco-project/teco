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
    /// GetAlarmLog请求参数结构体
    public struct GetAlarmLogRequest: TCRequestModel {
        /// 要查询的日志的起始时间，Unix时间戳，单位ms
        public let from: Int64

        /// 要查询的日志的结束时间，Unix时间戳，单位ms
        public let to: Int64

        /// 查询语句，语句长度最大为1024
        public let query: String

        /// 单次查询返回的日志条数，最大值为1000
        public let limit: Int64?

        /// 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容
        public let context: String?

        /// 日志接口是否按时间排序返回；可选值：asc(升序)、desc(降序)，默认为 desc
        public let sort: String?

        /// 为true代表使用新检索,响应参数AnalysisRecords和Columns有效， 为false时代表使用老检索方式, AnalysisResults和ColNames有效
        public let useNewAnalysis: Bool?

        public init(from: Int64, to: Int64, query: String, limit: Int64? = nil, context: String? = nil, sort: String? = nil, useNewAnalysis: Bool? = nil) {
            self.from = from
            self.to = to
            self.query = query
            self.limit = limit
            self.context = context
            self.sort = sort
            self.useNewAnalysis = useNewAnalysis
        }

        enum CodingKeys: String, CodingKey {
            case from = "From"
            case to = "To"
            case query = "Query"
            case limit = "Limit"
            case context = "Context"
            case sort = "Sort"
            case useNewAnalysis = "UseNewAnalysis"
        }
    }

    /// GetAlarmLog返回参数结构体
    public struct GetAlarmLogResponse: TCResponseModel {
        /// 加载后续内容的Context
        public let context: String

        /// 日志查询结果是否全部返回
        public let listOver: Bool

        /// 返回的是否为分析结果
        public let analysis: Bool

        /// 如果Analysis为True，则返回分析结果的列名，否则为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let colNames: [String]?

        /// 日志查询结果；当Analysis为True时，可能返回为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [LogInfo]?

        /// 日志分析结果；当Analysis为False时，可能返回为null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let analysisResults: [LogItems]?

        /// 新的日志分析结果; UseNewAnalysis为true有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let analysisRecords: [String]?

        /// 日志分析的列属性; UseNewAnalysis为true有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let columns: [Column]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case listOver = "ListOver"
            case analysis = "Analysis"
            case colNames = "ColNames"
            case results = "Results"
            case analysisResults = "AnalysisResults"
            case analysisRecords = "AnalysisRecords"
            case columns = "Columns"
            case requestId = "RequestId"
        }
    }

    /// 获取告警任务历史记录
    ///
    /// 本接口用于获取告警任务历史
    @inlinable
    public func getAlarmLog(_ input: GetAlarmLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAlarmLogResponse> {
        self.client.execute(action: "GetAlarmLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警任务历史记录
    ///
    /// 本接口用于获取告警任务历史
    @inlinable
    public func getAlarmLog(_ input: GetAlarmLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAlarmLogResponse {
        try await self.client.execute(action: "GetAlarmLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警任务历史记录
    ///
    /// 本接口用于获取告警任务历史
    @inlinable
    public func getAlarmLog(from: Int64, to: Int64, query: String, limit: Int64? = nil, context: String? = nil, sort: String? = nil, useNewAnalysis: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAlarmLogResponse> {
        let input = GetAlarmLogRequest(from: from, to: to, query: query, limit: limit, context: context, sort: sort, useNewAnalysis: useNewAnalysis)
        return self.client.execute(action: "GetAlarmLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警任务历史记录
    ///
    /// 本接口用于获取告警任务历史
    @inlinable
    public func getAlarmLog(from: Int64, to: Int64, query: String, limit: Int64? = nil, context: String? = nil, sort: String? = nil, useNewAnalysis: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAlarmLogResponse {
        let input = GetAlarmLogRequest(from: from, to: to, query: query, limit: limit, context: context, sort: sort, useNewAnalysis: useNewAnalysis)
        return try await self.client.execute(action: "GetAlarmLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
