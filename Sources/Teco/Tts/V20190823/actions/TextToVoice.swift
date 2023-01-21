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

extension Tts {
    /// TextToVoice请求参数结构体
    public struct TextToVoiceRequest: TCRequestModel {
        /// 合成语音的源文本，按UTF-8编码统一计算。
        /// 中文最大支持150个汉字（全角标点符号算一个汉字）；英文最大支持500个字母（半角标点符号算一个字母）。
        public let text: String

        /// 一次请求对应一个SessionId，会原样返回，建议传入类似于uuid的字符串防止重复。
        public let sessionId: String

        /// 音量大小，范围：[0，10]，分别对应11个等级的音量，默认为0，代表正常音量。没有静音选项。
        public let volume: Float?

        /// 语速，范围：[-2，2]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li>如果需要更细化的语速，可以保留小数点后一位，例如0.5 1.1 1.8等。<br>
        public let speed: Float?

        /// 项目id，用户自定义，默认为0。
        public let projectId: Int64?

        /// 模型类型，1-默认模型。
        public let modelType: Int64?

        /// 标准音色<li>10510000-智逍遥，阅读男声</li><li>1001-智瑜，情感女声</li><li>1002-智聆，通用女声</li><li>1003-智美，客服女声</li><li>1004-智云，通用男声</li><li>1005-智莉，通用女声</li><li>1007-智娜，客服女声</li><li>1008-智琪，客服女声</li><li>1009-智芸，知性女声</li><li>1010-智华，通用男声</li><li>1017-智蓉，情感女声</li><li>1018-智靖，情感男声</li><li>1050-WeJack，英文男声</li><li>1051-WeRose，英文女声</li>精品音色<br>精品音色拟真度更高，价格不同于标准音色，查看[购买指南](https://cloud.tencent.com/document/product/1073/34112)<br><li>100510000-智逍遥，阅读男声</li><li>101001-智瑜，情感女声</li><li>101002-智聆，通用女声</li><li>101003-智美，客服女声</li><li>101004-智云，通用男声</li><li>101005-智莉，通用女声</li><li>101006-智言，助手女声</li><li>101007-智娜，客服女声</li><li>101008-智琪，客服女声</li><li>101009-智芸，知性女声</li><li>101010-智华，通用男声</li><li>101011-智燕，新闻女声</li><li>101012-智丹，新闻女声</li><li>101013-智辉，新闻男声</li><li>101014-智宁，新闻男声</li><li>101015-智萌，男童声</li><li>101016-智甜，女童声</li><li>101017-智蓉，情感女声</li><li>101018-智靖，情感男声</li><li>101019-智彤，粤语女声</li><li>101020-智刚，新闻男声</li><li>101021-智瑞，新闻男声</li><li>101022-智虹，新闻女声</li><li>101023-智萱，聊天女声</li><li>101024-智皓，聊天男声</li><li>101025-智薇，聊天女声</li><li>101026-智希，通用女声</li><li>101027-智梅，通用女声</li><li>101028-智洁，通用女声</li><li>101029-智凯，通用男声</li><li>101030-智柯，通用男声</li><li>101031-智奎，通用男声</li><li>101032-智芳，通用女声</li><li>101033-智蓓，客服女声</li><li>101034-智莲，通用女声</li><li>101035-智依，通用女声</li><li>101040-智川，四川女声</li><li>101050-WeJack，英文男声</li><li>101051-WeRose，英文女声</li><li>101052-智味，通用男声</li>
        /// <li>101053-智方，通用男声</li>
        /// <li>101054-智友，通用男声</li>
        /// <li>101055-智友，通用女声</li>
        /// <li>101056-智林，东北男声</li>
        public let voiceType: Int64?

        /// 主语言类型：<li>1-中文（默认）</li><li>2-英文</li>
        public let primaryLanguage: Int64?

        /// 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        public let sampleRate: UInt64?

