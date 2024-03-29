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
    /// CreateDSPAAssessmentTask请求参数结构体
    public struct CreateDSPAAssessmentTaskRequest: TCRequest {
        /// DSPA实例Id，格式“dspa-xxxxxxxx”
        public let dspaId: String

        /// 评估任务名称。1-20个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        public let name: String

        /// 评估模版Id，格式“template-xxxxxxxx”
        public let templateId: String

        /// 评估业务名称。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        @available(*, deprecated)
        public let businessName: String? = nil

        /// 业务所属部门。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        @available(*, deprecated)
        public let businessDept: String? = nil

        /// 业务负责人。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        @available(*, deprecated)
        public let businessOwner: String? = nil

        /// 分类分级模版Id
        public let complianceId: Int64?

        /// 敏感数据扫描数据源条件。
        public let discoveryCondition: DiscoveryCondition?

        /// 说明
        public let description: String?

        public init(dspaId: String, name: String, templateId: String, complianceId: Int64? = nil, discoveryCondition: DiscoveryCondition? = nil, description: String? = nil) {
            self.dspaId = dspaId
            self.name = name
            self.templateId = templateId
            self.complianceId = complianceId
            self.discoveryCondition = discoveryCondition
            self.description = description
        }

        @available(*, deprecated, renamed: "init(dspaId:name:templateId:complianceId:discoveryCondition:description:)", message: "'businessName', 'businessDept' and 'businessOwner' are deprecated in 'CreateDSPAAssessmentTaskRequest'. Setting these parameters has no effect.")
        public init(dspaId: String, name: String, templateId: String, businessName: String? = nil, businessDept: String? = nil, businessOwner: String? = nil, complianceId: Int64? = nil, discoveryCondition: DiscoveryCondition? = nil, description: String? = nil) {
            self.dspaId = dspaId
            self.name = name
            self.templateId = templateId
            self.complianceId = complianceId
            self.discoveryCondition = discoveryCondition
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case name = "Name"
            case templateId = "TemplateId"
            case businessName = "BusinessName"
            case businessDept = "BusinessDept"
            case businessOwner = "BusinessOwner"
            case complianceId = "ComplianceId"
            case discoveryCondition = "DiscoveryCondition"
            case description = "Description"
        }
    }

    /// CreateDSPAAssessmentTask返回参数结构体
    public struct CreateDSPAAssessmentTaskResponse: TCResponse {
        /// 评估任务Id，格式“task-xxxxxxxx”
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 新建DSPA评估任务
    ///
    /// 新建DSPA风险评估任务
    @inlinable
    public func createDSPAAssessmentTask(_ input: CreateDSPAAssessmentTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentTaskResponse> {
        self.client.execute(action: "CreateDSPAAssessmentTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建DSPA评估任务
    ///
    /// 新建DSPA风险评估任务
    @inlinable
    public func createDSPAAssessmentTask(_ input: CreateDSPAAssessmentTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentTaskResponse {
        try await self.client.execute(action: "CreateDSPAAssessmentTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建DSPA评估任务
    ///
    /// 新建DSPA风险评估任务
    @inlinable
    public func createDSPAAssessmentTask(dspaId: String, name: String, templateId: String, complianceId: Int64? = nil, discoveryCondition: DiscoveryCondition? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentTaskResponse> {
        self.createDSPAAssessmentTask(.init(dspaId: dspaId, name: name, templateId: templateId, complianceId: complianceId, discoveryCondition: discoveryCondition, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 新建DSPA评估任务
    ///
    /// 新建DSPA风险评估任务
    @available(*, deprecated, renamed: "createDSPAAssessmentTask(dspaId:name:templateId:complianceId:discoveryCondition:description:region:logger:on:)", message: "'businessName', 'businessDept' and 'businessOwner' are deprecated. Setting these parameters has no effect.")
    @inlinable
    public func createDSPAAssessmentTask(dspaId: String, name: String, templateId: String, businessName: String? = nil, businessDept: String? = nil, businessOwner: String? = nil, complianceId: Int64? = nil, discoveryCondition: DiscoveryCondition? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPAAssessmentTaskResponse> {
        self.createDSPAAssessmentTask(.init(dspaId: dspaId, name: name, templateId: templateId, businessName: businessName, businessDept: businessDept, businessOwner: businessOwner, complianceId: complianceId, discoveryCondition: discoveryCondition, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 新建DSPA评估任务
    ///
    /// 新建DSPA风险评估任务
    @inlinable
    public func createDSPAAssessmentTask(dspaId: String, name: String, templateId: String, complianceId: Int64? = nil, discoveryCondition: DiscoveryCondition? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentTaskResponse {
        try await self.createDSPAAssessmentTask(.init(dspaId: dspaId, name: name, templateId: templateId, complianceId: complianceId, discoveryCondition: discoveryCondition, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 新建DSPA评估任务
    ///
    /// 新建DSPA风险评估任务
    @available(*, deprecated, renamed: "createDSPAAssessmentTask(dspaId:name:templateId:complianceId:discoveryCondition:description:region:logger:on:)", message: "'businessName', 'businessDept' and 'businessOwner' are deprecated. Setting these parameters has no effect.")
    @inlinable
    public func createDSPAAssessmentTask(dspaId: String, name: String, templateId: String, businessName: String? = nil, businessDept: String? = nil, businessOwner: String? = nil, complianceId: Int64? = nil, discoveryCondition: DiscoveryCondition? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPAAssessmentTaskResponse {
        try await self.createDSPAAssessmentTask(.init(dspaId: dspaId, name: name, templateId: templateId, businessName: businessName, businessDept: businessDept, businessOwner: businessOwner, complianceId: complianceId, discoveryCondition: discoveryCondition, description: description), region: region, logger: logger, on: eventLoop)
    }
}
