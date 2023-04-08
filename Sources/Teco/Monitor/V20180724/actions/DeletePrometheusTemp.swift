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

extension Monitor {
    /// DeletePrometheusTemp请求参数结构体
    public struct DeletePrometheusTempRequest: TCRequestModel {
        /// 模板id
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DeletePrometheusTemp返回参数结构体
    public struct DeletePrometheusTempResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除模板实例
    ///
    /// 删除一个云原生Prometheus配置模板
    @inlinable @discardableResult
    public func deletePrometheusTemp(_ input: DeletePrometheusTempRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusTempResponse> {
        self.client.execute(action: "DeletePrometheusTemp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除模板实例
    ///
    /// 删除一个云原生Prometheus配置模板
    @inlinable @discardableResult
    public func deletePrometheusTemp(_ input: DeletePrometheusTempRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusTempResponse {
        try await self.client.execute(action: "DeletePrometheusTemp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除模板实例
    ///
    /// 删除一个云原生Prometheus配置模板
    @inlinable @discardableResult
    public func deletePrometheusTemp(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusTempResponse> {
        self.deletePrometheusTemp(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除模板实例
    ///
    /// 删除一个云原生Prometheus配置模板
    @inlinable @discardableResult
    public func deletePrometheusTemp(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusTempResponse {
        try await self.deletePrometheusTemp(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
