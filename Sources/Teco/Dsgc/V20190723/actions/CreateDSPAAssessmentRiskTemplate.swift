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
    /// CreateDSPAAssessmentRiskTemplate请求参数结构体
    public struct CreateDSPAAssessmentRiskTemplateRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 模版名称
        public let templateName: String

        /// 风险等级id
        public let riskLevelId: Int64

        /// 风险id列表
        public let riskIdList: [Int64]

        /// 模版描述
        public let templateDescription: String?

        public init(dspaId: String, templateName: String, riskLevelId: Int64, riskIdList: [Int64], templateDescription: String? = nil) {
            self.dspaId = dspaId
            self.templateName = templateName
            self.riskLevelId = riskLevelId
            self.riskIdList = riskIdList
            self.templateDescription = templateDescription
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case templateName = "TemplateName"
            case riskLevelId = "RiskLevelId"
            case riskIdList = "RiskIdList"
            case templateDescription = "TemplateDescription"
        }
    }

    /// CreateDSPAAssessmentRiskTemplate返回参数结构体
    public struct CreateDSPAAssessmentRiskTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建评估模版
    ///
    /// 风险评估模版---创建风险评估模版
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskTemplate(_ input: CreateDSPAAssessmentRiskTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentRiskTemplateResponse> {
        self.client.execute(action: "CreateDSPAAssessmentRiskTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建评估模版
    ///
    /// 风险评估模版---创建风险评估模版
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskTemplate(_ input: CreateDSPAAssessmentRiskTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentRiskTemplateResponse {
        try await self.client.execute(action: "CreateDSPAAssessmentRiskTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建评估模版
    ///
    /// 风险评估模版---创建风险评估模版
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskTemplate(dspaId: String, templateName: String, riskLevelId: Int64, riskIdList: [Int64], templateDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentRiskTemplateResponse> {
        self.createDSPAAssessmentRiskTemplate(.init(dspaId: dspaId, templateName: templateName, riskLevelId: riskLevelId, riskIdList: riskIdList, templateDescription: templateDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 创建评估模版
    ///
    /// 风险评估模版---创建风险评估模版
    @inlinable @discardableResult
    public func createDSPAAssessmentRiskTemplate(dspaId: String, templateName: String, riskLevelId: Int64, riskIdList: [Int64], templateDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentRiskTemplateResponse {
        try await self.createDSPAAssessmentRiskTemplate(.init(dspaId: dspaId, templateName: templateName, riskLevelId: riskLevelId, riskIdList: riskIdList, templateDescription: templateDescription), region: region, logger: logger, on: eventLoop)
    }
}
