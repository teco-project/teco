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

extension Billing {
    /// DescribeBillSummaryByRegion请求参数结构体
    public struct DescribeBillSummaryByRegionRequest: TCRequest {
        /// 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        public let beginTime: String

        /// 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        public let endTime: String

        /// 查询账单数据的用户UIN
        public let payerUin: String?

        public init(beginTime: String, endTime: String, payerUin: String? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.payerUin = payerUin
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case payerUin = "PayerUin"
        }
    }

    /// DescribeBillSummaryByRegion返回参数结构体
    public struct DescribeBillSummaryByRegionResponse: TCResponse {
        /// 数据是否准备好，0准备中，1已就绪。（Ready=0，为当前UIN首次进行初始化出账，预计需要5~10分钟出账，请于10分钟后重试即可）
        public let ready: UInt64

        /// 各地域花费分布详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let summaryOverview: [RegionSummaryOverviewItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ready = "Ready"
            case summaryOverview = "SummaryOverview"
            case requestId = "RequestId"
        }
    }

    /// 获取按地域汇总费用分布
    @inlinable
    public func describeBillSummaryByRegion(_ input: DescribeBillSummaryByRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillSummaryByRegionResponse> {
        self.client.execute(action: "DescribeBillSummaryByRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总费用分布
    @inlinable
    public func describeBillSummaryByRegion(_ input: DescribeBillSummaryByRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillSummaryByRegionResponse {
        try await self.client.execute(action: "DescribeBillSummaryByRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取按地域汇总费用分布
    @inlinable
    public func describeBillSummaryByRegion(beginTime: String, endTime: String, payerUin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillSummaryByRegionResponse> {
        self.describeBillSummaryByRegion(.init(beginTime: beginTime, endTime: endTime, payerUin: payerUin), region: region, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总费用分布
    @inlinable
    public func describeBillSummaryByRegion(beginTime: String, endTime: String, payerUin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillSummaryByRegionResponse {
        try await self.describeBillSummaryByRegion(.init(beginTime: beginTime, endTime: endTime, payerUin: payerUin), region: region, logger: logger, on: eventLoop)
    }
}
