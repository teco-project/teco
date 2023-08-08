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

extension Tbp {
    /// TextProcess请求参数结构体
    public struct TextProcessRequest: TCRequestModel {
        /// 机器人标识，用于定义抽象机器人。
        public let botId: String

        /// 机器人版本，取值"dev"或"release"，{调试版本：dev；线上版本：release}。
        public let botEnv: String

        /// 终端标识，每个终端(或线程)对应一个，区分并发多用户。
        public let terminalId: String

        /// 请求的文本。
        public let inputText: String

        /// 透传字段，透传给用户自定义的WebService服务。
        public let sessionAttributes: String?

        /// 平台类型，{小程序：MiniProgram；小微：XiaoWei；公众号：OfficialAccount；企业微信: WXWork}。
        public let platformType: String?

        /// 当PlatformType为微信公众号或企业微信时，传递对应微信公众号或企业微信的唯一标识
        public let platformId: String?

        public init(botId: String, botEnv: String, terminalId: String, inputText: String, sessionAttributes: String? = nil, platformType: String? = nil, platformId: String? = nil) {
            self.botId = botId
            self.botEnv = botEnv
            self.terminalId = terminalId
            self.inputText = inputText
            self.sessionAttributes = sessionAttributes
            self.platformType = platformType
            self.platformId = platformId
        }

        enum CodingKeys: String, CodingKey {
            case botId = "BotId"
            case botEnv = "BotEnv"
            case terminalId = "TerminalId"
            case inputText = "InputText"
            case sessionAttributes = "SessionAttributes"
            case platformType = "PlatformType"
            case platformId = "PlatformId"
        }
    }

    /// TextProcess返回参数结构体
    public struct TextProcessResponse: TCResponseModel {
        /// 当前会话状态{会话开始: START; 会话中: COUTINUE; 会话结束: COMPLETE}。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dialogStatus: String?

        /// 匹配到的机器人名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let botName: String?

        /// 匹配到的意图名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentName: String?

        /// 槽位信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slotInfoList: [SlotInfo]?

        /// 原始的用户说法。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inputText: String?

        /// 机器人应答。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let responseMessage: ResponseMessage?

        /// 透传字段，由用户自定义的WebService服务返回。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessionAttributes: String?

        /// 结果类型 {中间逻辑出错:0; 任务型机器人:1; 问答型机器人:2; 闲聊型机器人:3; 未匹配上，返回预设兜底话术:5; 未匹配上，返回相似问题列表:6}。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultType: String?

        /// 机器人对话的应答文本。
        public let responseText: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dialogStatus = "DialogStatus"
            case botName = "BotName"
            case intentName = "IntentName"
            case slotInfoList = "SlotInfoList"
            case inputText = "InputText"
            case responseMessage = "ResponseMessage"
            case sessionAttributes = "SessionAttributes"
            case resultType = "ResultType"
            case responseText = "ResponseText"
            case requestId = "RequestId"
        }
    }

    /// 文本处理
    ///
    /// 接收调用侧的文本输入，返回应答文本。
    @inlinable
    public func textProcess(_ input: TextProcessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextProcessResponse> {
        self.client.execute(action: "TextProcess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本处理
    ///
    /// 接收调用侧的文本输入，返回应答文本。
    @inlinable
    public func textProcess(_ input: TextProcessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextProcessResponse {
        try await self.client.execute(action: "TextProcess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本处理
    ///
    /// 接收调用侧的文本输入，返回应答文本。
    @inlinable
    public func textProcess(botId: String, botEnv: String, terminalId: String, inputText: String, sessionAttributes: String? = nil, platformType: String? = nil, platformId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextProcessResponse> {
        self.textProcess(.init(botId: botId, botEnv: botEnv, terminalId: terminalId, inputText: inputText, sessionAttributes: sessionAttributes, platformType: platformType, platformId: platformId), region: region, logger: logger, on: eventLoop)
    }

    /// 文本处理
    ///
    /// 接收调用侧的文本输入，返回应答文本。
    @inlinable
    public func textProcess(botId: String, botEnv: String, terminalId: String, inputText: String, sessionAttributes: String? = nil, platformType: String? = nil, platformId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextProcessResponse {
        try await self.textProcess(.init(botId: botId, botEnv: botEnv, terminalId: terminalId, inputText: inputText, sessionAttributes: sessionAttributes, platformType: platformType, platformId: platformId), region: region, logger: logger, on: eventLoop)
    }
}