        /// 返回音频格式，可取值：wav（默认），mp3，pcm
        public let codec: String?

        /// 是否开启时间戳功能，默认为false。
        public let enableSubtitle: Bool?

        /// 断句敏感阈值，默认值为：0，取值范围：[0,1,2]。该值越大越不容易断句，模型会更倾向于仅按照标点符号断句。此参数建议不要随意调整，可能会影响合成效果。
        public let segmentRate: UInt64?

        public init(text: String, sessionId: String, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, modelType: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: Int64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, enableSubtitle: Bool? = nil, segmentRate: UInt64? = nil) {
            self.text = text
            self.sessionId = sessionId
            self.volume = volume
            self.speed = speed
            self.projectId = projectId
            self.modelType = modelType
            self.voiceType = voiceType
            self.primaryLanguage = primaryLanguage
            self.sampleRate = sampleRate
            self.codec = codec
            self.enableSubtitle = enableSubtitle
            self.segmentRate = segmentRate
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case sessionId = "SessionId"
            case volume = "Volume"
            case speed = "Speed"
            case projectId = "ProjectId"
            case modelType = "ModelType"
            case voiceType = "VoiceType"
            case primaryLanguage = "PrimaryLanguage"
            case sampleRate = "SampleRate"
            case codec = "Codec"
            case enableSubtitle = "EnableSubtitle"
            case segmentRate = "SegmentRate"
        }
    }

    /// TextToVoice返回参数结构体
    public struct TextToVoiceResponse: TCResponseModel {
        /// base64编码的wav/mp3音频数据
        public let audio: String

        /// 一次请求对应一个SessionId
        public let sessionId: String

        /// 时间戳信息，若未开启时间戳，则返回空数组。
        public let subtitles: [Subtitle]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case audio = "Audio"
            case sessionId = "SessionId"
            case subtitles = "Subtitles"
            case requestId = "RequestId"
        }
    }

    /// 基础语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    /// 基础合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)。
    @inlinable
    public func textToVoice(_ input: TextToVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToVoiceResponse> {
        self.client.execute(action: "TextToVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基础语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    /// 基础合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)。
    @inlinable
    public func textToVoice(_ input: TextToVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToVoiceResponse {
        try await self.client.execute(action: "TextToVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基础语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    /// 基础合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)。
    @inlinable
    public func textToVoice(text: String, sessionId: String, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, modelType: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: Int64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, enableSubtitle: Bool? = nil, segmentRate: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToVoiceResponse> {
        self.textToVoice(TextToVoiceRequest(text: text, sessionId: sessionId, volume: volume, speed: speed, projectId: projectId, modelType: modelType, voiceType: voiceType, primaryLanguage: primaryLanguage, sampleRate: sampleRate, codec: codec, enableSubtitle: enableSubtitle, segmentRate: segmentRate), region: region, logger: logger, on: eventLoop)
    }

    /// 基础语音合成
    ///
    /// 腾讯云语音合成技术（TTS）可以将任意文本转化为语音，实现让机器和应用张口说话。
    /// 腾讯TTS技术可以应用到很多场景，比如，移动APP语音播报新闻；智能设备语音提醒；依靠网上现有节目或少量录音，快速合成明星语音，降低邀约成本；支持车载导航语音合成的个性化语音播报。
    /// 内测期间免费使用。
    /// 基础合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)。
    @inlinable
    public func textToVoice(text: String, sessionId: String, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, modelType: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: Int64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, enableSubtitle: Bool? = nil, segmentRate: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToVoiceResponse {
        try await self.textToVoice(TextToVoiceRequest(text: text, sessionId: sessionId, volume: volume, speed: speed, projectId: projectId, modelType: modelType, voiceType: voiceType, primaryLanguage: primaryLanguage, sampleRate: sampleRate, codec: codec, enableSubtitle: enableSubtitle, segmentRate: segmentRate), region: region, logger: logger, on: eventLoop)
    }
}
