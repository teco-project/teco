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

extension Youmall {
    /// DescribeZoneFlowGenderInfoByZoneId请求参数结构体
    public struct DescribeZoneFlowGenderInfoByZoneIdRequest: TCRequestModel {
        /// 集团ID
        public let companyId: String

        /// 店铺ID
        public let shopId: Int64

        /// 区域ID
        public let zoneId: Int64

        /// 开始日期，格式yyyy-MM-dd
        public let startDate: String

        /// 结束日期，格式yyyy-MM-dd
        public let endDate: String

        public init(companyId: String, shopId: Int64, zoneId: Int64, startDate: String, endDate: String) {
            self.companyId = companyId
            self.shopId = shopId
            self.zoneId = zoneId
            self.startDate = startDate
            self.endDate = endDate
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case zoneId = "ZoneId"
            case startDate = "StartDate"
            case endDate = "EndDate"
        }
    }

    /// DescribeZoneFlowGenderInfoByZoneId返回参数结构体
    public struct DescribeZoneFlowGenderInfoByZoneIdResponse: TCResponseModel {
        /// 集团ID
        public let companyId: String

        /// 店铺ID
        public let shopId: Int64

        /// 区域ID
        public let zoneId: Int64

        /// 区域名称
        public let zoneName: String

        /// 男性占比
        public let malePercent: Float

        /// 女性占比
        public let femalePercent: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case malePercent = "MalePercent"
            case femalePercent = "FemalePercent"
            case requestId = "RequestId"
        }
    }

    /// 获取指定区域性别占比
    @inlinable
    public func describeZoneFlowGenderInfoByZoneId(_ input: DescribeZoneFlowGenderInfoByZoneIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneFlowGenderInfoByZoneIdResponse> {
        self.client.execute(action: "DescribeZoneFlowGenderInfoByZoneId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取指定区域性别占比
    @inlinable
    public func describeZoneFlowGenderInfoByZoneId(_ input: DescribeZoneFlowGenderInfoByZoneIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneFlowGenderInfoByZoneIdResponse {
        try await self.client.execute(action: "DescribeZoneFlowGenderInfoByZoneId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取指定区域性别占比
    @inlinable
    public func describeZoneFlowGenderInfoByZoneId(companyId: String, shopId: Int64, zoneId: Int64, startDate: String, endDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneFlowGenderInfoByZoneIdResponse> {
        self.describeZoneFlowGenderInfoByZoneId(.init(companyId: companyId, shopId: shopId, zoneId: zoneId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取指定区域性别占比
    @inlinable
    public func describeZoneFlowGenderInfoByZoneId(companyId: String, shopId: Int64, zoneId: Int64, startDate: String, endDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneFlowGenderInfoByZoneIdResponse {
        try await self.describeZoneFlowGenderInfoByZoneId(.init(companyId: companyId, shopId: shopId, zoneId: zoneId, startDate: startDate, endDate: endDate), region: region, logger: logger, on: eventLoop)
    }
}
