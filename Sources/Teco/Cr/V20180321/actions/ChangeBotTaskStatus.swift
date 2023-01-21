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

extension Cr {
    /// ChangeBotTaskStatus请求参数结构体
    public struct ChangeBotTaskStatusRequest: TCRequestModel {
        /// 模块名。默认值（固定）：AiApi
        public let module: String

        /// 操作名。默认值（固定）：ChangeBotTaskStatus
        public let operation: String

        /// 作业变更状态
        /// SUSPEND：暂停；EXECUTE：恢复；
        public let status: String

        /// 任务ID，二者必填一个
        public let botId: String?

        /// 任务名称，二者必填一个
        public let botName: String?

        public init(module: String, operation: String, status: String, botId: String? = nil, botName: String? = nil) {
            self.module = module
            self.operation = operation
            self.status = status
            self.botId = botId
            self.botName = botName
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case status = "Status"
            case botId = "BotId"
            case botName = "BotName"
        }
    }

    /// ChangeBotTaskStatus返回参数结构体
    public struct ChangeBotTaskStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新机器人任务状态
    @inlinable @discardableResult
    public func changeBotTaskStatus(_ input: ChangeBotTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeBotTaskStatusResponse> {
        self.client.execute(action: "ChangeBotTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新机器人任务状态
    @inlinable @discardableResult
    public func changeBotTaskStatus(_ input: ChangeBotTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeBotTaskStatusResponse {
        try await self.client.execute(action: "ChangeBotTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新机器人任务状态
    @inlinable @discardableResult
    public func changeBotTaskStatus(module: String, operation: String, status: String, botId: String? = nil, botName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeBotTaskStatusResponse> {
        self.changeBotTaskStatus(ChangeBotTaskStatusRequest(module: module, operation: operation, status: status, botId: botId, botName: botName), region: region, logger: logger, on: eventLoop)
    }

    /// 更新机器人任务状态
    @inlinable @discardableResult
    public func changeBotTaskStatus(module: String, operation: String, status: String, botId: String? = nil, botName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeBotTaskStatusResponse {
        try await self.changeBotTaskStatus(ChangeBotTaskStatusRequest(module: module, operation: operation, status: status, botId: botId, botName: botName), region: region, logger: logger, on: eventLoop)
    }
}
