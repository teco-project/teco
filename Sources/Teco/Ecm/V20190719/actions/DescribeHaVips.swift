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

import TecoCore
import TecoPaginationHelpers

extension Ecm {
    /// DescribeHaVips请求参数结构体
    public struct DescribeHaVipsRequest: TCPaginatedRequest {
        /// HAVIP数组，HAVIP唯一ID，形如：havip-9o233uri。
        public let haVipIds: [String]?

        /// 过滤条件，参数不支持同时指定HaVipIds和Filters。
        /// havip-id - String - HAVIP唯一ID，形如：havip-9o233uri。
        /// havip-name - String - HAVIP名称。
        /// vpc-id - String - HAVIP所在私有网络ID。
        /// subnet-id - String - HAVIP所在子网ID。
        public let filters: [Filter]?

        /// 偏移量，默认值是0。
        public let offset: Int64?

        /// 返回数量，默认值是20，最大是100。
        public let limit: Int64?

        /// Ecm 区域，不填代表全部区域。
        public let ecmRegion: String?

        public init(haVipIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, ecmRegion: String? = nil) {
            self.haVipIds = haVipIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case haVipIds = "HaVipIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case ecmRegion = "EcmRegion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHaVipsResponse) -> DescribeHaVipsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHaVipsRequest(haVipIds: self.haVipIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, ecmRegion: self.ecmRegion)
        }
    }

    /// DescribeHaVips返回参数结构体
    public struct DescribeHaVipsResponse: TCPaginatedResponse {
        /// 符合条件的对象数。
        public let totalCount: Int64

        /// HAVIP对象数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let haVipSet: [HaVip]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case haVipSet = "HaVipSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HaVip] {
            self.haVipSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHaVipsResponse> {
        self.client.execute(action: "DescribeHaVips", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHaVipsResponse {
        try await self.client.execute(action: "DescribeHaVips", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(haVipIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHaVipsResponse> {
        self.describeHaVips(.init(haVipIds: haVipIds, filters: filters, offset: offset, limit: limit, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVips(haVipIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHaVipsResponse {
        try await self.describeHaVips(.init(haVipIds: haVipIds, filters: filters, offset: offset, limit: limit, ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable
    public func describeHaVipsPaginated(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [HaVip])> {
        self.client.paginate(input: input, region: region, command: self.describeHaVips, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    @inlinable @discardableResult
    public func describeHaVipsPaginated(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHaVipsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHaVips, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询HAVIP列表
    ///
    /// 用于查询高可用虚拟IP（HAVIP）列表。
    ///
    /// - Returns: `AsyncSequence`s of `HaVip` and `DescribeHaVipsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHaVipsPaginator(_ input: DescribeHaVipsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHaVipsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHaVips, logger: logger, on: eventLoop)
    }
}
