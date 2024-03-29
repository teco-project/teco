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

extension Cdb {
    /// CreateParamTemplate请求参数结构体
    public struct CreateParamTemplateRequest: TCRequest {
        /// 参数模板名称。
        public let name: String

        /// 参数模板描述。
        public let description: String?

        /// MySQL 版本号。
        public let engineVersion: String?

        /// 源参数模板 ID。
        public let templateId: Int64?

        /// 参数列表。
        public let paramList: [Parameter]?

        /// 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        public let templateType: String?

        /// 实例引擎类型，默认为"InnoDB"，支持值包括："InnoDB"，"RocksDB"。
        public let engineType: String?

        public init(name: String, description: String? = nil, engineVersion: String? = nil, templateId: Int64? = nil, paramList: [Parameter]? = nil, templateType: String? = nil, engineType: String? = nil) {
            self.name = name
            self.description = description
            self.engineVersion = engineVersion
            self.templateId = templateId
            self.paramList = paramList
            self.templateType = templateType
            self.engineType = engineType
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case engineVersion = "EngineVersion"
            case templateId = "TemplateId"
            case paramList = "ParamList"
            case templateType = "TemplateType"
            case engineType = "EngineType"
        }
    }

    /// CreateParamTemplate返回参数结构体
    public struct CreateParamTemplateResponse: TCResponse {
        /// 参数模板 ID。
        public let templateId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }

    /// 创建参数模板
    ///
    /// 该接口（CreateParamTemplate）用于创建参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func createParamTemplate(_ input: CreateParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParamTemplateResponse> {
        self.client.execute(action: "CreateParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建参数模板
    ///
    /// 该接口（CreateParamTemplate）用于创建参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func createParamTemplate(_ input: CreateParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateParamTemplateResponse {
        try await self.client.execute(action: "CreateParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建参数模板
    ///
    /// 该接口（CreateParamTemplate）用于创建参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func createParamTemplate(name: String, description: String? = nil, engineVersion: String? = nil, templateId: Int64? = nil, paramList: [Parameter]? = nil, templateType: String? = nil, engineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParamTemplateResponse> {
        self.createParamTemplate(.init(name: name, description: description, engineVersion: engineVersion, templateId: templateId, paramList: paramList, templateType: templateType, engineType: engineType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建参数模板
    ///
    /// 该接口（CreateParamTemplate）用于创建参数模板，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func createParamTemplate(name: String, description: String? = nil, engineVersion: String? = nil, templateId: Int64? = nil, paramList: [Parameter]? = nil, templateType: String? = nil, engineType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateParamTemplateResponse {
        try await self.createParamTemplate(.init(name: name, description: description, engineVersion: engineVersion, templateId: templateId, paramList: paramList, templateType: templateType, engineType: engineType), region: region, logger: logger, on: eventLoop)
    }
}
