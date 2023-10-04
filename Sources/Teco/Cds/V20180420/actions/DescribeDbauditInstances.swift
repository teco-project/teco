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

extension Cds {
    /// DescribeDbauditInstances请求参数结构体
    public struct DescribeDbauditInstancesRequest: TCPaginatedRequest {
        /// 查询条件地域
        public let searchRegion: String?

        /// 限制数目，默认10， 最大50
        public let limit: UInt64?

        /// 偏移量，默认1
        public let offset: UInt64?

        public init(searchRegion: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.searchRegion = searchRegion
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case searchRegion = "SearchRegion"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDbauditInstancesResponse) -> DescribeDbauditInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(searchRegion: self.searchRegion, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDbauditInstances返回参数结构体
    public struct DescribeDbauditInstancesResponse: TCPaginatedResponse {
        /// 总实例数
        public let totalCount: UInt64

        /// 数据安全审计实例信息列表
        public let cdsAuditInstanceSet: [CdsAuditInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case cdsAuditInstanceSet = "CdsAuditInstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CdsAuditInstance`` list from the paginated response.
        public func getItems() -> [CdsAuditInstance] {
            self.cdsAuditInstanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    @inlinable
    public func describeDbauditInstances(_ input: DescribeDbauditInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbauditInstancesResponse> {
        self.client.execute(action: "DescribeDbauditInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    @inlinable
    public func describeDbauditInstances(_ input: DescribeDbauditInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbauditInstancesResponse {
        try await self.client.execute(action: "DescribeDbauditInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    @inlinable
    public func describeDbauditInstances(searchRegion: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbauditInstancesResponse> {
        self.describeDbauditInstances(.init(searchRegion: searchRegion, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    @inlinable
    public func describeDbauditInstances(searchRegion: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbauditInstancesResponse {
        try await self.describeDbauditInstances(.init(searchRegion: searchRegion, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    @inlinable
    public func describeDbauditInstancesPaginated(_ input: DescribeDbauditInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CdsAuditInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeDbauditInstances, logger: logger, on: eventLoop)
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    @inlinable @discardableResult
    public func describeDbauditInstancesPaginated(_ input: DescribeDbauditInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDbauditInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDbauditInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取数据安全审计实例列表
    ///
    /// 本接口 (DescribeDbauditInstances) 用于查询数据安全审计实例列表
    ///
    /// - Returns: `AsyncSequence`s of ``CdsAuditInstance`` and ``DescribeDbauditInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDbauditInstancesPaginator(_ input: DescribeDbauditInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDbauditInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDbauditInstances, logger: logger, on: eventLoop)
    }
}
