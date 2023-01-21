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

extension Aai {
    /// TextToVoice请求参数结构体
    public struct TextToVoiceRequest: TCRequestModel {
        /// 合成语音的源文本，按UTF-8编码统一计算。
        /// 中文最大支持100个汉字（全角标点符号算一个汉字）；英文最大支持400个字母（半角标点符号算一个字母）。包含空格等字符时需要url encode再传输。
        public let text: String

        /// 一次请求对应一个SessionId，会原样返回，建议传入类似于uuid的字符串防止重复。
        public let sessionId: String

        /// 模型类型，1-默认模型。
        public let modelType: Int64

        /// 音量大小，范围：[0，10]，分别对应11个等级的音量，默认为0，代表正常音量。没有静音选项。
        /// 输入除以上整数之外的其他参数不生效，按默认值处理。
        public let volume: Float?

        /// 语速，范围：[-2，2]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li>输入除以上整数之外的其他参数不生效，按默认值处理。
        public let speed: Float?

        /// 项目id，用户自定义，默认为0。
        public let projectId: Int64?

        /// 音色<li>0-亲和女声(默认)</li><li>1-亲和男声</li><li>2-成熟男声</li><li>3-活力男声</li><li>4-温暖女声</li><li>5-情感女声</li><li>6-情感男声</li>
        public let voiceType: Int64?

        /// 主语言类型：<li>1-中文（默认）</li><li>2-英文</li>
        public let primaryLanguage: UInt64?

        /// 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        public let sampleRate: UInt64?

        /// 返回音频格式，可取值：wav（默认），mp3
        public let codec: String?

        public init(text: String, sessionId: String, modelType: Int64, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: UInt64? = nil, sampleRate: UInt64? = nil, codec: String? = nil) {
            self.text = text
            self.sessionId = sessionId
            self.modelType = modelType
            self.volume = volume
            self.speed = speed
            self.projectId = projectId
            self.voiceType = voiceType
            self.primaryLanguage = primaryLanguage
            self.sampleRate = sampleRate
            self.codec = codec
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case sessionId = "SessionId"
            case modelType = "ModelType"
            case volume = "Volume"
            case speed = "Speed"
            case projectId = "ProjectId"
            case voiceType = "VoiceType"
            case primaryLanguage = "PrimaryLanguage"
            case sampleRate = "SampleRate"
            case codec = "Codec"
        }
    }

    /// TextToVoice返回参数结构体
    public struct TextToVoiceResponse: TCResponseModel {
        /// base64编码的wav/mp3音频数据
        public let audio: String

        /// 一次请求对应一个SessionId
        public let sessionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case audio = "Audio"
            case sessionId = "SessionId"
            case requestId = "RequestId"
        }
    }

    /// 语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    @inlinable
    public func textToVoice(_ input: TextToVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToVoiceResponse> {
        self.client.execute(action: "TextToVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    @inlinable
    public func textToVoice(_ input: TextToVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToVoiceResponse {
        try await self.client.execute(action: "TextToVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    @inlinable
    public func textToVoice(text: String, sessionId: String, modelType: Int64, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: UInt64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToVoiceResponse> {
        self.textToVoice(TextToVoiceRequest(text: text, sessionId: sessionId, modelType: modelType, volume: volume, speed: speed, projectId: projectId, voiceType: voiceType, primaryLanguage: primaryLanguage, sampleRate: sampleRate, codec: codec), region: region, logger: logger, on: eventLoop)
    }

    /// 语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    @inlinable
    public func textToVoice(text: String, sessionId: String, modelType: Int64, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: UInt64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToVoiceResponse {
        try await self.textToVoice(TextToVoiceRequest(text: text, sessionId: sessionId, modelType: modelType, volume: volume, speed: speed, projectId: projectId, voiceType: voiceType, primaryLanguage: primaryLanguage, sampleRate: sampleRate, codec: codec), region: region, logger: logger, on: eventLoop)
    }
}
