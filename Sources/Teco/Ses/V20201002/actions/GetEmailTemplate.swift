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
    /// GetEmailTemplate请求参数结构体
    public struct GetEmailTemplateRequest: TCRequestModel {
        /// 模板ID
        public let templateID: UInt64

        public init(templateID: UInt64) {
            self.templateID = templateID
        }

        enum CodingKeys: String, CodingKey {
            case templateID = "TemplateID"
        }
    }

    /// GetEmailTemplate返回参数结构体
    public struct GetEmailTemplateResponse: TCResponseModel {
        /// 模板内容数据
        public let templateContent: TemplateContent

        /// 模板状态 0-审核通过 1-待审核 2-审核拒绝
        public let templateStatus: UInt64

        /// 模板名称
        public let templateName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateContent = "TemplateContent"
            case templateStatus = "TemplateStatus"
            case templateName = "TemplateName"
            case requestId = "RequestId"
        }
    }

    /// 获取模板详情
    ///
    /// 根据模板ID获取模板详情
    @inlinable
    public func getEmailTemplate(_ input: GetEmailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEmailTemplateResponse> {
        self.client.execute(action: "GetEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模板详情
    ///
    /// 根据模板ID获取模板详情
    @inlinable
    public func getEmailTemplate(_ input: GetEmailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEmailTemplateResponse {
        try await self.client.execute(action: "GetEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取模板详情
    ///
    /// 根据模板ID获取模板详情
    @inlinable
    public func getEmailTemplate(templateID: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEmailTemplateResponse> {
        let input = GetEmailTemplateRequest(templateID: templateID)
        return self.client.execute(action: "GetEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模板详情
    ///
    /// 根据模板ID获取模板详情
    @inlinable
    public func getEmailTemplate(templateID: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEmailTemplateResponse {
        let input = GetEmailTemplateRequest(templateID: templateID)
        return try await self.client.execute(action: "GetEmailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
