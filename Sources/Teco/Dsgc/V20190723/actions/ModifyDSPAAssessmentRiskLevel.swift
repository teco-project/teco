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
    /// ModifyDSPAAssessmentRiskLevel请求参数结构体
    public struct ModifyDSPAAssessmentRiskLevelRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 风险等级名称
        public let riskLevelName: String

        /// 风险的描述
        public let riskLevelDescription: String

        /// 风险id
        public let riskId: Int64

        /// 需要修改的风险列表
        public let modifyRiskItem: [RiskLevelMatrix]?

        public init(dspaId: String, riskLevelName: String, riskLevelDescription: String, riskId: Int64, modifyRiskItem: [RiskLevelMatrix]? = nil) {
            self.dspaId = dspaId
            self.riskLevelName = riskLevelName
            self.riskLevelDescription = riskLevelDescription
            self.riskId = riskId
            self.modifyRiskItem = modifyRiskItem
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case riskLevelName = "RiskLevelName"
            case riskLevelDescription = "RiskLevelDescription"
            case riskId = "RiskId"
            case modifyRiskItem = "ModifyRiskItem"
        }
    }

    /// ModifyDSPAAssessmentRiskLevel返回参数结构体
    public struct ModifyDSPAAssessmentRiskLevelResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改风险等级的详情数据
    ///
    /// 风险项页面----修改风险等级的详情数据
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLevel(_ input: ModifyDSPAAssessmentRiskLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAAssessmentRiskLevelResponse> {
        self.client.execute(action: "ModifyDSPAAssessmentRiskLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改风险等级的详情数据
    ///
    /// 风险项页面----修改风险等级的详情数据
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLevel(_ input: ModifyDSPAAssessmentRiskLevelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAAssessmentRiskLevelResponse {
        try await self.client.execute(action: "ModifyDSPAAssessmentRiskLevel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改风险等级的详情数据
    ///
    /// 风险项页面----修改风险等级的详情数据
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLevel(dspaId: String, riskLevelName: String, riskLevelDescription: String, riskId: Int64, modifyRiskItem: [RiskLevelMatrix]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAAssessmentRiskLevelResponse> {
        self.modifyDSPAAssessmentRiskLevel(.init(dspaId: dspaId, riskLevelName: riskLevelName, riskLevelDescription: riskLevelDescription, riskId: riskId, modifyRiskItem: modifyRiskItem), region: region, logger: logger, on: eventLoop)
    }

    /// 修改风险等级的详情数据
    ///
    /// 风险项页面----修改风险等级的详情数据
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLevel(dspaId: String, riskLevelName: String, riskLevelDescription: String, riskId: Int64, modifyRiskItem: [RiskLevelMatrix]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAAssessmentRiskLevelResponse {
        try await self.modifyDSPAAssessmentRiskLevel(.init(dspaId: dspaId, riskLevelName: riskLevelName, riskLevelDescription: riskLevelDescription, riskId: riskId, modifyRiskItem: modifyRiskItem), region: region, logger: logger, on: eventLoop)
    }
}
