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

extension Tsf {
    /// DescribePublicConfigSummary请求参数结构体
    public struct DescribePublicConfigSummaryRequest: TCPaginatedRequest {
        /// 查询关键字，模糊查询：配置项名称，不传入时查询全量
        public let searchWord: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 每页条数，默认为20
        public let limit: Int64?

        /// 按时间排序：creation_time；按名称排序：config_name
        public let orderBy: String?

        /// 升序传 0，降序传 1
        public let orderType: Int64?

        public let configTagList: [String]?

        public let disableProgramAuthCheck: Bool?

        public let configIdList: [String]?

        public init(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderType: Int64? = nil, configTagList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, configIdList: [String]? = nil) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderType = orderType
            self.configTagList = configTagList
            self.disableProgramAuthCheck = disableProgramAuthCheck
            self.configIdList = configIdList
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case configTagList = "ConfigTagList"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
            case configIdList = "ConfigIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePublicConfigSummaryResponse) -> DescribePublicConfigSummaryRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, orderType: self.orderType, configTagList: self.configTagList, disableProgramAuthCheck: self.disableProgramAuthCheck, configIdList: self.configIdList)
        }
    }

    /// DescribePublicConfigSummary返回参数结构体
    public struct DescribePublicConfigSummaryResponse: TCPaginatedResponse {
        /// 分页的全局配置统计信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Config`` list from the paginated response.
        public func getItems() -> [Config] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询公共配置汇总列表
    @inlinable
    public func describePublicConfigSummary(_ input: DescribePublicConfigSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicConfigSummaryResponse> {
        self.client.execute(action: "DescribePublicConfigSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询公共配置汇总列表
    @inlinable
    public func describePublicConfigSummary(_ input: DescribePublicConfigSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicConfigSummaryResponse {
        try await self.client.execute(action: "DescribePublicConfigSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询公共配置汇总列表
    @inlinable
    public func describePublicConfigSummary(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderType: Int64? = nil, configTagList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, configIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicConfigSummaryResponse> {
        self.describePublicConfigSummary(.init(searchWord: searchWord, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, configTagList: configTagList, disableProgramAuthCheck: disableProgramAuthCheck, configIdList: configIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 查询公共配置汇总列表
    @inlinable
    public func describePublicConfigSummary(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderType: Int64? = nil, configTagList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, configIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicConfigSummaryResponse {
        try await self.describePublicConfigSummary(.init(searchWord: searchWord, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, configTagList: configTagList, disableProgramAuthCheck: disableProgramAuthCheck, configIdList: configIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 查询公共配置汇总列表
    @inlinable
    public func describePublicConfigSummaryPaginated(_ input: DescribePublicConfigSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Config])> {
        self.client.paginate(input: input, region: region, command: self.describePublicConfigSummary, logger: logger, on: eventLoop)
    }

    /// 查询公共配置汇总列表
    @inlinable @discardableResult
    public func describePublicConfigSummaryPaginated(_ input: DescribePublicConfigSummaryRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePublicConfigSummaryResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePublicConfigSummary, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询公共配置汇总列表
    ///
    /// - Returns: `AsyncSequence`s of ``Config`` and ``DescribePublicConfigSummaryResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePublicConfigSummaryPaginator(_ input: DescribePublicConfigSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePublicConfigSummaryRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePublicConfigSummary, logger: logger, on: eventLoop)
    }
}
