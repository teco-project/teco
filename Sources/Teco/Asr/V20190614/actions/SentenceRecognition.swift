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

extension Asr {
    /// SentenceRecognition请求参数结构体
    public struct SentenceRecognitionRequest: TCRequest {
        /// 引擎模型类型。
        /// 电话场景：
        /// • 8k_zh：中文电话通用；
        /// • 8k_en：英文电话通用；
        ///
        /// 非电话场景：
        /// • 16k_zh：中文通用；
        /// • 16k_zh-PY：中英粤;
        /// • 16k_zh_medical：中文医疗；
        /// • 16k_en：英语；
        /// • 16k_yue：粤语；
        /// • 16k_ja：日语；
        /// • 16k_ko：韩语；
        /// • 16k_vi：越南语；
        /// • 16k_ms：马来语；
        /// • 16k_id：印度尼西亚语；
        /// • 16k_fil：菲律宾语；
        /// • 16k_th：泰语；
        /// • 16k_pt：葡萄牙语；
        /// • 16k_tr：土耳其语；
        /// • 16k_ar：阿拉伯语；
        /// • 16k_es：西班牙语；
        /// • 16k_hi：印地语；
        /// • 16k_zh_dialect：多方言，支持23种方言（上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话）；
        public let engSerViceType: String

        /// 语音数据来源。0：语音 URL；1：语音数据（post body）。
        public let sourceType: UInt64

        /// 识别音频的音频格式，支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac、amr。
        public let voiceFormat: String

        /// 腾讯云项目 ID，废弃参数，填写0即可。
        @available(*, deprecated)
        public let projectId: UInt64? = nil

        /// 子服务类型。2： 一句话识别。
        @available(*, deprecated)
        public let subServiceType: UInt64? = nil

        /// 语音的URL地址，需要公网环境浏览器可下载。当 SourceType 值为 0时须填写该字段，为 1 时不填。音频时长不能超过60s，音频文件大小不能超过3MB。
        public let url: String?

        /// 废弃参数，填写任意字符串即可。
        @available(*, deprecated)
        public let usrAudioKey: String? = nil

        /// 语音数据，当SourceType 值为1（本地语音数据上传）时必须填写，当SourceType 值为0（语音 URL上传）可不写。要使用base64编码(采用python语言时注意读取文件应该为string而不是byte，以byte格式读取后要decode()。编码后的数据不可带有回车换行符)。音频时长不能超过60s，音频文件大小不能超过3MB（Base64后）。
        public let data: String?

        /// 数据长度，单位为字节。当 SourceType 值为1（本地语音数据上传）时必须填写，当 SourceType 值为0（语音 URL上传）可不写（此数据长度为数据未进行base64编码时的数据长度）。
        public let dataLen: Int64?

        /// 是否显示词级别时间戳。0：不显示；1：显示，不包含标点时间戳，2：显示，包含标点时间戳。默认值为 0。
        public let wordInfo: Int64?

        /// 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0。
        public let filterDirty: Int64?

        /// 是否过语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0。
        public let filterModal: Int64?

        /// 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认值为 0。
        public let filterPunc: Int64?

        /// 是否进行阿拉伯数字智能转换。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为1。
        public let convertNumMode: Int64?

        /// 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        public let hotwordId: String?

        /// 自学习模型 id。如设置了该参数，将生效对应的自学习模型。
        public let customizationId: String?

        /// 热词增强功能。1:开启后（仅支持8k_zh,16k_zh），将开启同音替换功能，同音字、词在热词中配置。举例：热词配置“蜜制”并开启增强功能后，与“蜜制”同拼音（mizhi）的“秘制”的识别结果会被强制替换成“蜜制”。因此建议客户根据自己的实际情况开启该功能。
        public let reinforceHotword: Int64?

        /// 临时热词表，该参数用于提升热词识别准确率。
        /// 单个热词规则："热词|权重"，不超过30个字符（最多10个汉字），权重1-10；
        /// 临时热词表限制：多个热词用英文逗号分割，最多128个热词，参数示例："腾讯云|10,语音识别|5,ASR|10"；
        /// 参数 hotword_list 与 hotword_id 区别：
        /// hotword_id：需要先在控制台或接口创建热词表，获得对应hotword_id传入参数来使用热词功能；
        /// hotword_list：每次请求时直接传入临时热词表来使用热词功能，云端不保留临时热词表；
        /// 注意：如果同时传入了 hotword_id 和 hotword_list，会优先使用 hotword_list。
        public let hotwordList: String?

