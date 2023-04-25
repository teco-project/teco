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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Rum {
    /// DescribeLogList请求参数结构体
    public struct DescribeLogListRequest: TCRequestModel {
        /// 排序方式  desc  asc（必填）
        public let sort: String

        /// searchlog  histogram（必填）
        public let actionType: String

        /// 项目ID（必填）
        public let id: Int64

        /// 开始时间（必填）
        public let startTime: String?

        /// 单次查询返回的原始日志条数，最大值为100（必填）
        public let limit: Int64?

        /// 上下文，加载更多日志时使用，透传上次返回的 Context 值，获取后续的日志内容，总计最多可获取1万条原始日志。过期时间1小时
        public let context: String?

        /// 查询语句，参考控制台请求参数，语句长度最大为4096（必填）例："id:120001 AND type:\"log\""
        public let query: String?

        /// 结束时间（必填）
        public let endTime: String?

        public init(sort: String, actionType: String, id: Int64, startTime: String? = nil, limit: Int64? = nil, context: String? = nil, query: String? = nil, endTime: String? = nil) {
            self.sort = sort
            self.actionType = actionType
            self.id = id
            self.startTime = startTime
            self.limit = limit
            self.context = context
            self.query = query
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case sort = "Sort"
            case actionType = "ActionType"
            case id = "ID"
            case startTime = "StartTime"
            case limit = "Limit"
            case context = "Context"
            case query = "Query"
            case endTime = "EndTime"
        }
    }

    /// DescribeLogList返回参数结构体
    public struct DescribeLogListResponse: TCResponseModel {
        /// 返回字符串
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取日志列表(已下线，请用DescribeRumLogList)
    ///
    /// (已下线，请用DescribeRumLogList)
    @inlinable
    public func describeLogList(_ input: DescribeLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogListResponse> {
        self.client.execute(action: "DescribeLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志列表(已下线，请用DescribeRumLogList)
    ///
    /// (已下线，请用DescribeRumLogList)
    @inlinable
    public func describeLogList(_ input: DescribeLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogListResponse {
        try await self.client.execute(action: "DescribeLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志列表(已下线，请用DescribeRumLogList)
    ///
    /// (已下线，请用DescribeRumLogList)
    @inlinable
    public func describeLogList(sort: String, actionType: String, id: Int64, startTime: String? = nil, limit: Int64? = nil, context: String? = nil, query: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogListResponse> {
        self.describeLogList(.init(sort: sort, actionType: actionType, id: id, startTime: startTime, limit: limit, context: context, query: query, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志列表(已下线，请用DescribeRumLogList)
    ///
    /// (已下线，请用DescribeRumLogList)
    @inlinable
    public func describeLogList(sort: String, actionType: String, id: Int64, startTime: String? = nil, limit: Int64? = nil, context: String? = nil, query: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogListResponse {
        try await self.describeLogList(.init(sort: sort, actionType: actionType, id: id, startTime: startTime, limit: limit, context: context, query: query, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
