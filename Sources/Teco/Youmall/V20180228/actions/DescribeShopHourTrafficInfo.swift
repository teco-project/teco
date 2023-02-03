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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Youmall {
    /// DescribeShopHourTrafficInfo请求参数结构体
    public struct DescribeShopHourTrafficInfoRequest: TCRequestModel {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 开始日期，格式：yyyy-MM-dd
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 结束日期，格式：yyyy-MM-dd
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
    }

    /// DescribeShopHourTrafficInfo返回参数结构体
    public struct DescribeShopHourTrafficInfoResponse: TCResponseModel {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 查询结果总数
        public let totalCount: UInt64

        /// 分时客流信息
        public let shopHourTrafficInfoSet: [ShopHourTrafficInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case totalCount = "TotalCount"
            case shopHourTrafficInfoSet = "ShopHourTrafficInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取每小时客流人数
    ///
    /// 按小时提供查询日期范围内门店的每天每小时累计客流人数数据，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopHourTrafficInfo(_ input: DescribeShopHourTrafficInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShopHourTrafficInfoResponse> {
        self.client.execute(action: "DescribeShopHourTrafficInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取每小时客流人数
    ///
    /// 按小时提供查询日期范围内门店的每天每小时累计客流人数数据，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopHourTrafficInfo(_ input: DescribeShopHourTrafficInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShopHourTrafficInfoResponse {
        try await self.client.execute(action: "DescribeShopHourTrafficInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取每小时客流人数
    ///
    /// 按小时提供查询日期范围内门店的每天每小时累计客流人数数据，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopHourTrafficInfo(companyId: String, shopId: UInt64, startDate: Date, endDate: Date, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeShopHourTrafficInfoResponse> {
        let input = DescribeShopHourTrafficInfoRequest(companyId: companyId, shopId: shopId, startDate: startDate, endDate: endDate, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeShopHourTrafficInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取每小时客流人数
    ///
    /// 按小时提供查询日期范围内门店的每天每小时累计客流人数数据，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describeShopHourTrafficInfo(companyId: String, shopId: UInt64, startDate: Date, endDate: Date, offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShopHourTrafficInfoResponse {
        let input = DescribeShopHourTrafficInfoRequest(companyId: companyId, shopId: shopId, startDate: startDate, endDate: endDate, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeShopHourTrafficInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
