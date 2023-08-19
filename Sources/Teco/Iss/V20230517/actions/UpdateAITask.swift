//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// UpdateAITask请求参数结构体
    public struct UpdateAITaskRequest: TCRequest {
        /// AI 任务 ID
        public let taskId: String

        /// AI 任务名称。仅支持中文、英文、数字、_、-，长度不超过32个字符
        public let name: String?

        /// AI 任务描述。仅支持中文、英文、数字、_、-，长度不超过128个字符
        public let desc: String?

        /// 通道 ID 列表。不能添加存在于其他 AI 任务的通道，限制1000个通道。
        public let channelList: [String]?

        /// AI 结果回调地址。类似 "http://ip:port/xxx或者https://domain/xxx
        public let callbackUrl: String?

        /// 是否立即开启 AI 任务。"true"代表立即开启 AI 任务，"false"代表暂不开启 AI 任务，默认为 false。
        public let isStartTheTask: Bool?

        /// AI 配置列表
        public let templates: [AITemplates]?

        public init(taskId: String, name: String? = nil, desc: String? = nil, channelList: [String]? = nil, callbackUrl: String? = nil, isStartTheTask: Bool? = nil, templates: [AITemplates]? = nil) {
            self.taskId = taskId
            self.name = name
            self.desc = desc
            self.channelList = channelList
            self.callbackUrl = callbackUrl
            self.isStartTheTask = isStartTheTask
            self.templates = templates
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case name = "Name"
            case desc = "Desc"
            case channelList = "ChannelList"
            case callbackUrl = "CallbackUrl"
            case isStartTheTask = "IsStartTheTask"
            case templates = "Templates"
        }
    }

    /// UpdateAITask返回参数结构体
    public struct UpdateAITaskResponse: TCResponse {
        /// AI任务信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: AITaskInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 更新AI任务
    @inlinable
    public func updateAITask(_ input: UpdateAITaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAITaskResponse> {
        self.client.execute(action: "UpdateAITask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新AI任务
    @inlinable
    public func updateAITask(_ input: UpdateAITaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAITaskResponse {
        try await self.client.execute(action: "UpdateAITask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新AI任务
    @inlinable
    public func updateAITask(taskId: String, name: String? = nil, desc: String? = nil, channelList: [String]? = nil, callbackUrl: String? = nil, isStartTheTask: Bool? = nil, templates: [AITemplates]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAITaskResponse> {
        self.updateAITask(.init(taskId: taskId, name: name, desc: desc, channelList: channelList, callbackUrl: callbackUrl, isStartTheTask: isStartTheTask, templates: templates), region: region, logger: logger, on: eventLoop)
    }

    /// 更新AI任务
    @inlinable
    public func updateAITask(taskId: String, name: String? = nil, desc: String? = nil, channelList: [String]? = nil, callbackUrl: String? = nil, isStartTheTask: Bool? = nil, templates: [AITemplates]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAITaskResponse {
        try await self.updateAITask(.init(taskId: taskId, name: name, desc: desc, channelList: channelList, callbackUrl: callbackUrl, isStartTheTask: isStartTheTask, templates: templates), region: region, logger: logger, on: eventLoop)
    }
}
