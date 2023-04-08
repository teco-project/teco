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

extension Vms {
    /// SendCodeVoice请求参数结构体
    public struct SendCodeVoiceRequest: TCRequestModel {
        /// 验证码，仅支持填写数字，实际播报语音时，会自动在数字前补充语音文本"您的验证码是"。
        public let codeMessage: String

        /// 被叫手机号码，采用 e.164 标准，格式为+[国家或地区码][用户号码]。
        /// 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let calledNumber: String

        /// 在[语音控制台](https://console.cloud.tencent.com/vms)添加应用后生成的实际SdkAppid，示例如1400006666。
        public let voiceSdkAppid: String

        /// 播放次数，可选，最多3次，默认2次。
        public let playTimes: UInt64?

        /// 用户的 session 内容，腾讯 server 回包中会原样返回。
        public let sessionContext: String?

        public init(codeMessage: String, calledNumber: String, voiceSdkAppid: String, playTimes: UInt64? = nil, sessionContext: String? = nil) {
            self.codeMessage = codeMessage
            self.calledNumber = calledNumber
            self.voiceSdkAppid = voiceSdkAppid
            self.playTimes = playTimes
            self.sessionContext = sessionContext
        }

        enum CodingKeys: String, CodingKey {
            case codeMessage = "CodeMessage"
            case calledNumber = "CalledNumber"
            case voiceSdkAppid = "VoiceSdkAppid"
            case playTimes = "PlayTimes"
            case sessionContext = "SessionContext"
        }
    }

    /// SendCodeVoice返回参数结构体
    public struct SendCodeVoiceResponse: TCResponseModel {
        /// 语音验证码发送状态。
        public let sendStatus: SendStatus

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sendStatus = "SendStatus"
            case requestId = "RequestId"
        }
    }

    /// 发送语音验证码
    ///
    /// 给用户发语音验证码（仅支持数字）。
    @inlinable
    public func sendCodeVoice(_ input: SendCodeVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendCodeVoiceResponse> {
        self.client.execute(action: "SendCodeVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送语音验证码
    ///
    /// 给用户发语音验证码（仅支持数字）。
    @inlinable
    public func sendCodeVoice(_ input: SendCodeVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendCodeVoiceResponse {
        try await self.client.execute(action: "SendCodeVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送语音验证码
    ///
    /// 给用户发语音验证码（仅支持数字）。
    @inlinable
    public func sendCodeVoice(codeMessage: String, calledNumber: String, voiceSdkAppid: String, playTimes: UInt64? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendCodeVoiceResponse> {
        self.sendCodeVoice(.init(codeMessage: codeMessage, calledNumber: calledNumber, voiceSdkAppid: voiceSdkAppid, playTimes: playTimes, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }

    /// 发送语音验证码
    ///
    /// 给用户发语音验证码（仅支持数字）。
    @inlinable
    public func sendCodeVoice(codeMessage: String, calledNumber: String, voiceSdkAppid: String, playTimes: UInt64? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendCodeVoiceResponse {
        try await self.sendCodeVoice(.init(codeMessage: codeMessage, calledNumber: calledNumber, voiceSdkAppid: voiceSdkAppid, playTimes: playTimes, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }
}
