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

extension Postgres {
    /// ModifyParameterTemplate请求参数结构体
    public struct ModifyParameterTemplateRequest: TCRequest {
        /// 参数模板ID，用于唯一确认参数模板，不可修改
        public let templateId: String

        /// 参数模板名称，长度为1～60个字符，仅支持数字,英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@  注：若该字段为空    ，则保持原参数模板名称
        public let templateName: String?

        /// 参数模板描述，长度为0～60个字符，仅支持数字,英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@  注：若不传入该参数，则保持原参数模板描述
        public let templateDescription: String?

        /// 需要修改或添加的参数集合，注：同一参数不能同时出现在修改添加集合和删除集合中
        public let modifyParamEntrySet: [ParamEntry]?

        /// 需要从模板中删除的参数集合，注：同一参数不能同时出现在修改添加集合和删除集合中
        public let deleteParamSet: [String]?

        public init(templateId: String, templateName: String? = nil, templateDescription: String? = nil, modifyParamEntrySet: [ParamEntry]? = nil, deleteParamSet: [String]? = nil) {
            self.templateId = templateId
            self.templateName = templateName
            self.templateDescription = templateDescription
            self.modifyParamEntrySet = modifyParamEntrySet
            self.deleteParamSet = deleteParamSet
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case templateDescription = "TemplateDescription"
            case modifyParamEntrySet = "ModifyParamEntrySet"
            case deleteParamSet = "DeleteParamSet"
        }
    }

    /// ModifyParameterTemplate返回参数结构体
    public struct ModifyParameterTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改参数模板
    ///
    /// 本接口（ModifyParameterTemplate）主要用于修改参数模板名称，描述等配置，也可用于管理参数模板中的参数列表。
    @inlinable @discardableResult
    public func modifyParameterTemplate(_ input: ModifyParameterTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyParameterTemplateResponse> {
        self.client.execute(action: "ModifyParameterTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改参数模板
    ///
    /// 本接口（ModifyParameterTemplate）主要用于修改参数模板名称，描述等配置，也可用于管理参数模板中的参数列表。
    @inlinable @discardableResult
    public func modifyParameterTemplate(_ input: ModifyParameterTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyParameterTemplateResponse {
        try await self.client.execute(action: "ModifyParameterTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改参数模板
    ///
    /// 本接口（ModifyParameterTemplate）主要用于修改参数模板名称，描述等配置，也可用于管理参数模板中的参数列表。
    @inlinable @discardableResult
    public func modifyParameterTemplate(templateId: String, templateName: String? = nil, templateDescription: String? = nil, modifyParamEntrySet: [ParamEntry]? = nil, deleteParamSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyParameterTemplateResponse> {
        self.modifyParameterTemplate(.init(templateId: templateId, templateName: templateName, templateDescription: templateDescription, modifyParamEntrySet: modifyParamEntrySet, deleteParamSet: deleteParamSet), region: region, logger: logger, on: eventLoop)
    }

    /// 修改参数模板
    ///
    /// 本接口（ModifyParameterTemplate）主要用于修改参数模板名称，描述等配置，也可用于管理参数模板中的参数列表。
    @inlinable @discardableResult
    public func modifyParameterTemplate(templateId: String, templateName: String? = nil, templateDescription: String? = nil, modifyParamEntrySet: [ParamEntry]? = nil, deleteParamSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyParameterTemplateResponse {
        try await self.modifyParameterTemplate(.init(templateId: templateId, templateName: templateName, templateDescription: templateDescription, modifyParamEntrySet: modifyParamEntrySet, deleteParamSet: deleteParamSet), region: region, logger: logger, on: eventLoop)
    }
}
