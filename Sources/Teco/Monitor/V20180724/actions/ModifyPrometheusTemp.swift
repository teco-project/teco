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

extension Monitor {
    /// ModifyPrometheusTemp请求参数结构体
    public struct ModifyPrometheusTempRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        /// 修改内容
        public let template: PrometheusTempModify

        public init(templateId: String, template: PrometheusTempModify) {
            self.templateId = templateId
            self.template = template
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case template = "Template"
        }
    }

    /// ModifyPrometheusTemp返回参数结构体
    public struct ModifyPrometheusTempResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模板实例
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemp(_ input: ModifyPrometheusTempRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusTempResponse> {
        self.client.execute(action: "ModifyPrometheusTemp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模板实例
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemp(_ input: ModifyPrometheusTempRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusTempResponse {
        try await self.client.execute(action: "ModifyPrometheusTemp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模板实例
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemp(templateId: String, template: PrometheusTempModify, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusTempResponse> {
        self.modifyPrometheusTemp(.init(templateId: templateId, template: template), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模板实例
    ///
    /// 修改模板内容
    @inlinable @discardableResult
    public func modifyPrometheusTemp(templateId: String, template: PrometheusTempModify, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusTempResponse {
        try await self.modifyPrometheusTemp(.init(templateId: templateId, template: template), region: region, logger: logger, on: eventLoop)
    }
}
