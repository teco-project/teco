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
    /// CreateDSPAAssessmentRiskLevel请求参数结构体
    public struct CreateDSPAAssessmentRiskLevelRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 风险等级名称
        public let riskLevelName: String

        /// 识别模版
        public let identifyComplianceId: Int64

        /// 风险等级矩阵
        public let riskLevelRule: [RiskLevelMatrix]

        /// 风险等级的描述
        public let riskLevelDescription: String?

        public init(dspaId: String, riskLevelName: String, identifyComplianceId: Int64, riskLevelRule: [RiskLevelMatrix], riskLevelDescription: String? = nil) {
            self.dspaId = dspaId
            self.riskLevelName = riskLevelName
            self.identifyComplianceId = identifyComplianceId
            self.riskLevelRule = riskLevelRule
            self.riskLevelDescription = riskLevelDescription
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case riskLevelName = "RiskLevelName"
            case identifyComplianceId = "IdentifyComplianceId"
            case riskLevelRule = "RiskLevelRule"
            case riskLevelDescription = "RiskLevelDescription"
        }
    }

    /// CreateDSPAAssessmentRiskLevel返回参数结构体
    public struct CreateDSPAAssessmentRiskLevelResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建风险等级
    ///
    /// 风险项页面---创建风险等级
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskLevel(_ input: CreateDSPAAssessmentRiskLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentRiskLevelResponse> {
        self.client.execute(action: "CreateDSPAAssessmentRiskLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建风险等级
    ///
    /// 风险项页面---创建风险等级
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskLevel(_ input: CreateDSPAAssessmentRiskLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentRiskLevelResponse {
        try await self.client.execute(action: "CreateDSPAAssessmentRiskLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建风险等级
    ///
    /// 风险项页面---创建风险等级
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskLevel(dspaId: String, riskLevelName: String, identifyComplianceId: Int64, riskLevelRule: [RiskLevelMatrix], riskLevelDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentRiskLevelResponse> {
        self.createDSPAAssessmentRiskLevel(.init(dspaId: dspaId, riskLevelName: riskLevelName, identifyComplianceId: identifyComplianceId, riskLevelRule: riskLevelRule, riskLevelDescription: riskLevelDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 创建风险等级
    ///
    /// 风险项页面---创建风险等级
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskLevel(dspaId: String, riskLevelName: String, identifyComplianceId: Int64, riskLevelRule: [RiskLevelMatrix], riskLevelDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentRiskLevelResponse {
        try await self.createDSPAAssessmentRiskLevel(.init(dspaId: dspaId, riskLevelName: riskLevelName, identifyComplianceId: identifyComplianceId, riskLevelRule: riskLevelRule, riskLevelDescription: riskLevelDescription), region: region, logger: logger, on: eventLoop)
    }
}
