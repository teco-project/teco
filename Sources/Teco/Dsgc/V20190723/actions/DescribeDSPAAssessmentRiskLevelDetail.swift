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
    /// DescribeDSPAAssessmentRiskLevelDetail请求参数结构体
    public struct DescribeDSPAAssessmentRiskLevelDetailRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 风险级别id
        public let riskLevelId: Int64

        public init(dspaId: String, riskLevelId: Int64) {
            self.dspaId = dspaId
            self.riskLevelId = riskLevelId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case riskLevelId = "RiskLevelId"
        }
    }

    /// DescribeDSPAAssessmentRiskLevelDetail返回参数结构体
    public struct DescribeDSPAAssessmentRiskLevelDetailResponse: TCResponse {
        /// 风险级别名称
        public let riskLevelName: String

        /// 风险级别描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskLevelDescription: String?

        /// 分类分级id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identifyComplianceId: Int64?

        /// 分类分级模版名称
        public let identifyComplianceName: String

        /// 风险数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskLevelMatrix: [RiskLevelMatrix]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case riskLevelName = "RiskLevelName"
            case riskLevelDescription = "RiskLevelDescription"
            case identifyComplianceId = "IdentifyComplianceId"
            case identifyComplianceName = "IdentifyComplianceName"
            case riskLevelMatrix = "RiskLevelMatrix"
            case requestId = "RequestId"
        }
    }

    /// 查询风险等级的详情数据
    ///
    /// 风险项页面----查询风险等级的详情数据
    @inlinable
    public func describeDSPAAssessmentRiskLevelDetail(_ input: DescribeDSPAAssessmentRiskLevelDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskLevelDetailResponse> {
        self.client.execute(action: "DescribeDSPAAssessmentRiskLevelDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询风险等级的详情数据
    ///
    /// 风险项页面----查询风险等级的详情数据
    @inlinable
    public func describeDSPAAssessmentRiskLevelDetail(_ input: DescribeDSPAAssessmentRiskLevelDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskLevelDetailResponse {
        try await self.client.execute(action: "DescribeDSPAAssessmentRiskLevelDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询风险等级的详情数据
    ///
    /// 风险项页面----查询风险等级的详情数据
    @inlinable
    public func describeDSPAAssessmentRiskLevelDetail(dspaId: String, riskLevelId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAAssessmentRiskLevelDetailResponse> {
        self.describeDSPAAssessmentRiskLevelDetail(.init(dspaId: dspaId, riskLevelId: riskLevelId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询风险等级的详情数据
    ///
    /// 风险项页面----查询风险等级的详情数据
    @inlinable
    public func describeDSPAAssessmentRiskLevelDetail(dspaId: String, riskLevelId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAAssessmentRiskLevelDetailResponse {
        try await self.describeDSPAAssessmentRiskLevelDetail(.init(dspaId: dspaId, riskLevelId: riskLevelId), region: region, logger: logger, on: eventLoop)
    }
}
