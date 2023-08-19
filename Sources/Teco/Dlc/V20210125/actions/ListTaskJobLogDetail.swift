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

extension Dlc {
    /// ListTaskJobLogDetail请求参数结构体
    public struct ListTaskJobLogDetailRequest: TCRequest {
        /// 列表返回的Id
        public let taskId: String

        /// 开始运行时间，unix时间戳（毫秒）
        public let startTime: Int64

        /// 结束运行时间，unix时间戳（毫秒）
        public let endTime: Int64

        /// 分页大小，最大1000，配合Context一起使用
        public let limit: Int64

        /// 下一次分页参数，第一次传空
        public let context: String

        /// 最近1000条日志是否升序排列，true:升序排序，false:倒序，默认false，倒序排列
        public let asc: Bool?

        /// 预览日志的通用过滤条件
        public let filters: [Filter]?

        /// SparkSQL任务唯一ID
        public let batchId: String?

        public init(taskId: String, startTime: Int64, endTime: Int64, limit: Int64, context: String, asc: Bool? = nil, filters: [Filter]? = nil, batchId: String? = nil) {
            self.taskId = taskId
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.context = context
            self.asc = asc
            self.filters = filters
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case context = "Context"
            case asc = "Asc"
            case filters = "Filters"
            case batchId = "BatchId"
        }
    }

    /// ListTaskJobLogDetail返回参数结构体
    public struct ListTaskJobLogDetailResponse: TCResponse {
        /// 下一次分页参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 是否获取完结
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listOver: Bool?

        /// 日志详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [JobLogResult]?

        /// 日志url
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case listOver = "ListOver"
            case results = "Results"
            case logUrl = "LogUrl"
            case requestId = "RequestId"
        }
    }

    /// 查询日志详情
    ///
    /// 本接口（ListTaskJobLogDetail）用于获取spark 作业任务日志详情
    @inlinable
    public func listTaskJobLogDetail(_ input: ListTaskJobLogDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTaskJobLogDetailResponse> {
        self.client.execute(action: "ListTaskJobLogDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志详情
    ///
    /// 本接口（ListTaskJobLogDetail）用于获取spark 作业任务日志详情
    @inlinable
    public func listTaskJobLogDetail(_ input: ListTaskJobLogDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTaskJobLogDetailResponse {
        try await self.client.execute(action: "ListTaskJobLogDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志详情
    ///
    /// 本接口（ListTaskJobLogDetail）用于获取spark 作业任务日志详情
    @inlinable
    public func listTaskJobLogDetail(taskId: String, startTime: Int64, endTime: Int64, limit: Int64, context: String, asc: Bool? = nil, filters: [Filter]? = nil, batchId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTaskJobLogDetailResponse> {
        self.listTaskJobLogDetail(.init(taskId: taskId, startTime: startTime, endTime: endTime, limit: limit, context: context, asc: asc, filters: filters, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志详情
    ///
    /// 本接口（ListTaskJobLogDetail）用于获取spark 作业任务日志详情
    @inlinable
    public func listTaskJobLogDetail(taskId: String, startTime: Int64, endTime: Int64, limit: Int64, context: String, asc: Bool? = nil, filters: [Filter]? = nil, batchId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTaskJobLogDetailResponse {
        try await self.listTaskJobLogDetail(.init(taskId: taskId, startTime: startTime, endTime: endTime, limit: limit, context: context, asc: asc, filters: filters, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
