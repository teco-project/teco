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
    /// SyncPrometheusTemplate请求参数结构体
    public struct SyncPrometheusTemplateRequest: TCRequestModel {
        /// 实例id
        public let templateId: String

        /// 同步目标
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

    /// SyncPrometheusTemplate返回参数结构体
    public struct SyncPrometheusTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 同步模板到实例或者集群
    @inlinable @discardableResult
    public func syncPrometheusTemplate(_ input: SyncPrometheusTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncPrometheusTemplateResponse> {
        self.client.execute(action: "SyncPrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 同步模板到实例或者集群
    @inlinable @discardableResult
    public func syncPrometheusTemplate(_ input: SyncPrometheusTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncPrometheusTemplateResponse {
        try await self.client.execute(action: "SyncPrometheusTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 同步模板到实例或者集群
    @inlinable @discardableResult
    public func syncPrometheusTemplate(templateId: String, targets: [PrometheusTemplateSyncTarget], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncPrometheusTemplateResponse> {
        self.syncPrometheusTemplate(.init(templateId: templateId, targets: targets), region: region, logger: logger, on: eventLoop)
    }

    /// 同步模板到实例或者集群
    @inlinable @discardableResult
    public func syncPrometheusTemplate(templateId: String, targets: [PrometheusTemplateSyncTarget], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncPrometheusTemplateResponse {
        try await self.syncPrometheusTemplate(.init(templateId: templateId, targets: targets), region: region, logger: logger, on: eventLoop)
    }
}
