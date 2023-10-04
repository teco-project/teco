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

extension Lighthouse {
    /// DescribeBundles请求参数结构体
    public struct DescribeBundlesRequest: TCPaginatedRequest {
        /// 套餐 ID 列表。
        public let bundleIds: [String]?

        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?

        /// 过滤器列表。
        /// - bundle-id
        /// 按照【套餐 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - support-platform-type
        /// 按照【系统类型】进行过滤。
        /// 取值： LINUX_UNIX(Linux/Unix系统) ;WINDOWS(Windows 系统)
        /// 类型：String
        /// 必选：否
        /// - bundle-type
        /// 按照 【套餐类型进行过滤】。
        /// 取值：GENERAL_BUNDLE (通用型套餐); STORAGE_BUNDLE(存储型套餐);ENTERPRISE_BUNDLE( 企业型套餐);EXCLUSIVE_BUNDLE(专属型套餐);BEFAST_BUNDLE(蜂驰型套餐);STARTER_BUNDLE(入门型套餐);CAREFREE_BUNDLE(无忧型套餐);
        /// 类型：String
        /// 必选：否
        /// - bundle-state
        /// 按照【套餐状态】进行过滤。
        /// 取值: ONLINE(在线); OFFLINE(下线);
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 BundleIds 和 Filters。
        public let filters: [Filter]?

        /// 可用区列表。默认为全部可用区。
        public let zones: [String]?

        public init(bundleIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, zones: [String]? = nil) {
            self.bundleIds = bundleIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.zones = zones
        }

        enum CodingKeys: String, CodingKey {
            case bundleIds = "BundleIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case zones = "Zones"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBundlesResponse) -> DescribeBundlesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(bundleIds: self.bundleIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, zones: self.zones)
        }
    }

    /// DescribeBundles返回参数结构体
    public struct DescribeBundlesResponse: TCPaginatedResponse {
        /// 套餐详细信息列表。
        public let bundleSet: [Bundle]

        /// 符合要求的套餐总数，用于分页展示。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bundleSet = "BundleSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Bundle`` list from the paginated response.
        public func getItems() -> [Bundle] {
            self.bundleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    @inlinable
    public func describeBundles(_ input: DescribeBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBundlesResponse> {
        self.client.execute(action: "DescribeBundles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    @inlinable
    public func describeBundles(_ input: DescribeBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBundlesResponse {
        try await self.client.execute(action: "DescribeBundles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    @inlinable
    public func describeBundles(bundleIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, zones: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBundlesResponse> {
        self.describeBundles(.init(bundleIds: bundleIds, offset: offset, limit: limit, filters: filters, zones: zones), region: region, logger: logger, on: eventLoop)
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    @inlinable
    public func describeBundles(bundleIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, zones: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBundlesResponse {
        try await self.describeBundles(.init(bundleIds: bundleIds, offset: offset, limit: limit, filters: filters, zones: zones), region: region, logger: logger, on: eventLoop)
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    @inlinable
    public func describeBundlesPaginated(_ input: DescribeBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Bundle])> {
        self.client.paginate(input: input, region: region, command: self.describeBundles, logger: logger, on: eventLoop)
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    @inlinable @discardableResult
    public func describeBundlesPaginated(_ input: DescribeBundlesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBundlesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBundles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询套餐
    ///
    /// 本接口（DescribeBundles）用于查询套餐信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Bundle`` and ``DescribeBundlesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBundlesPaginator(_ input: DescribeBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBundlesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBundles, logger: logger, on: eventLoop)
    }
}
