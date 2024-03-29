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

extension Cr {
    /// UpdateBotTask请求参数结构体
    public struct UpdateBotTaskRequest: TCRequest {
        /// 模块名。默认值（固定）：AiApi
        public let module: String

        /// 操作名。默认值（固定）：UpdateTask
        public let operation: String

        /// 任务名称
        public let botName: String?

        /// 任务ID
        public let botId: String?

        /// 产品拨打时间集合
        public let callTimeCollection: CallTimeDict?

        /// 是否禁止拨打，默认Y
        public let banCall: String?

        /// 禁止拨打起始时间。默认130000
        public let startTimeBan: String?

        /// 禁止拨打结束时间。默认140000
        public let endTimeBan: String?

        /// 拨打线路集合
        public let phoneCollection: String?

        /// 重播方式，NON：未接通、LABEL：意向分级，可多选，用竖线分隔：NON|LABEL
        public let codeType: String?

        /// 重播值集合，A：强意向、B：中意向、C：低意向、D：无意向、E：在忙、F：未接通、G：无效号码，可多选，用竖线分隔：A|B|C|D|E|F|G
        public let codeCollection: String?

        /// 继续拨打次数
        public let callCount: Int64?

        /// 拨打间隔
        public let callInterval: Int64?

        /// 未接通引用短信签名ID
        public let smsSignId: String?

        /// 未接通引用短信模板ID
        public let smsTemplateId: String?

        public init(module: String, operation: String, botName: String? = nil, botId: String? = nil, callTimeCollection: CallTimeDict? = nil, banCall: String? = nil, startTimeBan: String? = nil, endTimeBan: String? = nil, phoneCollection: String? = nil, codeType: String? = nil, codeCollection: String? = nil, callCount: Int64? = nil, callInterval: Int64? = nil, smsSignId: String? = nil, smsTemplateId: String? = nil) {
            self.module = module
            self.operation = operation
            self.botName = botName
            self.botId = botId
            self.callTimeCollection = callTimeCollection
            self.banCall = banCall
            self.startTimeBan = startTimeBan
            self.endTimeBan = endTimeBan
            self.phoneCollection = phoneCollection
            self.codeType = codeType
            self.codeCollection = codeCollection
            self.callCount = callCount
            self.callInterval = callInterval
            self.smsSignId = smsSignId
            self.smsTemplateId = smsTemplateId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case botName = "BotName"
            case botId = "BotId"
            case callTimeCollection = "CallTimeCollection"
            case banCall = "BanCall"
            case startTimeBan = "StartTimeBan"
            case endTimeBan = "EndTimeBan"
            case phoneCollection = "PhoneCollection"
            case codeType = "CodeType"
            case codeCollection = "CodeCollection"
            case callCount = "CallCount"
            case callInterval = "CallInterval"
            case smsSignId = "SmsSignId"
            case smsTemplateId = "SmsTemplateId"
        }
    }

    /// UpdateBotTask返回参数结构体
    public struct UpdateBotTaskResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新机器人任务
    @inlinable @discardableResult
    public func updateBotTask(_ input: UpdateBotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBotTaskResponse> {
        self.client.execute(action: "UpdateBotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新机器人任务
    @inlinable @discardableResult
    public func updateBotTask(_ input: UpdateBotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBotTaskResponse {
        try await self.client.execute(action: "UpdateBotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新机器人任务
    @inlinable @discardableResult
    public func updateBotTask(module: String, operation: String, botName: String? = nil, botId: String? = nil, callTimeCollection: CallTimeDict? = nil, banCall: String? = nil, startTimeBan: String? = nil, endTimeBan: String? = nil, phoneCollection: String? = nil, codeType: String? = nil, codeCollection: String? = nil, callCount: Int64? = nil, callInterval: Int64? = nil, smsSignId: String? = nil, smsTemplateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBotTaskResponse> {
        self.updateBotTask(.init(module: module, operation: operation, botName: botName, botId: botId, callTimeCollection: callTimeCollection, banCall: banCall, startTimeBan: startTimeBan, endTimeBan: endTimeBan, phoneCollection: phoneCollection, codeType: codeType, codeCollection: codeCollection, callCount: callCount, callInterval: callInterval, smsSignId: smsSignId, smsTemplateId: smsTemplateId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新机器人任务
    @inlinable @discardableResult
    public func updateBotTask(module: String, operation: String, botName: String? = nil, botId: String? = nil, callTimeCollection: CallTimeDict? = nil, banCall: String? = nil, startTimeBan: String? = nil, endTimeBan: String? = nil, phoneCollection: String? = nil, codeType: String? = nil, codeCollection: String? = nil, callCount: Int64? = nil, callInterval: Int64? = nil, smsSignId: String? = nil, smsTemplateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBotTaskResponse {
        try await self.updateBotTask(.init(module: module, operation: operation, botName: botName, botId: botId, callTimeCollection: callTimeCollection, banCall: banCall, startTimeBan: startTimeBan, endTimeBan: endTimeBan, phoneCollection: phoneCollection, codeType: codeType, codeCollection: codeCollection, callCount: callCount, callInterval: callInterval, smsSignId: smsSignId, smsTemplateId: smsTemplateId), region: region, logger: logger, on: eventLoop)
    }
}
