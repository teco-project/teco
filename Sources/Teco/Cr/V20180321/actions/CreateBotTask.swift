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
    /// CreateBotTask请求参数结构体
    public struct CreateBotTaskRequest: TCRequestModel {
        /// 模块名。默认值（固定）：AiApi
        public let module: String

        /// 操作名。默认值（固定）：CreateTask
        public let operation: String

        /// 任务名称
        public let botName: String

        /// 对话流ID
        public let flowId: String

        /// 是否禁止拨打，默认Y
        public let banCall: String

        /// 拨打线路集合
        public let phoneCollection: String

        /// 产品拨打时间集合
        public let callTimeCollection: CallTimeDict?

        /// 禁止拨打起始时间。默认130000
        public let startTimeBan: String?

        /// 禁止拨打结束时间。默认140000
        public let endTimeBan: String?

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

        /// 拨打方式。NORMAL - 正常拨打；TIMER - 定时拨打
        public let callType: String?

        /// 拨打开始日期。CallType=TIMER时有值，yyyy-MM-dd
        public let callStartDate: String?

        /// 拨打结束日期。CallType=PERIOD 时有值，yyyy-MM-dd
        public let callEndDate: String?

        public init(module: String, operation: String, botName: String, flowId: String, banCall: String, phoneCollection: String, callTimeCollection: CallTimeDict? = nil, startTimeBan: String? = nil, endTimeBan: String? = nil, codeType: String? = nil, codeCollection: String? = nil, callCount: Int64? = nil, callInterval: Int64? = nil, smsSignId: String? = nil, smsTemplateId: String? = nil, callType: String? = nil, callStartDate: String? = nil, callEndDate: String? = nil) {
            self.module = module
            self.operation = operation
            self.botName = botName
            self.flowId = flowId
            self.banCall = banCall
            self.phoneCollection = phoneCollection
            self.callTimeCollection = callTimeCollection
            self.startTimeBan = startTimeBan
            self.endTimeBan = endTimeBan
            self.codeType = codeType
            self.codeCollection = codeCollection
            self.callCount = callCount
            self.callInterval = callInterval
            self.smsSignId = smsSignId
            self.smsTemplateId = smsTemplateId
            self.callType = callType
            self.callStartDate = callStartDate
            self.callEndDate = callEndDate
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case botName = "BotName"
            case flowId = "FlowId"
            case banCall = "BanCall"
            case phoneCollection = "PhoneCollection"
            case callTimeCollection = "CallTimeCollection"
            case startTimeBan = "StartTimeBan"
            case endTimeBan = "EndTimeBan"
            case codeType = "CodeType"
            case codeCollection = "CodeCollection"
            case callCount = "CallCount"
            case callInterval = "CallInterval"
            case smsSignId = "SmsSignId"
            case smsTemplateId = "SmsTemplateId"
            case callType = "CallType"
            case callStartDate = "CallStartDate"
            case callEndDate = "CallEndDate"
        }
    }

    /// CreateBotTask返回参数结构体
    public struct CreateBotTaskResponse: TCResponseModel {
        /// 机器人任务Id
        public let botId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case botId = "BotId"
            case requestId = "RequestId"
        }
    }

    /// 创建机器人任务
    @inlinable
    public func createBotTask(_ input: CreateBotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBotTaskResponse> {
        self.client.execute(action: "CreateBotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建机器人任务
    @inlinable
    public func createBotTask(_ input: CreateBotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBotTaskResponse {
        try await self.client.execute(action: "CreateBotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建机器人任务
    @inlinable
    public func createBotTask(module: String, operation: String, botName: String, flowId: String, banCall: String, phoneCollection: String, callTimeCollection: CallTimeDict? = nil, startTimeBan: String? = nil, endTimeBan: String? = nil, codeType: String? = nil, codeCollection: String? = nil, callCount: Int64? = nil, callInterval: Int64? = nil, smsSignId: String? = nil, smsTemplateId: String? = nil, callType: String? = nil, callStartDate: String? = nil, callEndDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBotTaskResponse> {
        self.createBotTask(.init(module: module, operation: operation, botName: botName, flowId: flowId, banCall: banCall, phoneCollection: phoneCollection, callTimeCollection: callTimeCollection, startTimeBan: startTimeBan, endTimeBan: endTimeBan, codeType: codeType, codeCollection: codeCollection, callCount: callCount, callInterval: callInterval, smsSignId: smsSignId, smsTemplateId: smsTemplateId, callType: callType, callStartDate: callStartDate, callEndDate: callEndDate), region: region, logger: logger, on: eventLoop)
    }

    /// 创建机器人任务
    @inlinable
    public func createBotTask(module: String, operation: String, botName: String, flowId: String, banCall: String, phoneCollection: String, callTimeCollection: CallTimeDict? = nil, startTimeBan: String? = nil, endTimeBan: String? = nil, codeType: String? = nil, codeCollection: String? = nil, callCount: Int64? = nil, callInterval: Int64? = nil, smsSignId: String? = nil, smsTemplateId: String? = nil, callType: String? = nil, callStartDate: String? = nil, callEndDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBotTaskResponse {
        try await self.createBotTask(.init(module: module, operation: operation, botName: botName, flowId: flowId, banCall: banCall, phoneCollection: phoneCollection, callTimeCollection: callTimeCollection, startTimeBan: startTimeBan, endTimeBan: endTimeBan, codeType: codeType, codeCollection: codeCollection, callCount: callCount, callInterval: callInterval, smsSignId: smsSignId, smsTemplateId: smsTemplateId, callType: callType, callStartDate: callStartDate, callEndDate: callEndDate), region: region, logger: logger, on: eventLoop)
    }
}
