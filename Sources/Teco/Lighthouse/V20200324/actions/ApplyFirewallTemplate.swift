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

extension Lighthouse {
    /// ApplyFirewallTemplate请求参数结构体
    public struct ApplyFirewallTemplateRequest: TCRequest {
        /// 模板ID。
        public let templateId: String

        /// 应用防火墙模板的实例列表。
        public let applyInstances: [InstanceIdentifier]

        public init(templateId: String, applyInstances: [InstanceIdentifier]) {
            self.templateId = templateId
            self.applyInstances = applyInstances
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case applyInstances = "ApplyInstances"
        }
    }

    /// ApplyFirewallTemplate返回参数结构体
    public struct ApplyFirewallTemplateResponse: TCResponse {
        /// 任务ID。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 应用防火墙模板
    ///
    /// 本接口 (ApplyFirewallTemplate) 用于应用防火墙模板到多个实例。
    @inlinable
    public func applyFirewallTemplate(_ input: ApplyFirewallTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyFirewallTemplateResponse> {
        self.client.execute(action: "ApplyFirewallTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用防火墙模板
    ///
    /// 本接口 (ApplyFirewallTemplate) 用于应用防火墙模板到多个实例。
    @inlinable
    public func applyFirewallTemplate(_ input: ApplyFirewallTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyFirewallTemplateResponse {
        try await self.client.execute(action: "ApplyFirewallTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用防火墙模板
    ///
    /// 本接口 (ApplyFirewallTemplate) 用于应用防火墙模板到多个实例。
    @inlinable
    public func applyFirewallTemplate(templateId: String, applyInstances: [InstanceIdentifier], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyFirewallTemplateResponse> {
        self.applyFirewallTemplate(.init(templateId: templateId, applyInstances: applyInstances), region: region, logger: logger, on: eventLoop)
    }

    /// 应用防火墙模板
    ///
    /// 本接口 (ApplyFirewallTemplate) 用于应用防火墙模板到多个实例。
    @inlinable
    public func applyFirewallTemplate(templateId: String, applyInstances: [InstanceIdentifier], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyFirewallTemplateResponse {
        try await self.applyFirewallTemplate(.init(templateId: templateId, applyInstances: applyInstances), region: region, logger: logger, on: eventLoop)
    }
}
