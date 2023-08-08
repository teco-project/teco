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

extension Vpc {
    /// DescribeCcnAttachedInstances请求参数结构体
    public struct DescribeCcnAttachedInstancesRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        /// 过滤条件：
        /// <li>ccn-id - String -（过滤条件）CCN实例ID。</li>
        /// <li>instance-type - String -（过滤条件）关联实例类型。</li>
        /// <li>instance-region - String -（过滤条件）关联实例所属地域。</li>
        /// <li>instance-id - String -（过滤条件）关联实例ID。</li>
        public let filters: [Filter]?

        /// 云联网实例ID
        public let ccnId: String?

        /// 排序字段。支持：`CcnId` `InstanceType` `InstanceId` `InstanceName` `InstanceRegion` `AttachedTime` `State`。默认值：`AttachedTime`
        public let orderField: String?

        /// 排序方法。升序：`ASC`，倒序：`DESC`。默认值：`ASC`
        public let orderDirection: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, ccnId: String? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.ccnId = ccnId
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case ccnId = "CcnId"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCcnAttachedInstancesResponse) -> DescribeCcnAttachedInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCcnAttachedInstancesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, ccnId: self.ccnId, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeCcnAttachedInstances返回参数结构体
    public struct DescribeCcnAttachedInstancesResponse: TCPaginatedResponse {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// 关联实例列表。
        public let instanceSet: [CcnAttachedInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CcnAttachedInstance] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    @inlinable
    public func describeCcnAttachedInstances(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnAttachedInstancesResponse> {
        self.client.execute(action: "DescribeCcnAttachedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    @inlinable
    public func describeCcnAttachedInstances(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnAttachedInstancesResponse {
        try await self.client.execute(action: "DescribeCcnAttachedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    @inlinable
    public func describeCcnAttachedInstances(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, ccnId: String? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnAttachedInstancesResponse> {
        self.describeCcnAttachedInstances(.init(offset: offset, limit: limit, filters: filters, ccnId: ccnId, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    @inlinable
    public func describeCcnAttachedInstances(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, ccnId: String? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnAttachedInstancesResponse {
        try await self.describeCcnAttachedInstances(.init(offset: offset, limit: limit, filters: filters, ccnId: ccnId, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    @inlinable
    public func describeCcnAttachedInstancesPaginated(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CcnAttachedInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeCcnAttachedInstances, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    @inlinable @discardableResult
    public func describeCcnAttachedInstancesPaginated(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCcnAttachedInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCcnAttachedInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云联网关联实例列表
    ///
    /// 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。
    ///
    /// - Returns: `AsyncSequence`s of `CcnAttachedInstance` and `DescribeCcnAttachedInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCcnAttachedInstancesPaginator(_ input: DescribeCcnAttachedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCcnAttachedInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCcnAttachedInstances, logger: logger, on: eventLoop)
    }
}
