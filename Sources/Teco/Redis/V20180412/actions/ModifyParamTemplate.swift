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

import TecoCore

extension Redis {
    /// ModifyParamTemplate请求参数结构体
    public struct ModifyParamTemplateRequest: TCRequestModel {
        /// 源参数模板 ID。
        public let templateId: String

        /// 参数模板修改后的新名称。
        public let name: String?

        /// 参数模板修改后的新描述。
        public let description: String?

        /// 修改后的新参数列表。
        public let paramList: [InstanceParam]?

        public init(templateId: String, name: String? = nil, description: String? = nil, paramList: [InstanceParam]? = nil) {
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
    @inlinable @discardableResult
    public func modifyParamTemplate(_ input: ModifyParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyParamTemplateResponse> {
        self.client.execute(action: "ModifyParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改参数模板
    @inlinable @discardableResult
    public func modifyParamTemplate(_ input: ModifyParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyParamTemplateResponse {
        try await self.client.execute(action: "ModifyParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改参数模板
    @inlinable @discardableResult
    public func modifyParamTemplate(templateId: String, name: String? = nil, description: String? = nil, paramList: [InstanceParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyParamTemplateResponse> {
        self.modifyParamTemplate(.init(templateId: templateId, name: name, description: description, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改参数模板
    @inlinable @discardableResult
    public func modifyParamTemplate(templateId: String, name: String? = nil, description: String? = nil, paramList: [InstanceParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyParamTemplateResponse {
        try await self.modifyParamTemplate(.init(templateId: templateId, name: name, description: description, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }
}
