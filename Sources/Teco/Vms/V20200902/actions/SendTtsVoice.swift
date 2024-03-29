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

extension Vms {
    /// SendTtsVoice请求参数结构体
    public struct SendTtsVoiceRequest: TCRequest {
        /// 模板 ID，在控制台审核通过的模板 ID。
        public let templateId: String

        /// 被叫手机号码，采用 e.164 标准，格式为+[国家或地区码][用户号码]。
        /// 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let calledNumber: String

        /// 在[语音控制台](https://console.cloud.tencent.com/vms)添加应用后生成的实际SdkAppid，示例如1400006666。
        public let voiceSdkAppid: String

        /// 模板参数，若模板没有参数，请提供为空数组。
        /// 注：语音消息的内容长度不超过350字。
        public let templateParamSet: [String]?

        /// 播放次数，可选，最多3次，默认2次。
        public let playTimes: UInt64?

        /// 用户的 session 内容，腾讯 server 回包中会原样返回。
        public let sessionContext: String?

        public init(templateId: String, calledNumber: String, voiceSdkAppid: String, templateParamSet: [String]? = nil, playTimes: UInt64? = nil, sessionContext: String? = nil) {
            self.templateId = templateId
            self.calledNumber = calledNumber
            self.voiceSdkAppid = voiceSdkAppid
            self.templateParamSet = templateParamSet
            self.playTimes = playTimes
            self.sessionContext = sessionContext
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case calledNumber = "CalledNumber"
            case voiceSdkAppid = "VoiceSdkAppid"
            case templateParamSet = "TemplateParamSet"
            case playTimes = "PlayTimes"
            case sessionContext = "SessionContext"
        }
    }

    /// SendTtsVoice返回参数结构体
    public struct SendTtsVoiceResponse: TCResponse {
        /// 语音通知发送状态。
        public let sendStatus: SendStatus

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sendStatus = "SendStatus"
            case requestId = "RequestId"
        }
    }

    /// 指定模板发送语音通知
    ///
    /// 给用户发送指定模板的语音通知。
    @inlinable
    public func sendTtsVoice(_ input: SendTtsVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendTtsVoiceResponse> {
        self.client.execute(action: "SendTtsVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 指定模板发送语音通知
    ///
    /// 给用户发送指定模板的语音通知。
    @inlinable
    public func sendTtsVoice(_ input: SendTtsVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendTtsVoiceResponse {
        try await self.client.execute(action: "SendTtsVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 指定模板发送语音通知
    ///
    /// 给用户发送指定模板的语音通知。
    @inlinable
    public func sendTtsVoice(templateId: String, calledNumber: String, voiceSdkAppid: String, templateParamSet: [String]? = nil, playTimes: UInt64? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendTtsVoiceResponse> {
        self.sendTtsVoice(.init(templateId: templateId, calledNumber: calledNumber, voiceSdkAppid: voiceSdkAppid, templateParamSet: templateParamSet, playTimes: playTimes, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }

    /// 指定模板发送语音通知
    ///
    /// 给用户发送指定模板的语音通知。
    @inlinable
    public func sendTtsVoice(templateId: String, calledNumber: String, voiceSdkAppid: String, templateParamSet: [String]? = nil, playTimes: UInt64? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendTtsVoiceResponse {
        try await self.sendTtsVoice(.init(templateId: templateId, calledNumber: calledNumber, voiceSdkAppid: voiceSdkAppid, templateParamSet: templateParamSet, playTimes: playTimes, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }
}
