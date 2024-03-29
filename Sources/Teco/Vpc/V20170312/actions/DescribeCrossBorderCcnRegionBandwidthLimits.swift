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
    /// DescribeCrossBorderCcnRegionBandwidthLimits请求参数结构体
    public struct DescribeCrossBorderCcnRegionBandwidthLimitsRequest: TCPaginatedRequest {
        /// 过滤条件，目前`value`值个数只支持一个，可支持的字段有：
        /// - `source-region` 源地域，值形如：`["ap-guangzhou"]`
        /// - `destination-region` 目的地域，值形如：`["ap-shanghai"]`
        /// - `ccn-ids` 云联网ID数组，值形如：`["ccn-12345678"]`
        /// - `user-account-id` 用户账号ID，值形如`["12345678"]`
        public let filters: [Filter]?

        /// 偏移量，默认0。
        public let offset: UInt64?

        /// 单页返回数据量可选值0到100之间的整数，默认20。
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
        public func makeNextRequest(with response: DescribeCrossBorderCcnRegionBandwidthLimitsResponse) -> DescribeCrossBorderCcnRegionBandwidthLimitsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCrossBorderCcnRegionBandwidthLimits返回参数结构体
    public struct DescribeCrossBorderCcnRegionBandwidthLimitsResponse: TCPaginatedResponse {
        /// 符合条件的对象总数。
        public let totalCount: UInt64

        /// 云联网地域间限速带宽实例的信息。
        public let ccnBandwidthSet: [CcnBandwidth]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ccnBandwidthSet = "CcnBandwidthSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CcnBandwidth`` list from the paginated response.
        public func getItems() -> [CcnBandwidth] {
            self.ccnBandwidthSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable
    public func describeCrossBorderCcnRegionBandwidthLimits(_ input: DescribeCrossBorderCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderCcnRegionBandwidthLimitsResponse> {
        self.client.execute(action: "DescribeCrossBorderCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable
    public func describeCrossBorderCcnRegionBandwidthLimits(_ input: DescribeCrossBorderCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderCcnRegionBandwidthLimitsResponse {
        try await self.client.execute(action: "DescribeCrossBorderCcnRegionBandwidthLimits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable
    public func describeCrossBorderCcnRegionBandwidthLimits(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderCcnRegionBandwidthLimitsResponse> {
        self.describeCrossBorderCcnRegionBandwidthLimits(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable
    public func describeCrossBorderCcnRegionBandwidthLimits(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderCcnRegionBandwidthLimitsResponse {
        try await self.describeCrossBorderCcnRegionBandwidthLimits(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable
    public func describeCrossBorderCcnRegionBandwidthLimitsPaginated(_ input: DescribeCrossBorderCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CcnBandwidth])> {
        self.client.paginate(input: input, region: region, command: self.describeCrossBorderCcnRegionBandwidthLimits, logger: logger, on: eventLoop)
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func describeCrossBorderCcnRegionBandwidthLimitsPaginated(_ input: DescribeCrossBorderCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCrossBorderCcnRegionBandwidthLimitsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCrossBorderCcnRegionBandwidthLimits, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云联网跨境限速实例
    ///
    /// 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
    /// 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
    /// 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统
    ///
    /// - Returns: `AsyncSequence`s of ``CcnBandwidth`` and ``DescribeCrossBorderCcnRegionBandwidthLimitsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCrossBorderCcnRegionBandwidthLimitsPaginator(_ input: DescribeCrossBorderCcnRegionBandwidthLimitsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCrossBorderCcnRegionBandwidthLimitsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCrossBorderCcnRegionBandwidthLimits, logger: logger, on: eventLoop)
    }
}
