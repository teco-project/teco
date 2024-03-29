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
    /// DescribeConfigExtras请求参数结构体
    public struct DescribeConfigExtrasRequest: TCPaginatedRequest {
        /// 支持的key： topicId,name, configExtraId, machineGroupId
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0
        public let offset: UInt64?

        /// 分页单页的限制数目，默认值为20，最大值100
        public let limit: UInt64?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
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
        public func makeNextRequest(with response: DescribeConfigExtrasResponse) -> DescribeConfigExtrasRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeConfigExtras返回参数结构体
    public struct DescribeConfigExtrasResponse: TCPaginatedResponse {
        /// 采集配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configs: [ConfigExtraInfo]?

        /// 过滤到的总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configs = "Configs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ConfigExtraInfo`` list from the paginated response.
        public func getItems() -> [ConfigExtraInfo] {
            self.configs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func describeConfigExtras(_ input: DescribeConfigExtrasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigExtrasResponse> {
        self.client.execute(action: "DescribeConfigExtras", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func describeConfigExtras(_ input: DescribeConfigExtrasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigExtrasResponse {
        try await self.client.execute(action: "DescribeConfigExtras", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func describeConfigExtras(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigExtrasResponse> {
        self.describeConfigExtras(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func describeConfigExtras(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigExtrasResponse {
        try await self.describeConfigExtras(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable
    public func describeConfigExtrasPaginated(_ input: DescribeConfigExtrasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ConfigExtraInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigExtras, logger: logger, on: eventLoop)
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable @discardableResult
    public func describeConfigExtrasPaginated(_ input: DescribeConfigExtrasRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigExtrasResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigExtras, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取特殊采集配置
    ///
    /// 本接口用于获取特殊采集配置，特殊采集配置应用于自建K8S环境的采集Agent
    ///
    /// - Returns: `AsyncSequence`s of ``ConfigExtraInfo`` and ``DescribeConfigExtrasResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigExtrasPaginator(_ input: DescribeConfigExtrasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigExtrasRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigExtras, logger: logger, on: eventLoop)
    }
}
