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

extension Cfg {
    /// CreateTaskFromTemplate请求参数结构体
    public struct CreateTaskFromTemplateRequest: TCRequestModel {
        /// 从经验库中查询到的经验模板ID
        public let templateId: UInt64

        /// 演练的配置参数
        public let taskConfig: TaskConfig

        public init(templateId: UInt64, taskConfig: TaskConfig) {
            self.templateId = templateId
            self.taskConfig = taskConfig
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case taskConfig = "TaskConfig"
        }
    }

    /// CreateTaskFromTemplate返回参数结构体
    public struct CreateTaskFromTemplateResponse: TCResponseModel {
        /// 创建成功的演练ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 从经验库创建演练
    @inlinable
    public func createTaskFromTemplate(_ input: CreateTaskFromTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskFromTemplateResponse> {
        self.client.execute(action: "CreateTaskFromTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从经验库创建演练
    @inlinable
    public func createTaskFromTemplate(_ input: CreateTaskFromTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskFromTemplateResponse {
        try await self.client.execute(action: "CreateTaskFromTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从经验库创建演练
    @inlinable
    public func createTaskFromTemplate(templateId: UInt64, taskConfig: TaskConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskFromTemplateResponse> {
        self.createTaskFromTemplate(.init(templateId: templateId, taskConfig: taskConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 从经验库创建演练
    @inlinable
    public func createTaskFromTemplate(templateId: UInt64, taskConfig: TaskConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskFromTemplateResponse {
        try await self.createTaskFromTemplate(.init(templateId: templateId, taskConfig: taskConfig), region: region, logger: logger, on: eventLoop)
    }
}
