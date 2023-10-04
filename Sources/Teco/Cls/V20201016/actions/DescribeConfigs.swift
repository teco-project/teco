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

extension Cls {
    /// DescribeConfigs请求参数结构体
    public struct DescribeConfigsRequest: TCPaginatedRequest {
        /// configName
        /// - 按照【采集配置名称】进行模糊匹配过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// configId
        /// - 按照【采集配置ID】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// topicId
        /// - 按照【日志主题】进行过滤。
        /// - 类型：String
        /// - 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0
        public let offset: Int64?

        /// 分页单页的限制数目，默认值为20，最大值100
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConfigsResponse) -> DescribeConfigsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeConfigs返回参数结构体
    public struct DescribeConfigsResponse: TCPaginatedResponse {
        /// 采集配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configs: [ConfigInfo]?

        /// 过滤到的总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configs = "Configs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ConfigInfo`` list from the paginated response.
        public func getItems() -> [ConfigInfo] {
            self.configs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取采集规则配置
    @inlinable
    public func describeConfigs(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigsResponse> {
        self.client.execute(action: "DescribeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取采集规则配置
    @inlinable
    public func describeConfigs(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigsResponse {
        try await self.client.execute(action: "DescribeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取采集规则配置
    @inlinable
    public func describeConfigs(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigsResponse> {
        self.describeConfigs(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取采集规则配置
    @inlinable
    public func describeConfigs(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigsResponse {
        try await self.describeConfigs(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取采集规则配置
    @inlinable
    public func describeConfigsPaginated(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ConfigInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigs, logger: logger, on: eventLoop)
    }

    /// 获取采集规则配置
    @inlinable @discardableResult
    public func describeConfigsPaginated(_ input: DescribeConfigsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取采集规则配置
    ///
    /// - Returns: `AsyncSequence`s of ``ConfigInfo`` and ``DescribeConfigsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigsPaginator(_ input: DescribeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigs, logger: logger, on: eventLoop)
    }
}
