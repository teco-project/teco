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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tsf {
    /// UpdateConfigTemplate请求参数结构体
    public struct UpdateConfigTemplateRequest: TCRequestModel {
        /// 配置模板id
        public let configTemplateId: String

        /// 配置模板名称
        public let configTemplateName: String

        /// 配置模板对应的微服务框架
        public let configTemplateType: String

        /// 配置模板数据
        public let configTemplateValue: String

        /// 配置模板描述
        public let configTemplateDesc: String?

        public init(configTemplateId: String, configTemplateName: String, configTemplateType: String, configTemplateValue: String, configTemplateDesc: String? = nil) {
            self.configTemplateId = configTemplateId
            self.configTemplateName = configTemplateName
            self.configTemplateType = configTemplateType
            self.configTemplateValue = configTemplateValue
            self.configTemplateDesc = configTemplateDesc
        }

        enum CodingKeys: String, CodingKey {
            case configTemplateId = "ConfigTemplateId"
            case configTemplateName = "ConfigTemplateName"
            case configTemplateType = "ConfigTemplateType"
            case configTemplateValue = "ConfigTemplateValue"
            case configTemplateDesc = "ConfigTemplateDesc"
        }
    }

    /// UpdateConfigTemplate返回参数结构体
    public struct UpdateConfigTemplateResponse: TCResponseModel {
        /// 结果true：成功；false：失败；
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新参数模板
    @inlinable
    public func updateConfigTemplate(_ input: UpdateConfigTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConfigTemplateResponse> {
        self.client.execute(action: "UpdateConfigTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新参数模板
    @inlinable
    public func updateConfigTemplate(_ input: UpdateConfigTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConfigTemplateResponse {
        try await self.client.execute(action: "UpdateConfigTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新参数模板
    @inlinable
    public func updateConfigTemplate(configTemplateId: String, configTemplateName: String, configTemplateType: String, configTemplateValue: String, configTemplateDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConfigTemplateResponse> {
        self.updateConfigTemplate(.init(configTemplateId: configTemplateId, configTemplateName: configTemplateName, configTemplateType: configTemplateType, configTemplateValue: configTemplateValue, configTemplateDesc: configTemplateDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 更新参数模板
    @inlinable
    public func updateConfigTemplate(configTemplateId: String, configTemplateName: String, configTemplateType: String, configTemplateValue: String, configTemplateDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConfigTemplateResponse {
        try await self.updateConfigTemplate(.init(configTemplateId: configTemplateId, configTemplateName: configTemplateName, configTemplateType: configTemplateType, configTemplateValue: configTemplateValue, configTemplateDesc: configTemplateDesc), region: region, logger: logger, on: eventLoop)
    }
}
