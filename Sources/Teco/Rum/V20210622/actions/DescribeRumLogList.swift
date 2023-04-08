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

extension Rum {
    /// DescribeRumLogList请求参数结构体
    public struct DescribeRumLogListRequest: TCRequestModel {
        /// 排序方式  desc  asc（必填）
        public let orderBy: String

        /// 开始时间（必填）
        public let startTime: String

        /// 单次查询返回的原始日志条数，最大值为100（必填）
        public let limit: Int64

        /// 页数，第几页
        public let page: Int64

        /// 查询语句，参考控制台请求参数，语句长度最大为4096（必填）
        public let query: String

        /// 结束时间（必填）
        public let endTime: String

        /// 项目ID（必填）
        public let id: Int64

        public init(orderBy: String, startTime: String, limit: Int64, page: Int64, query: String, endTime: String, id: Int64) {
            self.orderBy = orderBy
            self.startTime = startTime
            self.limit = limit
            self.page = page
            self.query = query
            self.endTime = endTime
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case orderBy = "OrderBy"
            case startTime = "StartTime"
            case limit = "Limit"
            case page = "Page"
            case query = "Query"
            case endTime = "EndTime"
            case id = "ID"
        }
    }

    /// DescribeRumLogList返回参数结构体
    public struct DescribeRumLogListResponse: TCResponseModel {
        /// 返回字符串
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogList(_ input: DescribeRumLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRumLogListResponse> {
        self.client.execute(action: "DescribeRumLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogList(_ input: DescribeRumLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRumLogListResponse {
        try await self.client.execute(action: "DescribeRumLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogList(orderBy: String, startTime: String, limit: Int64, page: Int64, query: String, endTime: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRumLogListResponse> {
        self.describeRumLogList(.init(orderBy: orderBy, startTime: startTime, limit: limit, page: page, query: query, endTime: endTime, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Rum日志列表
    ///
    /// 获取项目下的日志列表（实例创建的项目下的日志列表）
    @inlinable
    public func describeRumLogList(orderBy: String, startTime: String, limit: Int64, page: Int64, query: String, endTime: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRumLogListResponse {
        try await self.describeRumLogList(.init(orderBy: orderBy, startTime: startTime, limit: limit, page: page, query: query, endTime: endTime, id: id), region: region, logger: logger, on: eventLoop)
    }
}
