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

extension Asr {
    /// CreateRecTask请求参数结构体
    public struct CreateRecTaskRequest: TCRequestModel {
        /// 引擎模型类型。注意：非电话场景请务必使用16k的引擎。
        /// 电话场景：
        /// • 8k_en：电话 8k 英语；
        /// • 8k_zh：电话 8k 中文普通话通用；
        /// 非电话场景：
        /// • 16k_zh：16k 中文普通话通用；
        /// • 16k_zh_video：16k 音视频领域；
        /// • 16k_en：16k 英语；
        /// • 16k_ca：16k 粤语；
        /// • 16k_ja：16k 日语；
        /// • 16k_vi：16k 越南语；
        /// • 16k_ms：16k 马来语；
        /// • 16k_id：16k 印度尼西亚语；
        /// • 16k_fil：16k 菲律宾语；
        /// • 16k_zh_edu 中文教育；
        /// • 16k_en_edu 英文教育；
        /// • 16k_zh_medical  医疗；
        /// • 16k_th 泰语；
        /// • 16k_zh-PY 中英粤;
        /// • 16k_zh_dialect：多方言，支持23种方言（上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话）；
        public let engineModelType: String

        /// 识别声道数。1：单声道（非电话场景，直接选择单声道即可，忽略音频声道数）；2：双声道（仅支持8k_zh电话场景，双声道应分别对应通话双方）。注意：双声道的电话音频已物理分离说话人，无需再开启说话人分离功能。
        public let channelNum: UInt64

        /// 识别结果返回形式。0： 识别结果文本(含分段时间戳)； 1：词级别粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)(不含标点，含语速值)；2：词级别粒度的详细识别结果（包含标点、语速值）；3: 标点符号分段，包含每段时间戳，特别适用于字幕场景（包含词级时间、标点、语速值）。
        public let resTextFormat: UInt64

        /// 语音数据来源。0：语音 URL；1：语音数据（post body）。
        public let sourceType: UInt64

        /// 是否开启说话人分离，0：不开启，1：开启(仅支持8k_zh，16k_zh，16k_zh_video，单声道音频)，默认值为 0。
        /// 注意：8k电话场景建议使用双声道来区分通话双方，设置ChannelNum=2即可，不用开启说话人分离。
        public let speakerDiarization: Int64?

        /// 说话人分离人数（需配合开启说话人分离使用），取值范围：0-10，0代表自动分离（目前仅支持≤6个人），1-10代表指定说话人数分离。默认值为 0。
        /// 注：话者分离目前是beta版本，请根据您的需要谨慎使用
        public let speakerNumber: Int64?

        /// 回调 URL，用户自行搭建的用于接收识别结果的服务URL。如果用户使用轮询方式获取识别结果，则无需提交该参数。回调格式&内容详见：[录音识别回调说明](https://cloud.tencent.com/document/product/1093/52632)
        public let callbackUrl: String?

        /// 语音的URL地址，需要公网环境浏览器可下载。当 SourceType 值为 0 时须填写该字段，为 1 时不需要填写。注意：请确保录音文件时长在5个小时之内，否则可能识别失败。请保证文件的下载速度，否则可能下载失败。
        public let url: String?

        /// 语音数据base64编码，当SourceType 值为1时必须填写，为0可不写。音频数据要小于5MB。
        public let data: String?

        /// 数据长度，非必填（此数据长度为数据未进行base64编码时的数据长度）。
        public let dataLen: UInt64?

        /// 是否进行阿拉伯数字智能转换（目前支持中文普通话引擎）。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字，3: 打开数学相关数字转换。默认值为 1。
        public let convertNumMode: Int64?

        /// 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0。
        public let filterDirty: Int64?

        /// 热词表id。如不设置该参数，自动生效默认热词表；如设置了该参数，那么将生效对应的热词表。
        public let hotwordId: String?

        /// 自学习模型 id。如设置了该参数，将生效对应的自学习模型。
        public let customizationId: String?

