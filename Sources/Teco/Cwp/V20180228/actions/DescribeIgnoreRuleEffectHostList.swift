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
import TecoPaginationHelpers

extension Cwp {
    /// DescribeIgnoreRuleEffectHostList请求参数结构体
    public struct DescribeIgnoreRuleEffectHostListRequest: TCPaginatedRequest {
        /// 分页参数 最大100条
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 检测项id
        public let ruleId: UInt64

        /// 过滤条件。
        /// - AliasName- String- 主机别名
        public let filters: [Filters]?

        /// 主机标签名
        public let tagNames: [String]?

        public init(limit: UInt64, offset: UInt64, ruleId: UInt64, filters: [Filters]? = nil, tagNames: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.ruleId = ruleId
            self.filters = filters
            self.tagNames = tagNames
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case ruleId = "RuleId"
            case filters = "Filters"
            case tagNames = "TagNames"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIgnoreRuleEffectHostListResponse) -> DescribeIgnoreRuleEffectHostListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIgnoreRuleEffectHostListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), ruleId: self.ruleId, filters: self.filters, tagNames: self.tagNames)
        }
    }

    /// DescribeIgnoreRuleEffectHostList返回参数结构体
    public struct DescribeIgnoreRuleEffectHostListResponse: TCPaginatedResponse {
        /// 忽略检测项影响主机列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ignoreRuleEffectHostList: [IgnoreRuleEffectHostInfo]?

        /// 分页查询记录总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ignoreRuleEffectHostList = "IgnoreRuleEffectHostList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``IgnoreRuleEffectHostInfo`` list from the paginated response.
        public func getItems() -> [IgnoreRuleEffectHostInfo] {
            self.ignoreRuleEffectHostList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostList(_ input: DescribeIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIgnoreRuleEffectHostListResponse> {
        self.client.execute(action: "DescribeIgnoreRuleEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostList(_ input: DescribeIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreRuleEffectHostListResponse {
        try await self.client.execute(action: "DescribeIgnoreRuleEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostList(limit: UInt64, offset: UInt64, ruleId: UInt64, filters: [Filters]? = nil, tagNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIgnoreRuleEffectHostListResponse> {
        self.describeIgnoreRuleEffectHostList(.init(limit: limit, offset: offset, ruleId: ruleId, filters: filters, tagNames: tagNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostList(limit: UInt64, offset: UInt64, ruleId: UInt64, filters: [Filters]? = nil, tagNames: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreRuleEffectHostListResponse {
        try await self.describeIgnoreRuleEffectHostList(.init(limit: limit, offset: offset, ruleId: ruleId, filters: filters, tagNames: tagNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable
    public func describeIgnoreRuleEffectHostListPaginated(_ input: DescribeIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [IgnoreRuleEffectHostInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeIgnoreRuleEffectHostList, logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    @inlinable @discardableResult
    public func describeIgnoreRuleEffectHostListPaginated(_ input: DescribeIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIgnoreRuleEffectHostListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIgnoreRuleEffectHostList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项影响主机列表
    ///
    /// 根据检测项id与筛选条件查询忽略检测项影响主机列表信息
    ///
    /// - Returns: `AsyncSequence`s of ``IgnoreRuleEffectHostInfo`` and ``DescribeIgnoreRuleEffectHostListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIgnoreRuleEffectHostListPaginator(_ input: DescribeIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIgnoreRuleEffectHostListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIgnoreRuleEffectHostList, logger: logger, on: eventLoop)
    }
}
