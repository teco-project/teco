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

extension Tat {
    /// DescribeInvokers请求参数结构体
    public struct DescribeInvokersRequest: TCPaginatedRequest {
        /// 执行器ID列表。
        public let invokerIds: [String]?

        /// 过滤条件：
        ///
        /// - invoker-id - String - 是否必填：否 - （过滤条件）按执行器ID过滤。
        /// - command-id - String - 是否必填：否 - （过滤条件）按命令ID过滤。
        /// - type - String - 是否必填：否 - （过滤条件）按执行器类型过滤。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(invokerIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.invokerIds = invokerIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case invokerIds = "InvokerIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInvokersResponse) -> DescribeInvokersRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(invokerIds: self.invokerIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeInvokers返回参数结构体
    public struct DescribeInvokersResponse: TCPaginatedResponse {
        /// 满足条件的执行器数量。
        public let totalCount: UInt64

        /// 执行器信息。
        public let invokerSet: [Invoker]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case invokerSet = "InvokerSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Invoker`` list from the paginated response.
        public func getItems() -> [Invoker] {
            self.invokerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokers(_ input: DescribeInvokersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvokersResponse> {
        self.client.execute(action: "DescribeInvokers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokers(_ input: DescribeInvokersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvokersResponse {
        try await self.client.execute(action: "DescribeInvokers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokers(invokerIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvokersResponse> {
        self.describeInvokers(.init(invokerIds: invokerIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokers(invokerIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvokersResponse {
        try await self.describeInvokers(.init(invokerIds: invokerIds, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokersPaginated(_ input: DescribeInvokersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Invoker])> {
        self.client.paginate(input: input, region: region, command: self.describeInvokers, logger: logger, on: eventLoop)
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable @discardableResult
    public func describeInvokersPaginated(_ input: DescribeInvokersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInvokersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInvokers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Invoker`` and ``DescribeInvokersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInvokersPaginator(_ input: DescribeInvokersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInvokersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInvokers, logger: logger, on: eventLoop)
    }
}