        /// 附加参数(该参数无意义，忽略即可)
        public let extra: String?

        /// 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认值为 0。
        public let filterPunc: Int64?

        /// 是否过滤语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0。
        public let filterModal: Int64?

        /// 情绪能量值，取值为音量分贝值/10。取值范围：[1,10]。值越高情绪越强烈。0:不开启，1:开启
        public let emotionalEnergy: Int64?

        /// 热词增强功能。1:开启后（仅支持8k_zh,16k_zh），将开启同音替换功能，同音字、词在热词中配置。举例：热词配置“蜜制”并开启增强功能后，与“蜜制”同拼音（mizhi）的“秘制”的识别结果会被强制替换成“蜜制”。因此建议客户根据自己的实际情况开启该功能。
        public let reinforceHotword: Int64?

        /// 单标点最多字数，取值范围：[6，40]。默认为0，不开启该功能。该参数可用于字幕生成场景，控制单行字幕最大字数（设置ResTextFormat为3，解析返回的ResultDetail列表，通过结构中FinalSentence获取单个标点断句结果）。
        public let sentenceMaxLength: Int64?

        /// 情绪识别能力(目前支持16k_zh) 默认为0，不开启。 1：开启情绪识别但是不会在文本展示“情绪标签”， 2：开启情绪识别并且在文本展示“情绪标签”。（该功能需要设置ResTextFormat 大于0）
        /// 注意：本功能为增值服务，购买对应套餐包后，将参数设置为1或2时方可按对应方式生效，并消耗套餐包对应资源。参数设置为0时无需购买套餐包，也不会消耗对应资源。
        public let emotionRecognition: Int64?

        public init(engineModelType: String, channelNum: UInt64, resTextFormat: UInt64, sourceType: UInt64, speakerDiarization: Int64? = nil, speakerNumber: Int64? = nil, callbackUrl: String? = nil, url: String? = nil, data: String? = nil, dataLen: UInt64? = nil, convertNumMode: Int64? = nil, filterDirty: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, extra: String? = nil, filterPunc: Int64? = nil, filterModal: Int64? = nil, emotionalEnergy: Int64? = nil, reinforceHotword: Int64? = nil, sentenceMaxLength: Int64? = nil, emotionRecognition: Int64? = nil) {
            self.engineModelType = engineModelType
            self.channelNum = channelNum
            self.resTextFormat = resTextFormat
            self.sourceType = sourceType
            self.speakerDiarization = speakerDiarization
            self.speakerNumber = speakerNumber
            self.callbackUrl = callbackUrl
            self.url = url
            self.data = data
            self.dataLen = dataLen
            self.convertNumMode = convertNumMode
            self.filterDirty = filterDirty
            self.hotwordId = hotwordId
            self.customizationId = customizationId
            self.extra = extra
            self.filterPunc = filterPunc
            self.filterModal = filterModal
            self.emotionalEnergy = emotionalEnergy
            self.reinforceHotword = reinforceHotword
            self.sentenceMaxLength = sentenceMaxLength
            self.emotionRecognition = emotionRecognition
        }

        enum CodingKeys: String, CodingKey {
            case engineModelType = "EngineModelType"
            case channelNum = "ChannelNum"
            case resTextFormat = "ResTextFormat"
            case sourceType = "SourceType"
            case speakerDiarization = "SpeakerDiarization"
            case speakerNumber = "SpeakerNumber"
            case callbackUrl = "CallbackUrl"
            case url = "Url"
            case data = "Data"
            case dataLen = "DataLen"
            case convertNumMode = "ConvertNumMode"
            case filterDirty = "FilterDirty"
            case hotwordId = "HotwordId"
            case customizationId = "CustomizationId"
            case extra = "Extra"
            case filterPunc = "FilterPunc"
            case filterModal = "FilterModal"
            case emotionalEnergy = "EmotionalEnergy"
            case reinforceHotword = "ReinforceHotword"
            case sentenceMaxLength = "SentenceMaxLength"
            case emotionRecognition = "EmotionRecognition"
        }
    }

