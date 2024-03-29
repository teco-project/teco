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
    /// DescribeHaVips请求参数结构体
    public struct DescribeHaVipsRequest: TCPaginatedRequest {
        /// `HAVIP`唯一`ID`，形如：`havip-9o233uri`。
        public let haVipIds: [String]?

        /// 过滤条件，参数不支持同时指定`HaVipIds`和`Filters`。
        /// - havip-id - String - `HAVIP`唯一`ID`，形如：`havip-9o233uri`。
        /// - havip-name - String - `HAVIP`名称。
        /// - vpc-id - String - `HAVIP`所在私有网络`ID`。
        /// - subnet-id - String - `HAVIP`所在子网`ID`。
        /// - vip - String - `HAVIP`的地址`VIP`。
        /// - address-ip - String - `HAVIP`绑定的弹性公网`IP`。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(haVipIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.haVipIds = haVipIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case haVipIds = "HaVipIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHaVipsResponse) -> DescribeHaVipsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(haVipIds: self.haVipIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeHaVips返回参数结构体
    public struct DescribeHaVipsResponse: TCPaginatedResponse {
        /// 符合条件的对象数。
        public let totalCount: UInt64

        /// `HAVIP`对象数组。
        public let haVipSet: [HaVip]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case haVipSet = "HaVipSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``HaVip`` list from the paginated response.
        public func getItems() -> [HaVip] {
            self.haVipSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHaVipsResponse> {
        self.client.execute(action: "DescribeHaVips", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHaVipsResponse {
        try await self.client.execute(action: "DescribeHaVips", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(haVipIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHaVipsResponse> {
        self.describeHaVips(.init(haVipIds: haVipIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(haVipIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHaVipsResponse {
        try await self.describeHaVips(.init(haVipIds: haVipIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVipsPaginated(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HaVip])> {
        self.client.paginate(input: input, region: region, command: self.describeHaVips, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable @discardableResult
    public func describeHaVipsPaginated(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHaVipsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHaVips, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。
    ///
    /// - Returns: `AsyncSequence`s of ``HaVip`` and ``DescribeHaVipsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHaVipsPaginator(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHaVipsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHaVips, logger: logger, on: eventLoop)
    }
}
