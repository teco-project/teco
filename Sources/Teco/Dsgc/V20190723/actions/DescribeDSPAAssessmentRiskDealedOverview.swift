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

extension Dsgc {
    /// DescribeDSPAAssessmentRiskDealedOverview请求参数结构体
    public struct DescribeDSPAAssessmentRiskDealedOverviewRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        public init(dspaId: String) {
            self.dspaId = dspaId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
        }
    }

    /// DescribeDSPAAssessmentRiskDealedOverview返回参数结构体
    public struct DescribeDSPAAssessmentRiskDealedOverviewResponse: TCResponse {
        /// 遗留待处理风险总数
        public let totalCount: UInt64

        /// 昨日完成风险处置数
        public let yesterdayDealedCount: UInt64

        /// 遗留待处理风险数周同比
        public let unDealedRiskWeekRatio: Float

        /// 遗留待处理风险数日环比
        public let unDealedRiskDayRatio: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case yesterdayDealedCount = "YesterdayDealedCount"
            case unDealedRiskWeekRatio = "UnDealedRiskWeekRatio"
            case unDealedRiskDayRatio = "UnDealedRiskDayRatio"
            case requestId = "RequestId"
        }
    }

    /// 遗留待处理概览统计
    ///
    /// 遗留待处理&昨日完成风险处置概览统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedOverview(_ input: DescribeDSPAAssessmentRiskDealedOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskDealedOverviewResponse> {
        self.client.execute(action: "DescribeDSPAAssessmentRiskDealedOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 遗留待处理概览统计
    ///
    /// 遗留待处理&昨日完成风险处置概览统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedOverview(_ input: DescribeDSPAAssessmentRiskDealedOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskDealedOverviewResponse {
        try await self.client.execute(action: "DescribeDSPAAssessmentRiskDealedOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 遗留待处理概览统计
    ///
    /// 遗留待处理&昨日完成风险处置概览统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedOverview(dspaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskDealedOverviewResponse> {
        self.describeDSPAAssessmentRiskDealedOverview(.init(dspaId: dspaId), region: region, logger: logger, on: eventLoop)
    }

    /// 遗留待处理概览统计
    ///
    /// 遗留待处理&昨日完成风险处置概览统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedOverview(dspaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskDealedOverviewResponse {
        try await self.describeDSPAAssessmentRiskDealedOverview(.init(dspaId: dspaId), region: region, logger: logger, on: eventLoop)
    }
}
