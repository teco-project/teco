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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Youmall {
    /// DescribeShopTrafficInfo请求参数结构体
    public struct DescribeShopTrafficInfoRequest: TCPaginatedRequest {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 开始日期，格式yyyy-MM-dd
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 介绍日期，格式yyyy-MM-dd
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        public let offset: UInt64

        /// Limit:每页的数据项，最大100，超过100会被强制指定为100
        public let limit: UInt64

        public init(companyId: String, shopId: UInt64, startDate: Date, endDate: Date, offset: UInt64, limit: UInt64) {
            self.companyId = companyId
            self.shopId = shopId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeShopTrafficInfoResponse) -> DescribeShopTrafficInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeShopTrafficInfoRequest(companyId: self.companyId, shopId: self.shopId, startDate: self.startDate, endDate: self.endDate, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeShopTrafficInfo返回参数结构体
    public struct DescribeShopTrafficInfoResponse: TCPaginatedResponse {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 查询结果总数
        public let totalCount: UInt64

        /// 客流信息列表
        public let shopDayTrafficInfoSet: [ShopDayTrafficInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case totalCount = "TotalCount"
            case shopDayTrafficInfoSet = "ShopDayTrafficInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ShopDayTrafficInfo] {
            self.shopDayTrafficInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopTrafficInfo(_ input: DescribeShopTrafficInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShopTrafficInfoResponse> {
        self.client.execute(action: "DescribeShopTrafficInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopTrafficInfo(_ input: DescribeShopTrafficInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShopTrafficInfoResponse {
        try await self.client.execute(action: "DescribeShopTrafficInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopTrafficInfo(companyId: String, shopId: UInt64, startDate: Date, endDate: Date, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShopTrafficInfoResponse> {
        self.describeShopTrafficInfo(.init(companyId: companyId, shopId: shopId, startDate: startDate, endDate: endDate, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopTrafficInfo(companyId: String, shopId: UInt64, startDate: Date, endDate: Date, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShopTrafficInfoResponse {
        try await self.describeShopTrafficInfo(.init(companyId: companyId, shopId: shopId, startDate: startDate, endDate: endDate, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopTrafficInfoPaginated(_ input: DescribeShopTrafficInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ShopDayTrafficInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeShopTrafficInfo, logger: logger, on: eventLoop)
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    @inlinable @discardableResult
    public func describeShopTrafficInfoPaginated(_ input: DescribeShopTrafficInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeShopTrafficInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeShopTrafficInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取每日客流人数
    ///
    /// 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。
    ///
    /// - Returns: `AsyncSequence`s of `ShopDayTrafficInfo` and `DescribeShopTrafficInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeShopTrafficInfoPaginator(_ input: DescribeShopTrafficInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeShopTrafficInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeShopTrafficInfo, logger: logger, on: eventLoop)
    }
}
