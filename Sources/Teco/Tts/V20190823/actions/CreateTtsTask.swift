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
    /// CreateTtsTask请求参数结构体
    public struct CreateTtsTaskRequest: TCRequestModel {
        /// 合成语音的源文本，按UTF-8编码统一计算，最多支持10万字符
        public let text: String

        /// 模型类型，1-默认模型。
        public let modelType: Int64

        /// 音量大小，范围：[0，10]，分别对应11个等级的音量，默认为0，代表正常音量。没有静音选项。
        public let volume: Float?

        /// 语速，范围：[-2，2]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li>如果需要更细化的语速，可以保留小数点后一位，例如0.5 1.1 1.8等。<br>
        public let speed: Float?

        /// 项目id，用户自定义，默认为0。
        public let projectId: Int64?

        /// 标准音色<li>10510000-智逍遥，旁对白阅读风格男声</li><li>1001-智瑜，情感女声</li><li>1002-智聆，通用女声</li><li>1003-智美，客服女声</li><li>1004-智云，通用男声</li><li>1005-智莉，通用女声</li><li>1007-智娜，客服女声</li><li>1008-智琪，客服女声</li><li>1009-智芸，知性女声</li><li>1010-智华，通用男声</li><li>1017-智蓉，情感女声</li><li>1018-智靖，情感男声</li><li>1050-WeJack，英文男声</li><li>1051-WeRose，英文女声</li>精品音色<br>精品音色拟真度更高，价格不同于标准音色，查看[购买指南](https://cloud.tencent.com/document/product/1073/34112)<br><li>100510000-智逍遥，旁对白阅读风格男声（精品）</li><li>101001-智瑜，情感女声（精品）</li><li>101002-智聆，通用女声（精品）</li><li>101003-智美，客服女声（精品）</li><li>101004-智云，通用男声（精品）</li><li>101005-智莉，通用女声（精品）</li><li>101006-智言，助手女声</li><li>101007-智娜，客服女声（精品）</li><li>101008-智琪，客服女声（精品）</li><li>101009-智芸，知性女声（精品）</li><li>101010-智华，通用男声（精品）</li><li>101011-智燕，新闻女声</li><li>101012-智丹，新闻女声</li><li>101013-智辉，新闻男声</li><li>101014-智宁，新闻男声</li><li>101015-智萌，男童声</li><li>101016-智甜，女童声</li><li>101017-智蓉，情感女声（精品）</li><li>101018-智靖，情感男声（精品）</li><li>101019-智彤，粤语女声</li><li>101050-WeJack，英文男声（精品）</li><li>101051-WeRose，英文女声（精品）</li>
        public let voiceType: Int64?

        /// 主语言类型：<li>1-中文（默认）</li><li>2-英文</li>
        public let primaryLanguage: Int64?

        /// 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        public let sampleRate: UInt64?

        /// 返回音频格式，可取值：mp3（默认），wav，pcm
        public let codec: String?

        /// 回调 URL，用户自行搭建的用于接收识别结果的服务URL。如果用户使用轮询方式获取识别结果，则无需提交该参数。[回调说明](https://cloud.tencent.com/document/product/1073/55746)
        public let callbackUrl: String?

        /// 旁白与对白文本解析，分别合成相应风格（仅适用于旁对白音色），默认 false
        public let voiceoverDialogueSplit: Bool?

        public init(text: String, modelType: Int64, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: Int64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, callbackUrl: String? = nil, voiceoverDialogueSplit: Bool? = nil) {
            self.text = text
            self.modelType = modelType
            self.volume = volume
            self.speed = speed
            self.projectId = projectId
            self.voiceType = voiceType
            self.primaryLanguage = primaryLanguage
            self.sampleRate = sampleRate
            self.codec = codec
            self.callbackUrl = callbackUrl
            self.voiceoverDialogueSplit = voiceoverDialogueSplit
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case modelType = "ModelType"
            case volume = "Volume"
            case speed = "Speed"
            case projectId = "ProjectId"
            case voiceType = "VoiceType"
            case primaryLanguage = "PrimaryLanguage"
            case sampleRate = "SampleRate"
            case codec = "Codec"
            case callbackUrl = "CallbackUrl"
            case voiceoverDialogueSplit = "VoiceoverDialogueSplit"
        }
    }

    /// CreateTtsTask返回参数结构体
    public struct CreateTtsTaskResponse: TCResponseModel {
        /// 任务 id
        public let data: CreateTtsTaskRespData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 长文本语音合成请求
    ///
    /// 本接口服务对10万字符以内的文本进行语音合成，异步返回音频结果。满足一次性合成较长文本的客户需求，如阅读播报、新闻媒体等场景。
    ///
    /// <li>支持音频格式：mp3,wav,pcm</li>
    /// <li>支持音频采样率：16000 Hz, 8000 Hz</li>
    /// <li>支持中文普通话、英文、中英文混读、粤语合成</li>
    /// <li>支持语速、音量设置</li>
    /// <li>支持回调或轮询的方式获取结果，结果获取请参考 长文本语音合成结果查询。</li>
    /// <li>提交长文本语音合成请求后，合成结果在3小时内完成，音频文件在服务端可保存24小时</li>
    ///
    /// <p></p>
    ///
    /// 长文本合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)，使用时需满足如下使用规范：
    /// <li>使用 SSML 标签，需置于 speak 闭合标签内部；</li>
    /// <li>合成文本可包含多组 speak 闭合标签，且无数量限制；</li>
    /// <li>每个 speak 闭合标签内部，字符数不超过 150 字（标签字符本身不计算在内）；</li>
    /// <li>每个 speak 闭合标签内部，使用 break 标签数目最大为 10 个。如需要使用更多，可拆解到多个 speak 标签中；</li>
    ///
    /// <p></p>
    @inlinable
    public func createTtsTask(_ input: CreateTtsTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTtsTaskResponse> {
        self.client.execute(action: "CreateTtsTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 长文本语音合成请求
    ///
    /// 本接口服务对10万字符以内的文本进行语音合成，异步返回音频结果。满足一次性合成较长文本的客户需求，如阅读播报、新闻媒体等场景。
    ///
    /// <li>支持音频格式：mp3,wav,pcm</li>
    /// <li>支持音频采样率：16000 Hz, 8000 Hz</li>
    /// <li>支持中文普通话、英文、中英文混读、粤语合成</li>
    /// <li>支持语速、音量设置</li>
    /// <li>支持回调或轮询的方式获取结果，结果获取请参考 长文本语音合成结果查询。</li>
    /// <li>提交长文本语音合成请求后，合成结果在3小时内完成，音频文件在服务端可保存24小时</li>
    ///
    /// <p></p>
    ///
    /// 长文本合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)，使用时需满足如下使用规范：
    /// <li>使用 SSML 标签，需置于 speak 闭合标签内部；</li>
    /// <li>合成文本可包含多组 speak 闭合标签，且无数量限制；</li>
    /// <li>每个 speak 闭合标签内部，字符数不超过 150 字（标签字符本身不计算在内）；</li>
    /// <li>每个 speak 闭合标签内部，使用 break 标签数目最大为 10 个。如需要使用更多，可拆解到多个 speak 标签中；</li>
    ///
    /// <p></p>
    @inlinable
    public func createTtsTask(_ input: CreateTtsTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTtsTaskResponse {
        try await self.client.execute(action: "CreateTtsTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 长文本语音合成请求
    ///
    /// 本接口服务对10万字符以内的文本进行语音合成，异步返回音频结果。满足一次性合成较长文本的客户需求，如阅读播报、新闻媒体等场景。
    ///
    /// <li>支持音频格式：mp3,wav,pcm</li>
    /// <li>支持音频采样率：16000 Hz, 8000 Hz</li>
    /// <li>支持中文普通话、英文、中英文混读、粤语合成</li>
    /// <li>支持语速、音量设置</li>
    /// <li>支持回调或轮询的方式获取结果，结果获取请参考 长文本语音合成结果查询。</li>
    /// <li>提交长文本语音合成请求后，合成结果在3小时内完成，音频文件在服务端可保存24小时</li>
    ///
    /// <p></p>
    ///
    /// 长文本合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)，使用时需满足如下使用规范：
    /// <li>使用 SSML 标签，需置于 speak 闭合标签内部；</li>
    /// <li>合成文本可包含多组 speak 闭合标签，且无数量限制；</li>
    /// <li>每个 speak 闭合标签内部，字符数不超过 150 字（标签字符本身不计算在内）；</li>
    /// <li>每个 speak 闭合标签内部，使用 break 标签数目最大为 10 个。如需要使用更多，可拆解到多个 speak 标签中；</li>
    ///
    /// <p></p>
    @inlinable
    public func createTtsTask(text: String, modelType: Int64, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: Int64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, callbackUrl: String? = nil, voiceoverDialogueSplit: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTtsTaskResponse> {
        self.createTtsTask(.init(text: text, modelType: modelType, volume: volume, speed: speed, projectId: projectId, voiceType: voiceType, primaryLanguage: primaryLanguage, sampleRate: sampleRate, codec: codec, callbackUrl: callbackUrl, voiceoverDialogueSplit: voiceoverDialogueSplit), region: region, logger: logger, on: eventLoop)
    }

    /// 长文本语音合成请求
    ///
    /// 本接口服务对10万字符以内的文本进行语音合成，异步返回音频结果。满足一次性合成较长文本的客户需求，如阅读播报、新闻媒体等场景。
    ///
    /// <li>支持音频格式：mp3,wav,pcm</li>
    /// <li>支持音频采样率：16000 Hz, 8000 Hz</li>
    /// <li>支持中文普通话、英文、中英文混读、粤语合成</li>
    /// <li>支持语速、音量设置</li>
    /// <li>支持回调或轮询的方式获取结果，结果获取请参考 长文本语音合成结果查询。</li>
    /// <li>提交长文本语音合成请求后，合成结果在3小时内完成，音频文件在服务端可保存24小时</li>
    ///
    /// <p></p>
    ///
    /// 长文本合成支持 SSML，语法详见 [SSML 标记语言](https://cloud.tencent.com/document/product/1073/49575)，使用时需满足如下使用规范：
    /// <li>使用 SSML 标签，需置于 speak 闭合标签内部；</li>
    /// <li>合成文本可包含多组 speak 闭合标签，且无数量限制；</li>
    /// <li>每个 speak 闭合标签内部，字符数不超过 150 字（标签字符本身不计算在内）；</li>
    /// <li>每个 speak 闭合标签内部，使用 break 标签数目最大为 10 个。如需要使用更多，可拆解到多个 speak 标签中；</li>
    ///
    /// <p></p>
    @inlinable
    public func createTtsTask(text: String, modelType: Int64, volume: Float? = nil, speed: Float? = nil, projectId: Int64? = nil, voiceType: Int64? = nil, primaryLanguage: Int64? = nil, sampleRate: UInt64? = nil, codec: String? = nil, callbackUrl: String? = nil, voiceoverDialogueSplit: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTtsTaskResponse {
        try await self.createTtsTask(.init(text: text, modelType: modelType, volume: volume, speed: speed, projectId: projectId, voiceType: voiceType, primaryLanguage: primaryLanguage, sampleRate: sampleRate, codec: codec, callbackUrl: callbackUrl, voiceoverDialogueSplit: voiceoverDialogueSplit), region: region, logger: logger, on: eventLoop)
    }
}
