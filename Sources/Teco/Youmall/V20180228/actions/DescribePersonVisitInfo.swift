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

extension Youmall {
    /// DescribePersonVisitInfo请求参数结构体
    public struct DescribePersonVisitInfoRequest: TCPaginatedRequest {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        public let offset: UInt64

        /// Limit:每页的数据项，最大100，超过100会被强制指定为100
        public let limit: UInt64

        /// 开始日期，格式yyyy-MM-dd，已废弃，请使用StartDateTime
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date?

        /// 结束日期，格式yyyy-MM-dd，已废弃，请使用EndDateTime
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date?

        /// 图片url过期时间：在当前时间+PictureExpires秒后，图片url无法继续正常访问；单位s；默认值1*24*60*60（1天）
        public let pictureExpires: UInt64?

        /// 开始时间，格式yyyy-MM-dd HH:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startDateTime: Date?

        /// 结束时间，格式yyyy-MM-dd HH:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endDateTime: Date?

        public init(companyId: String, shopId: UInt64, offset: UInt64, limit: UInt64, startDate: Date? = nil, endDate: Date? = nil, pictureExpires: UInt64? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil) {
            self.companyId = companyId
            self.shopId = shopId
            self.offset = offset
            self.limit = limit
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.pictureExpires = pictureExpires
            self._startDateTime = .init(wrappedValue: startDateTime)
            self._endDateTime = .init(wrappedValue: endDateTime)
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case offset = "Offset"
            case limit = "Limit"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case pictureExpires = "PictureExpires"
            case startDateTime = "StartDateTime"
            case endDateTime = "EndDateTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePersonVisitInfoResponse) -> DescribePersonVisitInfoRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(companyId: self.companyId, shopId: self.shopId, offset: self.offset + .init(response.getItems().count), limit: self.limit, startDate: self.startDate, endDate: self.endDate, pictureExpires: self.pictureExpires, startDateTime: self.startDateTime, endDateTime: self.endDateTime)
        }
    }

    /// DescribePersonVisitInfo返回参数结构体
    public struct DescribePersonVisitInfoResponse: TCPaginatedResponse {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 总数
        public let totalCount: UInt64

        /// 用户到访明细
        public let personVisitInfoSet: [PersonVisitInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case totalCount = "TotalCount"
            case personVisitInfoSet = "PersonVisitInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PersonVisitInfo`` list from the paginated response.
        public func getItems() -> [PersonVisitInfo] {
            self.personVisitInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfo(_ input: DescribePersonVisitInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonVisitInfoResponse> {
        self.client.execute(action: "DescribePersonVisitInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfo(_ input: DescribePersonVisitInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonVisitInfoResponse {
        try await self.client.execute(action: "DescribePersonVisitInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfo(companyId: String, shopId: UInt64, offset: UInt64, limit: UInt64, startDate: Date? = nil, endDate: Date? = nil, pictureExpires: UInt64? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonVisitInfoResponse> {
        self.describePersonVisitInfo(.init(companyId: companyId, shopId: shopId, offset: offset, limit: limit, startDate: startDate, endDate: endDate, pictureExpires: pictureExpires, startDateTime: startDateTime, endDateTime: endDateTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfo(companyId: String, shopId: UInt64, offset: UInt64, limit: UInt64, startDate: Date? = nil, endDate: Date? = nil, pictureExpires: UInt64? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonVisitInfoResponse {
        try await self.describePersonVisitInfo(.init(companyId: companyId, shopId: shopId, offset: offset, limit: limit, startDate: startDate, endDate: endDate, pictureExpires: pictureExpires, startDateTime: startDateTime, endDateTime: endDateTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfoPaginated(_ input: DescribePersonVisitInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PersonVisitInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePersonVisitInfo, logger: logger, on: eventLoop)
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable @discardableResult
    public func describePersonVisitInfoPaginated(_ input: DescribePersonVisitInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePersonVisitInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePersonVisitInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    ///
    /// - Returns: `AsyncSequence`s of ``PersonVisitInfo`` and ``DescribePersonVisitInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePersonVisitInfoPaginator(_ input: DescribePersonVisitInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePersonVisitInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePersonVisitInfo, logger: logger, on: eventLoop)
    }
}
