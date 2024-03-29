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

extension Cwp {
    /// DescribeLicenseList请求参数结构体
    public struct DescribeLicenseListRequest: TCPaginatedRequest {
        /// 多个条件筛选时 LicenseStatus,DeadlineStatus,ResourceId,Keywords 取交集
        /// - LicenseStatus 授权状态信息,0 未使用,1 部分使用, 2 已用完, 3 不可用  4 可使用
        /// - BuyTime 购买时间
        /// - LicenseType  授权类型, 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        /// - DeadlineStatus 到期状态 NotExpired 未过期, Expire 已过期(包含已销毁) NearExpiry 即将到期
        /// - ResourceId 资源ID
        /// - Keywords IP筛选
        /// - PayMode 付费模式 0 按量计费 , 1 包年包月
        /// - OrderStatus 订单状态 1 正常 2 隔离 3 销毁
        public let filters: [Filters]?

        /// 限制条数,默认10.
        public let limit: UInt64?

        /// 偏移量,默认0.
        public let offset: UInt64?

        /// 标签筛选,平台标签能力,这里传入 标签键,标签值作为一个对象
        public let tags: [Tags]?

        public init(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, tags: [Tags]? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case tags = "Tags"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLicenseListResponse) -> DescribeLicenseListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), tags: self.tags)
        }
    }

    /// DescribeLicenseList返回参数结构体
    public struct DescribeLicenseListResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 授权数列表信息
        public let list: [LicenseDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LicenseDetail`` list from the paginated response.
        public func getItems() -> [LicenseDetail] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    @inlinable
    public func describeLicenseList(_ input: DescribeLicenseListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseListResponse> {
        self.client.execute(action: "DescribeLicenseList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    @inlinable
    public func describeLicenseList(_ input: DescribeLicenseListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseListResponse {
        try await self.client.execute(action: "DescribeLicenseList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    @inlinable
    public func describeLicenseList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, tags: [Tags]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseListResponse> {
        self.describeLicenseList(.init(filters: filters, limit: limit, offset: offset, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    @inlinable
    public func describeLicenseList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, tags: [Tags]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseListResponse {
        try await self.describeLicenseList(.init(filters: filters, limit: limit, offset: offset, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    @inlinable
    public func describeLicenseListPaginated(_ input: DescribeLicenseListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LicenseDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeLicenseList, logger: logger, on: eventLoop)
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    @inlinable @discardableResult
    public func describeLicenseListPaginated(_ input: DescribeLicenseListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLicenseListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLicenseList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取授权订单列表
    ///
    /// 获取用户所有授权订单信息
    ///
    /// - Returns: `AsyncSequence`s of ``LicenseDetail`` and ``DescribeLicenseListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLicenseListPaginator(_ input: DescribeLicenseListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLicenseListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLicenseList, logger: logger, on: eventLoop)
    }
}
