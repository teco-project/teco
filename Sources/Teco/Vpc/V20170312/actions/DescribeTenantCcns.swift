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
    /// DescribeTenantCcns请求参数结构体
    public struct DescribeTenantCcnsRequest: TCPaginatedRequest {
        /// 过滤条件，目前`value`值个数只支持一个，允许可支持的字段有：
        /// - `ccn-ids` 云联网ID数组，值形如：`["ccn-12345678"]`
        /// - `user-account-id` 用户账号ID，值形如：`["12345678"]`
        /// - `is-security-lock` 是否锁定，值形如：`["true"]`
        public let filters: [Filter]?

        /// 偏移量，默认0。
        public let offset: UInt64?

        /// 单页返回数据量，可选值0到100之间的整数，默认20。
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
        public func makeNextRequest(with response: DescribeTenantCcnsResponse) -> DescribeTenantCcnsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTenantCcns返回参数结构体
    public struct DescribeTenantCcnsResponse: TCPaginatedResponse {
        /// 云联网（CCN）对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ccnSet: [CcnInstanceInfo]?

        /// 符合条件的对象总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ccnSet = "CcnSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CcnInstanceInfo`` list from the paginated response.
        public func getItems() -> [CcnInstanceInfo] {
            self.ccnSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    @inlinable
    public func describeTenantCcns(_ input: DescribeTenantCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTenantCcnsResponse> {
        self.client.execute(action: "DescribeTenantCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    @inlinable
    public func describeTenantCcns(_ input: DescribeTenantCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTenantCcnsResponse {
        try await self.client.execute(action: "DescribeTenantCcns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    @inlinable
    public func describeTenantCcns(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTenantCcnsResponse> {
        self.describeTenantCcns(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    @inlinable
    public func describeTenantCcns(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTenantCcnsResponse {
        try await self.describeTenantCcns(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    @inlinable
    public func describeTenantCcnsPaginated(_ input: DescribeTenantCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CcnInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTenantCcns, logger: logger, on: eventLoop)
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    @inlinable @discardableResult
    public func describeTenantCcnsPaginated(_ input: DescribeTenantCcnsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTenantCcnsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTenantCcns, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询租户云联网实例
    ///
    /// 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
    /// 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
    /// 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统
    ///
    /// - Returns: `AsyncSequence`s of ``CcnInstanceInfo`` and ``DescribeTenantCcnsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTenantCcnsPaginator(_ input: DescribeTenantCcnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTenantCcnsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTenantCcns, logger: logger, on: eventLoop)
    }
}
