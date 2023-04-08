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
import TecoCore
import TecoDateHelpers

extension Tiw {
    /// DescribeTIWDailyUsage请求参数结构体
    public struct DescribeTIWDailyUsageRequest: TCRequestModel {
        /// 互动白板应用SdkAppId
        public let sdkAppId: Int64

        /// 需要查询的子产品用量，支持传入以下值
        /// - sp_tiw_board: 互动白板时长，单位为分钟
        /// - sp_tiw_dt: 动态转码页数，单位页
        /// - sp_tiw_st: 静态转码页数，单位页
        /// - sp_tiw_ric: 实时录制时长，单位分钟
        ///
        /// 注意：动态转码以1:8的比例计算文档转码页数，静态转码以1:1的比例计算文档转码页数
        public let subProduct: String

        /// 开始时间，格式YYYY-MM-DD，查询结果里包括该天数据
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startTime: Date

        /// 结束时间，格式YYYY-MM-DD，查询结果里包括该天数据，单次查询统计区间最多不能超过31天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endTime: Date

        public init(sdkAppId: Int64, subProduct: String, startTime: Date, endTime: Date) {
            self.sdkAppId = sdkAppId
            self.subProduct = subProduct
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case subProduct = "SubProduct"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeTIWDailyUsage返回参数结构体
    public struct DescribeTIWDailyUsageResponse: TCResponseModel {
        /// 指定区间指定产品的用量汇总
        public let usages: [UsageDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case usages = "Usages"
            case requestId = "RequestId"
        }
    }

    /// 查询天维度计费用量
    ///
    /// 查询互动白板天维度计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWDailyUsage(_ input: DescribeTIWDailyUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTIWDailyUsageResponse> {
        self.client.execute(action: "DescribeTIWDailyUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询天维度计费用量
    ///
    /// 查询互动白板天维度计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWDailyUsage(_ input: DescribeTIWDailyUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTIWDailyUsageResponse {
        try await self.client.execute(action: "DescribeTIWDailyUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询天维度计费用量
    ///
    /// 查询互动白板天维度计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWDailyUsage(sdkAppId: Int64, subProduct: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTIWDailyUsageResponse> {
        self.describeTIWDailyUsage(.init(sdkAppId: sdkAppId, subProduct: subProduct, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询天维度计费用量
    ///
    /// 查询互动白板天维度计费用量。
    /// 1. 单次查询统计区间最多不能超过31天。
    /// 2. 由于统计延迟等原因，暂时不支持查询当天数据，建议在次日上午7点以后再来查询前一天的用量，例如在10月27日上午7点后，再来查询到10月26日整天的用量
    @inlinable
    public func describeTIWDailyUsage(sdkAppId: Int64, subProduct: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTIWDailyUsageResponse {
        try await self.describeTIWDailyUsage(.init(sdkAppId: sdkAppId, subProduct: subProduct, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
