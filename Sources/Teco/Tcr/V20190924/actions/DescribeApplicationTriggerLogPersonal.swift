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

extension Tcr {
    /// DescribeApplicationTriggerLogPersonal请求参数结构体
    public struct DescribeApplicationTriggerLogPersonalRequest: TCPaginatedRequest {
        /// 仓库名称
        public let repoName: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回最大数量，默认 20, 最大值 100
        public let limit: Int64?

        /// 升序或降序
        public let order: String?

        /// 按某列排序
        public let orderBy: String?

        public init(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderBy: String? = nil) {
            self.repoName = repoName
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderBy = orderBy
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderBy = "OrderBy"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApplicationTriggerLogPersonalResponse) -> DescribeApplicationTriggerLogPersonalRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(repoName: self.repoName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, order: self.order, orderBy: self.orderBy)
        }
    }

    /// DescribeApplicationTriggerLogPersonal返回参数结构体
    public struct DescribeApplicationTriggerLogPersonalResponse: TCPaginatedResponse {
        /// 触发日志返回值
        public let data: DescribeApplicationTriggerLogPersonalResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TriggerLogResp`` list from the paginated response.
        public func getItems() -> [TriggerLogResp] {
            self.data.logInfo ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationTriggerLogPersonalResponse> {
        self.client.execute(action: "DescribeApplicationTriggerLogPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationTriggerLogPersonalResponse {
        try await self.client.execute(action: "DescribeApplicationTriggerLogPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationTriggerLogPersonalResponse> {
        self.describeApplicationTriggerLogPersonal(.init(repoName: repoName, offset: offset, limit: limit, order: order, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonal(repoName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, order: String? = nil, orderBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationTriggerLogPersonalResponse {
        try await self.describeApplicationTriggerLogPersonal(.init(repoName: repoName, offset: offset, limit: limit, order: order, orderBy: orderBy), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable
    public func describeApplicationTriggerLogPersonalPaginated(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TriggerLogResp])> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationTriggerLogPersonal, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    @inlinable @discardableResult
    public func describeApplicationTriggerLogPersonalPaginated(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationTriggerLogPersonalResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationTriggerLogPersonal, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器触发日志
    ///
    /// 用于查询应用更新触发器触发日志
    ///
    /// - Returns: `AsyncSequence`s of ``TriggerLogResp`` and ``DescribeApplicationTriggerLogPersonalResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationTriggerLogPersonalPaginator(_ input: DescribeApplicationTriggerLogPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationTriggerLogPersonalRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplicationTriggerLogPersonal, logger: logger, on: eventLoop)
    }
}