    /// CreateRecTask返回参数结构体
    public struct CreateRecTaskResponse: TCResponseModel {
        /// 录音文件识别的请求返回结果，包含结果查询需要的TaskId
        public let data: Task

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 录音文件识别请求
    ///
    /// 本接口服务对时长5小时以内的录音文件进行识别，异步返回识别全部结果。
    /// • 支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    /// • 支持wav、mp3、m4a、flv、mp4、wma、3gp、amr、aac、ogg-opus、flac格式。
    /// • 支持语音 URL 和本地语音文件两种请求方式。语音 URL 的音频时长不能长于5小时，文件大小不超过1GB。本地语音文件调用不能大于5MB。
    /// • 提交录音文件识别请求后，在3小时内完成识别（大多数情况下1小时音频约3分钟以内完成识别，半小时内发送超过1000小时录音或者2万条识别任务的除外），识别结果在服务端可保存7天。
    /// • 支持回调或轮询的方式获取结果，结果获取请参考[ 录音文件识别结果查询](https://cloud.tencent.com/document/product/1093/37822)。
    /// •   生成字幕场景可设置参数ResTextFormat为3，解析ResultDetail结构生成字幕，可参考 [生成字幕最佳实践](https://cloud.tencent.com/document/product/1093/84291)。
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    /// • 默认接口请求频率限制：20次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func createRecTask(_ input: CreateRecTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecTaskResponse> {
        self.client.execute(action: "CreateRecTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 录音文件识别请求
    ///
    /// 本接口服务对时长5小时以内的录音文件进行识别，异步返回识别全部结果。
    /// • 支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    /// • 支持wav、mp3、m4a、flv、mp4、wma、3gp、amr、aac、ogg-opus、flac格式。
    /// • 支持语音 URL 和本地语音文件两种请求方式。语音 URL 的音频时长不能长于5小时，文件大小不超过1GB。本地语音文件调用不能大于5MB。
    /// • 提交录音文件识别请求后，在3小时内完成识别（大多数情况下1小时音频约3分钟以内完成识别，半小时内发送超过1000小时录音或者2万条识别任务的除外），识别结果在服务端可保存7天。
    /// • 支持回调或轮询的方式获取结果，结果获取请参考[ 录音文件识别结果查询](https://cloud.tencent.com/document/product/1093/37822)。
    /// •   生成字幕场景可设置参数ResTextFormat为3，解析ResultDetail结构生成字幕，可参考 [生成字幕最佳实践](https://cloud.tencent.com/document/product/1093/84291)。
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    /// • 默认接口请求频率限制：20次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func createRecTask(_ input: CreateRecTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecTaskResponse {
        try await self.client.execute(action: "CreateRecTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 录音文件识别请求
    ///
    /// 本接口服务对时长5小时以内的录音文件进行识别，异步返回识别全部结果。
    /// • 支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    /// • 支持wav、mp3、m4a、flv、mp4、wma、3gp、amr、aac、ogg-opus、flac格式。
    /// • 支持语音 URL 和本地语音文件两种请求方式。语音 URL 的音频时长不能长于5小时，文件大小不超过1GB。本地语音文件调用不能大于5MB。
    /// • 提交录音文件识别请求后，在3小时内完成识别（大多数情况下1小时音频约3分钟以内完成识别，半小时内发送超过1000小时录音或者2万条识别任务的除外），识别结果在服务端可保存7天。
    /// • 支持回调或轮询的方式获取结果，结果获取请参考[ 录音文件识别结果查询](https://cloud.tencent.com/document/product/1093/37822)。
    /// •   生成字幕场景可设置参数ResTextFormat为3，解析ResultDetail结构生成字幕，可参考 [生成字幕最佳实践](https://cloud.tencent.com/document/product/1093/84291)。
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    /// • 默认接口请求频率限制：20次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func createRecTask(engineModelType: String, channelNum: UInt64, resTextFormat: UInt64, sourceType: UInt64, speakerDiarization: Int64? = nil, speakerNumber: Int64? = nil, callbackUrl: String? = nil, url: String? = nil, data: String? = nil, dataLen: UInt64? = nil, convertNumMode: Int64? = nil, filterDirty: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, extra: String? = nil, filterPunc: Int64? = nil, filterModal: Int64? = nil, emotionalEnergy: Int64? = nil, reinforceHotword: Int64? = nil, sentenceMaxLength: Int64? = nil, emotionRecognition: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRecTaskResponse> {
        self.createRecTask(.init(engineModelType: engineModelType, channelNum: channelNum, resTextFormat: resTextFormat, sourceType: sourceType, speakerDiarization: speakerDiarization, speakerNumber: speakerNumber, callbackUrl: callbackUrl, url: url, data: data, dataLen: dataLen, convertNumMode: convertNumMode, filterDirty: filterDirty, hotwordId: hotwordId, customizationId: customizationId, extra: extra, filterPunc: filterPunc, filterModal: filterModal, emotionalEnergy: emotionalEnergy, reinforceHotword: reinforceHotword, sentenceMaxLength: sentenceMaxLength, emotionRecognition: emotionRecognition), region: region, logger: logger, on: eventLoop)
    }

    /// 录音文件识别请求
    ///
    /// 本接口服务对时长5小时以内的录音文件进行识别，异步返回识别全部结果。
    /// • 支持中文普通话、英语、粤语、日语、越南语、马来语、印度尼西亚语、菲律宾语、上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话。
    /// • 支持wav、mp3、m4a、flv、mp4、wma、3gp、amr、aac、ogg-opus、flac格式。
    /// • 支持语音 URL 和本地语音文件两种请求方式。语音 URL 的音频时长不能长于5小时，文件大小不超过1GB。本地语音文件调用不能大于5MB。
    /// • 提交录音文件识别请求后，在3小时内完成识别（大多数情况下1小时音频约3分钟以内完成识别，半小时内发送超过1000小时录音或者2万条识别任务的除外），识别结果在服务端可保存7天。
    /// • 支持回调或轮询的方式获取结果，结果获取请参考[ 录音文件识别结果查询](https://cloud.tencent.com/document/product/1093/37822)。
    /// •   生成字幕场景可设置参数ResTextFormat为3，解析ResultDetail结构生成字幕，可参考 [生成字幕最佳实践](https://cloud.tencent.com/document/product/1093/84291)。
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    /// • 默认接口请求频率限制：20次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func createRecTask(engineModelType: String, channelNum: UInt64, resTextFormat: UInt64, sourceType: UInt64, speakerDiarization: Int64? = nil, speakerNumber: Int64? = nil, callbackUrl: String? = nil, url: String? = nil, data: String? = nil, dataLen: UInt64? = nil, convertNumMode: Int64? = nil, filterDirty: Int64? = nil, hotwordId: String? = nil, customizationId: String? = nil, extra: String? = nil, filterPunc: Int64? = nil, filterModal: Int64? = nil, emotionalEnergy: Int64? = nil, reinforceHotword: Int64? = nil, sentenceMaxLength: Int64? = nil, emotionRecognition: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecTaskResponse {
        try await self.createRecTask(.init(engineModelType: engineModelType, channelNum: channelNum, resTextFormat: resTextFormat, sourceType: sourceType, speakerDiarization: speakerDiarization, speakerNumber: speakerNumber, callbackUrl: callbackUrl, url: url, data: data, dataLen: dataLen, convertNumMode: convertNumMode, filterDirty: filterDirty, hotwordId: hotwordId, customizationId: customizationId, extra: extra, filterPunc: filterPunc, filterModal: filterModal, emotionalEnergy: emotionalEnergy, reinforceHotword: reinforceHotword, sentenceMaxLength: sentenceMaxLength, emotionRecognition: emotionRecognition), region: region, logger: logger, on: eventLoop)
    }
}
