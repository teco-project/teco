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
import TecoPaginationHelpers

extension Cfw {
    /// DescribeBlockIgnoreList请求参数结构体
    public struct DescribeBlockIgnoreListRequest: TCPaginatedRequest {
        /// 单页数量
        public let limit: Int64

        /// 页偏移量
        public let offset: Int64

        /// 方向：1互联网入站，0互联网出站，3内网，空 全部方向
        public let direction: String

        /// 规则类型：1封禁，2放通
        public let ruleType: UInt64

        /// 排序列：EndTime结束时间，StartTime开始时间，MatchTimes命中次数
        public let order: String

        /// 排序类型：desc降序，asc正序
        public let by: String

        /// 搜索参数，json格式字符串，空则传"{}"，域名：domain，危险等级：level，放通原因：ignore_reason，安全事件来源：rule_source，地理位置：address，模糊搜索：common
        public let searchValue: String?

        public init(limit: Int64, offset: Int64, direction: String, ruleType: UInt64, order: String, by: String, searchValue: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.direction = direction
            self.ruleType = ruleType
            self.order = order
            self.by = by
            self.searchValue = searchValue
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case direction = "Direction"
            case ruleType = "RuleType"
            case order = "Order"
            case by = "By"
            case searchValue = "SearchValue"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBlockIgnoreListResponse) -> DescribeBlockIgnoreListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBlockIgnoreListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), direction: self.direction, ruleType: self.ruleType, order: self.order, by: self.by, searchValue: self.searchValue)
        }
    }

    /// DescribeBlockIgnoreList返回参数结构体
    public struct DescribeBlockIgnoreListResponse: TCPaginatedResponse {
        /// 列表数据
        public let data: [BlockIgnoreRule]

        /// 查询结果总数，用于分页
        public let total: Int64

        /// 状态值，0：查询成功，非0：查询失败
        public let returnCode: Int64

        /// 状态信息，success：查询成功，fail：查询失败
        public let returnMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BlockIgnoreRule] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockIgnoreListResponse> {
        self.client.execute(action: "DescribeBlockIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockIgnoreListResponse {
        try await self.client.execute(action: "DescribeBlockIgnoreList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(limit: Int64, offset: Int64, direction: String, ruleType: UInt64, order: String, by: String, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockIgnoreListResponse> {
        self.describeBlockIgnoreList(.init(limit: limit, offset: offset, direction: direction, ruleType: ruleType, order: order, by: by, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreList(limit: Int64, offset: Int64, direction: String, ruleType: UInt64, order: String, by: String, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockIgnoreListResponse {
        try await self.describeBlockIgnoreList(.init(limit: limit, offset: offset, direction: direction, ruleType: ruleType, order: order, by: by, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    @inlinable
    public func describeBlockIgnoreListPaginated(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BlockIgnoreRule])> {
        self.client.paginate(input: input, region: region, command: self.describeBlockIgnoreList, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    @inlinable @discardableResult
    public func describeBlockIgnoreListPaginated(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBlockIgnoreListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBlockIgnoreList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询入侵防御放通封禁列表
    ///
    /// - Returns: `AsyncSequence`s of `BlockIgnoreRule` and `DescribeBlockIgnoreListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBlockIgnoreListPaginator(_ input: DescribeBlockIgnoreListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBlockIgnoreListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBlockIgnoreList, logger: logger, on: eventLoop)
    }
}
