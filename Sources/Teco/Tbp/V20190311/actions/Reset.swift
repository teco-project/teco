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

extension Tbp {
    /// Reset请求参数结构体
    public struct ResetRequest: TCRequestModel {
        /// 机器人标识
        public let botId: String

        /// 子账户id，每个终端对应一个
        public let userId: String

        /// 机器人版本号。BotVersion/BotEnv二选一：二者均填，仅BotVersion有效；二者均不填，默认BotEnv=dev
        public let botVersion: String?

        /// 机器人环境{dev:测试;release:线上}。BotVersion/BotEnv二选一：二者均填，仅BotVersion有效；二者均不填，默认BotEnv=dev
        public let botEnv: String?

        public init(botId: String, userId: String, botVersion: String? = nil, botEnv: String? = nil) {
            self.botId = botId
            self.userId = userId
            self.botVersion = botVersion
            self.botEnv = botEnv
        }

        enum CodingKeys: String, CodingKey {
            case botId = "BotId"
            case userId = "UserId"
            case botVersion = "BotVersion"
            case botEnv = "BotEnv"
        }
    }

    /// Reset返回参数结构体
    public struct ResetResponse: TCResponseModel {
        /// 当前会话状态。取值:"start"/"continue"/"complete"
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dialogStatus: String?

        /// 匹配到的机器人名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let botName: String?

        /// 匹配到的意图名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intentName: String?

        /// 机器人回答
        public let responseText: String

        /// 语义解析的槽位结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slotInfoList: [SlotInfo]?

        /// 透传字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessionAttributes: String?

        /// 用户说法。该说法是用户原生说法或ASR识别结果，未经过语义优化
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let question: String?

        /// tts合成pcm音频存储链接。仅当请求参数NeedTts=true时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let waveUrl: String?

        /// tts合成的pcm音频。二进制数组经过base64编码(暂时不返回)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let waveData: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dialogStatus = "DialogStatus"
            case botName = "BotName"
            case intentName = "IntentName"
            case responseText = "ResponseText"
            case slotInfoList = "SlotInfoList"
            case sessionAttributes = "SessionAttributes"
            case question = "Question"
            case waveUrl = "WaveUrl"
            case waveData = "WaveData"
            case requestId = "RequestId"
        }
    }

    /// 复位
    ///
    /// 对当前机器人的会话状态进行复位
    @inlinable
    public func reset(_ input: ResetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetResponse> {
        self.client.execute(action: "Reset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复位
    ///
    /// 对当前机器人的会话状态进行复位
    @inlinable
    public func reset(_ input: ResetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetResponse {
        try await self.client.execute(action: "Reset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复位
    ///
    /// 对当前机器人的会话状态进行复位
    @inlinable
    public func reset(botId: String, userId: String, botVersion: String? = nil, botEnv: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetResponse> {
        let input = ResetRequest(botId: botId, userId: userId, botVersion: botVersion, botEnv: botEnv)
        return self.client.execute(action: "Reset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复位
    ///
    /// 对当前机器人的会话状态进行复位
    @inlinable
    public func reset(botId: String, userId: String, botVersion: String? = nil, botEnv: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetResponse {
        let input = ResetRequest(botId: botId, userId: userId, botVersion: botVersion, botEnv: botEnv)
        return try await self.client.execute(action: "Reset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
