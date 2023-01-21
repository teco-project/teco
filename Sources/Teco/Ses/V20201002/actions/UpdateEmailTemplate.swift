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

extension Ses {
    /// UpdateEmailTemplate请求参数结构体
    public struct UpdateEmailTemplateRequest: TCRequestModel {
        /// 模板内容
        public let templateContent: TemplateContent

        /// 模板ID
        public let templateID: UInt64

        /// 模板名字
        public let templateName: String

        public init(templateContent: TemplateContent, templateID: UInt64, templateName: String) {
            self.templateContent = templateContent
            self.templateID = templateID
            self.templateName = templateName
        }

        enum CodingKeys: String, CodingKey {
            case templateContent = "TemplateContent"
            case templateID = "TemplateID"
            case templateName = "TemplateName"
        }
    }

    /// UpdateEmailTemplate返回参数结构体
    public struct UpdateEmailTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新邮件模板
    ///
    /// 更新邮件模板，更新后需再次审核
    @inlinable @discardableResult
    public func updateEmailTemplate(_ input: UpdateEmailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEmailTemplateResponse> {
        self.client.execute(action: "UpdateEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新邮件模板
    ///
    /// 更新邮件模板，更新后需再次审核
    @inlinable @discardableResult
    public func updateEmailTemplate(_ input: UpdateEmailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEmailTemplateResponse {
        try await self.client.execute(action: "UpdateEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新邮件模板
    ///
    /// 更新邮件模板，更新后需再次审核
    @inlinable @discardableResult
    public func updateEmailTemplate(templateContent: TemplateContent, templateID: UInt64, templateName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEmailTemplateResponse> {
        self.updateEmailTemplate(UpdateEmailTemplateRequest(templateContent: templateContent, templateID: templateID, templateName: templateName), region: region, logger: logger, on: eventLoop)
    }

    /// 更新邮件模板
    ///
    /// 更新邮件模板，更新后需再次审核
    @inlinable @discardableResult
    public func updateEmailTemplate(templateContent: TemplateContent, templateID: UInt64, templateName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEmailTemplateResponse {
        try await self.updateEmailTemplate(UpdateEmailTemplateRequest(templateContent: templateContent, templateID: templateID, templateName: templateName), region: region, logger: logger, on: eventLoop)
    }
}