        /// 支持pcm格式的8k音频在与引擎采样率不匹配的情况下升采样到16k后识别，能有效提升识别准确率。仅支持：8000。如：传入 8000 ，则pcm音频采样率为8k，当引擎选用16k_zh， 那么该8k采样率的pcm音频可以在16k_zh引擎下正常识别。 注：此参数仅适用于pcm格式音频，不传入值将维持默认状态，即默认调用的引擎采样率等于pcm音频采样率。
        public let inputSampleRate: Int64?

        public init(engSerViceType: String, sourceType: UInt64, voiceFormat: String, url: String? = nil, data: String? = nil, dataLen: Int64? = nil, wordInfo: Int64? = nil, filterDirty: Int64? = nil, filterModal: Int64? = nil, filterPunc: Int64? = nil, convertNumMode: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, reinforceHotword: Int64? = nil, hotwordList: String? = nil, inputSampleRate: Int64? = nil) {
            self.engSerViceType = engSerViceType
            self.sourceType = sourceType
            self.voiceFormat = voiceFormat
            self.url = url
            self.data = data
            self.dataLen = dataLen
            self.wordInfo = wordInfo
            self.filterDirty = filterDirty
            self.filterModal = filterModal
            self.filterPunc = filterPunc
            self.convertNumMode = convertNumMode
            self.hotwordId = hotwordId
            self.customizationId = customizationId
            self.reinforceHotword = reinforceHotword
            self.hotwordList = hotwordList
            self.inputSampleRate = inputSampleRate
        }

        @available(*, deprecated, renamed: "init(engSerViceType:sourceType:voiceFormat:url:data:dataLen:wordInfo:filterDirty:filterModal:filterPunc:convertNumMode:hotwordId:customizationId:reinforceHotword:hotwordList:inputSampleRate:)", message: "'projectId', 'subServiceType' and 'usrAudioKey' are deprecated in 'SentenceRecognitionRequest'. Setting these parameters has no effect.")
        public init(engSerViceType: String, sourceType: UInt64, voiceFormat: String, projectId: UInt64? = nil, subServiceType: UInt64? = nil, url: String? = nil, usrAudioKey: String? = nil, data: String? = nil, dataLen: Int64? = nil, wordInfo: Int64? = nil, filterDirty: Int64? = nil, filterModal: Int64? = nil, filterPunc: Int64? = nil, convertNumMode: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, reinforceHotword: Int64? = nil, hotwordList: String? = nil, inputSampleRate: Int64? = nil) {
            self.engSerViceType = engSerViceType
            self.sourceType = sourceType
            self.voiceFormat = voiceFormat
            self.url = url
            self.data = data
            self.dataLen = dataLen
            self.wordInfo = wordInfo
            self.filterDirty = filterDirty
            self.filterModal = filterModal
            self.filterPunc = filterPunc
            self.convertNumMode = convertNumMode
            self.hotwordId = hotwordId
            self.customizationId = customizationId
            self.reinforceHotword = reinforceHotword
            self.hotwordList = hotwordList
            self.inputSampleRate = inputSampleRate
        }

        enum CodingKeys: String, CodingKey {
            case engSerViceType = "EngSerViceType"
            case sourceType = "SourceType"
            case voiceFormat = "VoiceFormat"
            case projectId = "ProjectId"
            case subServiceType = "SubServiceType"
            case url = "Url"
            case usrAudioKey = "UsrAudioKey"
            case data = "Data"
            case dataLen = "DataLen"
            case wordInfo = "WordInfo"
            case filterDirty = "FilterDirty"
            case filterModal = "FilterModal"
            case filterPunc = "FilterPunc"
            case convertNumMode = "ConvertNumMode"
            case hotwordId = "HotwordId"
            case customizationId = "CustomizationId"
            case reinforceHotword = "ReinforceHotword"
            case hotwordList = "HotwordList"
            case inputSampleRate = "InputSampleRate"
        }
    }

    /// SentenceRecognition返回参数结构体
    public struct SentenceRecognitionResponse: TCResponse {
        /// 识别结果。
        public let result: String

        /// 请求的音频时长，单位为ms
        public let audioDuration: Int64

        /// 词时间戳列表的长度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wordSize: Int64?

