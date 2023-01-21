//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cdb {
    /// ModifyParamTemplate请求参数结构体
    public struct ModifyParamTemplateRequest: TCRequestModel {
        /// 模板 ID。
        public let templateId: Int64

        /// 模板名称，长度不超过64。
        public let name: String?

        /// 模板描述，长度不超过255。
        public let description: String?

        /// 参数列表。
        public let paramList: [Parameter]?

        public init(templateId: Int64, name: String? = nil, description: String? = nil, paramList: [Parameter]? = nil) {
            self.templateId = templateId
            self.name = name
            self.description = description
            self.paramList = paramList
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case name = "Name"
            case description = "Description"
            case paramList = "ParamList"
        }
    }

    /// ModifyParamTemplate返回参数结构体
    public struct ModifyParamTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改参数模板
    ///
    /// 该接口（ModifyParamTemplate）用于修改参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func modifyParamTemplate(_ input: ModifyParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyParamTemplateResponse> {
        self.client.execute(action: "ModifyParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改参数模板
    ///
    /// 该接口（ModifyParamTemplate）用于修改参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func modifyParamTemplate(_ input: ModifyParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyParamTemplateResponse {
        try await self.client.execute(action: "ModifyParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改参数模板
    ///
    /// 该接口（ModifyParamTemplate）用于修改参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func modifyParamTemplate(templateId: Int64, name: String? = nil, description: String? = nil, paramList: [Parameter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyParamTemplateResponse> {
        self.modifyParamTemplate(ModifyParamTemplateRequest(templateId: templateId, name: name, description: description, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改参数模板
    ///
    /// 该接口（ModifyParamTemplate）用于修改参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable @discardableResult
    public func modifyParamTemplate(templateId: Int64, name: String? = nil, description: String? = nil, paramList: [Parameter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyParamTemplateResponse {
        try await self.modifyParamTemplate(ModifyParamTemplateRequest(templateId: templateId, name: name, description: description, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }
}
