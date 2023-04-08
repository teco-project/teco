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

extension Tke {
    /// CreatePrometheusTemplate请求参数结构体
    public struct CreatePrometheusTemplateRequest: TCRequestModel {
        /// 模板设置
        public let template: PrometheusTemplate

        public init(template: PrometheusTemplate) {
            self.template = template
        }

        enum CodingKeys: String, CodingKey {
            case template = "Template"
        }
    }

    /// CreatePrometheusTemplate返回参数结构体
    public struct CreatePrometheusTemplateResponse: TCResponseModel {
        /// 模板Id
        public let templateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }

    /// 创建模板
    ///
    /// 创建一个云原生Prometheus模板实例
    @inlinable
    public func createPrometheusTemplate(_ input: CreatePrometheusTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusTemplateResponse> {
        self.client.execute(action: "CreatePrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建模板
    ///
    /// 创建一个云原生Prometheus模板实例
    @inlinable
    public func createPrometheusTemplate(_ input: CreatePrometheusTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusTemplateResponse {
        try await self.client.execute(action: "CreatePrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建模板
    ///
    /// 创建一个云原生Prometheus模板实例
    @inlinable
    public func createPrometheusTemplate(template: PrometheusTemplate, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusTemplateResponse> {
        self.createPrometheusTemplate(.init(template: template), region: region, logger: logger, on: eventLoop)
    }

    /// 创建模板
    ///
    /// 创建一个云原生Prometheus模板实例
    @inlinable
    public func createPrometheusTemplate(template: PrometheusTemplate, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusTemplateResponse {
        try await self.createPrometheusTemplate(.init(template: template), region: region, logger: logger, on: eventLoop)
    }
}