        /// 词时间戳列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wordList: [SentenceWord]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case audioDuration = "AudioDuration"
            case wordSize = "WordSize"
            case wordList = "WordList"
            case requestId = "RequestId"
        }
    }

    /// 一句话识别
    ///
    /// 本接口用于对60秒之内的短音频文件进行识别。
    ///
    /// •   支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、泰语、葡萄牙语、土耳其语、阿拉伯语、印地语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    ///
    /// •   支持本地语音文件上传和语音URL上传两种请求方式，音频时长不能超过60s，音频文件大小不能超过3MB。
    ///
    /// •   音频格式支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：30次/秒，如您有提高请求频率限制的需求，请[前往购买](https://buy.cloud.tencent.com/asr)。
    @inlinable
    public func sentenceRecognition(_ input: SentenceRecognitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SentenceRecognitionResponse> {
        self.client.execute(action: "SentenceRecognition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 一句话识别
    ///
    /// 本接口用于对60秒之内的短音频文件进行识别。
    ///
    /// •   支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、泰语、葡萄牙语、土耳其语、阿拉伯语、印地语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    ///
    /// •   支持本地语音文件上传和语音URL上传两种请求方式，音频时长不能超过60s，音频文件大小不能超过3MB。
    ///
    /// •   音频格式支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：30次/秒，如您有提高请求频率限制的需求，请[前往购买](https://buy.cloud.tencent.com/asr)。
    @inlinable
    public func sentenceRecognition(_ input: SentenceRecognitionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SentenceRecognitionResponse {
        try await self.client.execute(action: "SentenceRecognition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 一句话识别
    ///
    /// 本接口用于对60秒之内的短音频文件进行识别。
    ///
    /// •   支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、泰语、葡萄牙语、土耳其语、阿拉伯语、印地语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    ///
    /// •   支持本地语音文件上传和语音URL上传两种请求方式，音频时长不能超过60s，音频文件大小不能超过3MB。
    ///
    /// •   音频格式支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：30次/秒，如您有提高请求频率限制的需求，请[前往购买](https://buy.cloud.tencent.com/asr)。
    @inlinable
    public func sentenceRecognition(engSerViceType: String, sourceType: UInt64, voiceFormat: String, url: String? = nil, data: String? = nil, dataLen: Int64? = nil, wordInfo: Int64? = nil, filterDirty: Int64? = nil, filterModal: Int64? = nil, filterPunc: Int64? = nil, convertNumMode: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, reinforceHotword: Int64? = nil, hotwordList: String? = nil, inputSampleRate: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SentenceRecognitionResponse> {
        self.sentenceRecognition(.init(engSerViceType: engSerViceType, sourceType: sourceType, voiceFormat: voiceFormat, url: url, data: data, dataLen: dataLen, wordInfo: wordInfo, filterDirty: filterDirty, filterModal: filterModal, filterPunc: filterPunc, convertNumMode: convertNumMode, hotwordId: hotwordId, customizationId: customizationId, reinforceHotword: reinforceHotword, hotwordList: hotwordList, inputSampleRate: inputSampleRate), region: region, logger: logger, on: eventLoop)
    }

    /// 一句话识别
    ///
    /// 本接口用于对60秒之内的短音频文件进行识别。
    ///
    /// •   支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、泰语、葡萄牙语、土耳其语、阿拉伯语、印地语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    ///
    /// •   支持本地语音文件上传和语音URL上传两种请求方式，音频时长不能超过60s，音频文件大小不能超过3MB。
    ///
    /// •   音频格式支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：30次/秒，如您有提高请求频率限制的需求，请[前往购买](https://buy.cloud.tencent.com/asr)。
    @available(*, deprecated, renamed: "sentenceRecognition(engSerViceType:sourceType:voiceFormat:url:data:dataLen:wordInfo:filterDirty:filterModal:filterPunc:convertNumMode:hotwordId:customizationId:reinforceHotword:hotwordList:inputSampleRate:region:logger:on:)", message: "'projectId', 'subServiceType' and 'usrAudioKey' are deprecated. Setting these parameters has no effect.")
    @inlinable
    public func sentenceRecognition(engSerViceType: String, sourceType: UInt64, voiceFormat: String, projectId: UInt64? = nil, subServiceType: UInt64? = nil, url: String? = nil, usrAudioKey: String? = nil, data: String? = nil, dataLen: Int64? = nil, wordInfo: Int64? = nil, filterDirty: Int64? = nil, filterModal: Int64? = nil, filterPunc: Int64? = nil, convertNumMode: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, reinforceHotword: Int64? = nil, hotwordList: String? = nil, inputSampleRate: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SentenceRecognitionResponse> {
        self.sentenceRecognition(.init(engSerViceType: engSerViceType, sourceType: sourceType, voiceFormat: voiceFormat, projectId: projectId, subServiceType: subServiceType, url: url, usrAudioKey: usrAudioKey, data: data, dataLen: dataLen, wordInfo: wordInfo, filterDirty: filterDirty, filterModal: filterModal, filterPunc: filterPunc, convertNumMode: convertNumMode, hotwordId: hotwordId, customizationId: customizationId, reinforceHotword: reinforceHotword, hotwordList: hotwordList, inputSampleRate: inputSampleRate), region: region, logger: logger, on: eventLoop)
    }

    /// 一句话识别
    ///
    /// 本接口用于对60秒之内的短音频文件进行识别。
    ///
    /// •   支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、泰语、葡萄牙语、土耳其语、阿拉伯语、印地语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    ///
    /// •   支持本地语音文件上传和语音URL上传两种请求方式，音频时长不能超过60s，音频文件大小不能超过3MB。
    ///
    /// •   音频格式支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：30次/秒，如您有提高请求频率限制的需求，请[前往购买](https://buy.cloud.tencent.com/asr)。
    @inlinable
    public func sentenceRecognition(engSerViceType: String, sourceType: UInt64, voiceFormat: String, url: String? = nil, data: String? = nil, dataLen: Int64? = nil, wordInfo: Int64? = nil, filterDirty: Int64? = nil, filterModal: Int64? = nil, filterPunc: Int64? = nil, convertNumMode: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, reinforceHotword: Int64? = nil, hotwordList: String? = nil, inputSampleRate: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SentenceRecognitionResponse {
        try await self.sentenceRecognition(.init(engSerViceType: engSerViceType, sourceType: sourceType, voiceFormat: voiceFormat, url: url, data: data, dataLen: dataLen, wordInfo: wordInfo, filterDirty: filterDirty, filterModal: filterModal, filterPunc: filterPunc, convertNumMode: convertNumMode, hotwordId: hotwordId, customizationId: customizationId, reinforceHotword: reinforceHotword, hotwordList: hotwordList, inputSampleRate: inputSampleRate), region: region, logger: logger, on: eventLoop)
    }

    /// 一句话识别
    ///
    /// 本接口用于对60秒之内的短音频文件进行识别。
    ///
    /// •   支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、泰语、葡萄牙语、土耳其语、阿拉伯语、印地语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    ///
    /// •   支持本地语音文件上传和语音URL上传两种请求方式，音频时长不能超过60s，音频文件大小不能超过3MB。
    ///
    /// •   音频格式支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：30次/秒，如您有提高请求频率限制的需求，请[前往购买](https://buy.cloud.tencent.com/asr)。
    @available(*, deprecated, renamed: "sentenceRecognition(engSerViceType:sourceType:voiceFormat:url:data:dataLen:wordInfo:filterDirty:filterModal:filterPunc:convertNumMode:hotwordId:customizationId:reinforceHotword:hotwordList:inputSampleRate:region:logger:on:)", message: "'projectId', 'subServiceType' and 'usrAudioKey' are deprecated. Setting these parameters has no effect.")
    @inlinable
    public func sentenceRecognition(engSerViceType: String, sourceType: UInt64, voiceFormat: String, projectId: UInt64? = nil, subServiceType: UInt64? = nil, url: String? = nil, usrAudioKey: String? = nil, data: String? = nil, dataLen: Int64? = nil, wordInfo: Int64? = nil, filterDirty: Int64? = nil, filterModal: Int64? = nil, filterPunc: Int64? = nil, convertNumMode: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, reinforceHotword: Int64? = nil, hotwordList: String? = nil, inputSampleRate: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SentenceRecognitionResponse {
        try await self.sentenceRecognition(.init(engSerViceType: engSerViceType, sourceType: sourceType, voiceFormat: voiceFormat, projectId: projectId, subServiceType: subServiceType, url: url, usrAudioKey: usrAudioKey, data: data, dataLen: dataLen, wordInfo: wordInfo, filterDirty: filterDirty, filterModal: filterModal, filterPunc: filterPunc, convertNumMode: convertNumMode, hotwordId: hotwordId, customizationId: customizationId, reinforceHotword: reinforceHotword, hotwordList: hotwordList, inputSampleRate: inputSampleRate), region: region, logger: logger, on: eventLoop)
    }
}
