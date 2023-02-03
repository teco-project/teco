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

extension Tke {
    /// ModifyPrometheusTemplate请求参数结构体
    public struct ModifyPrometheusTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        /// 修改内容
        public let template: PrometheusTemplateModify

        public init(templateId: String, template: PrometheusTemplateModify) {
            self.templateId = templateId
            self.template = template
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case template = "Template"
        }
    }

    /// ModifyPrometheusTemplate返回参数结构体
    public struct ModifyPrometheusTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模板
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemplate(_ input: ModifyPrometheusTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusTemplateResponse> {
        self.client.execute(action: "ModifyPrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模板
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemplate(_ input: ModifyPrometheusTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusTemplateResponse {
        try await self.client.execute(action: "ModifyPrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模板
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemplate(templateId: String, template: PrometheusTemplateModify, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusTemplateResponse> {
        let input = ModifyPrometheusTemplateRequest(templateId: templateId, template: template)
        return self.client.execute(action: "ModifyPrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模板
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemplate(templateId: String, template: PrometheusTemplateModify, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusTemplateResponse {
        let input = ModifyPrometheusTemplateRequest(templateId: templateId, template: template)
        return try await self.client.execute(action: "ModifyPrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
