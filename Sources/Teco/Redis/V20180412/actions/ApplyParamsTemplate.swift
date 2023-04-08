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

extension Redis {
    /// ApplyParamsTemplate请求参数结构体
    public struct ApplyParamsTemplateRequest: TCRequestModel {
        /// 实例ID列表
        public let instanceIds: [String]

        /// 应用的参数模板ID
        public let templateId: String

        public init(instanceIds: [String], templateId: String) {
            self.instanceIds = instanceIds
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case templateId = "TemplateId"
        }
    }

    /// ApplyParamsTemplate返回参数结构体
    public struct ApplyParamsTemplateResponse: TCResponseModel {
        /// 任务ID
        public let taskIds: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case requestId = "RequestId"
        }
    }

    /// 应用参数模板
    ///
    /// 应用参数模板到实例
    @inlinable
    public func applyParamsTemplate(_ input: ApplyParamsTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyParamsTemplateResponse> {
        self.client.execute(action: "ApplyParamsTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用参数模板
    ///
    /// 应用参数模板到实例
    @inlinable
    public func applyParamsTemplate(_ input: ApplyParamsTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyParamsTemplateResponse {
        try await self.client.execute(action: "ApplyParamsTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用参数模板
    ///
    /// 应用参数模板到实例
    @inlinable
    public func applyParamsTemplate(instanceIds: [String], templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyParamsTemplateResponse> {
        self.applyParamsTemplate(.init(instanceIds: instanceIds, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 应用参数模板
    ///
    /// 应用参数模板到实例
    @inlinable
    public func applyParamsTemplate(instanceIds: [String], templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyParamsTemplateResponse {
        try await self.applyParamsTemplate(.init(instanceIds: instanceIds, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
