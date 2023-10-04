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

extension Vpc {
    /// DescribeCcns请求参数结构体
    public struct DescribeCcnsRequest: TCPaginatedRequest {
        /// CCN实例ID。形如：ccn-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定CcnIds和Filters。
        public let ccnIds: [String]?

        /// 过滤条件，参数不支持同时指定CcnIds和Filters。
        /// - ccn-id - String - （过滤条件）CCN唯一ID，形如：`ccn-f49l6u0z`。
        /// - ccn-name - String - （过滤条件）CCN名称。
        /// - ccn-description - String - （过滤条件）CCN描述。
        /// - state - String - （过滤条件）实例状态， 'ISOLATED': 隔离中（欠费停服），'AVAILABLE'：运行中。
        /// - tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。
        /// - tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例：查询绑定了标签的CCN列表。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        /// 排序字段。支持：`CcnId` `CcnName` `CreateTime` `State` `QosLevel`。默认值: `CreateTime`
        public let orderField: String?

        /// 排序方法。升序：`ASC`，倒序：`DESC`。默认值：`ASC`
        public let orderDirection: String?

        public init(ccnIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.ccnIds = ccnIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case ccnIds = "CcnIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCcnsResponse) -> DescribeCcnsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(ccnIds: self.ccnIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeCcns返回参数结构体
    public struct DescribeCcnsResponse: TCPaginatedResponse {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// CCN对象。
        public let ccnSet: [CCN]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ccnSet = "CcnSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CCN`` list from the paginated response.
        public func getItems() -> [CCN] {
            self.ccnSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcns(_ input: DescribeCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnsResponse> {
        self.client.execute(action: "DescribeCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcns(_ input: DescribeCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnsResponse {
        try await self.client.execute(action: "DescribeCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcns(ccnIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCcnsResponse> {
        self.describeCcns(.init(ccnIds: ccnIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcns(ccnIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCcnsResponse {
        try await self.describeCcns(.init(ccnIds: ccnIds, filters: filters, offset: offset, limit: limit, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable
    public func describeCcnsPaginated(_ input: DescribeCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CCN])> {
        self.client.paginate(input: input, region: region, command: self.describeCcns, logger: logger, on: eventLoop)
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    @inlinable @discardableResult
    public func describeCcnsPaginated(_ input: DescribeCcnsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCcnsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCcns, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询CCN列表
    ///
    /// 本接口（DescribeCcns）用于查询云联网（CCN）列表。
    ///
    /// - Returns: `AsyncSequence`s of ``CCN`` and ``DescribeCcnsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCcnsPaginator(_ input: DescribeCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCcnsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCcns, logger: logger, on: eventLoop)
    }
}
