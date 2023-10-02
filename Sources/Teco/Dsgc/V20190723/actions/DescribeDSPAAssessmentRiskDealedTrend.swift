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
    /// DescribeDSPAAssessmentRiskDealedTrend请求参数结构体
    public struct DescribeDSPAAssessmentRiskDealedTrendRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 开始日期
        public let startTime: String

        /// 结束日期
        public let endTime: String

        /// 评估模版id
        public let templateId: String?

        public init(dspaId: String, startTime: String, endTime: String, templateId: String? = nil) {
            self.dspaId = dspaId
            self.startTime = startTime
            self.endTime = endTime
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case templateId = "TemplateId"
        }
    }

    /// DescribeDSPAAssessmentRiskDealedTrend返回参数结构体
    public struct DescribeDSPAAssessmentRiskDealedTrendResponse: TCResponse {
        /// 趋势统计结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [RiskDealedTrendItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 风险项处理趋势统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedTrend(_ input: DescribeDSPAAssessmentRiskDealedTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskDealedTrendResponse> {
        self.client.execute(action: "DescribeDSPAAssessmentRiskDealedTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 风险项处理趋势统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedTrend(_ input: DescribeDSPAAssessmentRiskDealedTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskDealedTrendResponse {
        try await self.client.execute(action: "DescribeDSPAAssessmentRiskDealedTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 风险项处理趋势统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedTrend(dspaId: String, startTime: String, endTime: String, templateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskDealedTrendResponse> {
        self.describeDSPAAssessmentRiskDealedTrend(.init(dspaId: dspaId, startTime: startTime, endTime: endTime, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 风险项处理趋势统计
    @inlinable
    public func describeDSPAAssessmentRiskDealedTrend(dspaId: String, startTime: String, endTime: String, templateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskDealedTrendResponse {
        try await self.describeDSPAAssessmentRiskDealedTrend(.init(dspaId: dspaId, startTime: startTime, endTime: endTime, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
