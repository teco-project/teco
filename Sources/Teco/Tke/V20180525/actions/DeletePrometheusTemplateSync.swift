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

extension Tke {
    /// DeletePrometheusTemplateSync请求参数结构体
    public struct DeletePrometheusTemplateSyncRequest: TCRequest {
        /// 模板id
        public let templateId: String

        /// 取消同步的对象列表
        public let targets: [PrometheusTemplateSyncTarget]

        public init(templateId: String, targets: [PrometheusTemplateSyncTarget]) {
            self.templateId = templateId
            self.targets = targets
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case targets = "Targets"
        }
    }

    /// DeletePrometheusTemplateSync返回参数结构体
    public struct DeletePrometheusTemplateSyncResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消模板同步
    ///
    /// 取消模板同步，这将会删除目标中该模板所生产的配置
    @inlinable @discardableResult
    public func deletePrometheusTemplateSync(_ input: DeletePrometheusTemplateSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusTemplateSyncResponse> {
        self.client.execute(action: "DeletePrometheusTemplateSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消模板同步
    ///
    /// 取消模板同步，这将会删除目标中该模板所生产的配置
    @inlinable @discardableResult
    public func deletePrometheusTemplateSync(_ input: DeletePrometheusTemplateSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusTemplateSyncResponse {
        try await self.client.execute(action: "DeletePrometheusTemplateSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消模板同步
    ///
    /// 取消模板同步，这将会删除目标中该模板所生产的配置
    @inlinable @discardableResult
    public func deletePrometheusTemplateSync(templateId: String, targets: [PrometheusTemplateSyncTarget], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusTemplateSyncResponse> {
        self.deletePrometheusTemplateSync(.init(templateId: templateId, targets: targets), region: region, logger: logger, on: eventLoop)
    }

    /// 取消模板同步
    ///
    /// 取消模板同步，这将会删除目标中该模板所生产的配置
    @inlinable @discardableResult
    public func deletePrometheusTemplateSync(templateId: String, targets: [PrometheusTemplateSyncTarget], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusTemplateSyncResponse {
        try await self.deletePrometheusTemplateSync(.init(templateId: templateId, targets: targets), region: region, logger: logger, on: eventLoop)
    }
}
