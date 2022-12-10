//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 语音流异步识别任务创建
    ///
    /// 本接口用于对语音流进行准实时识别，通过异步回调来返回识别结果。适用于直播审核等场景。
    /// <br>• 支持rtmp、rtsp等流媒体协议，以及各类基于http协议的直播流(不支持hls)
    /// <br>• 音频流时长无限制，服务会自动拉取音频流数据，若连续10分钟拉不到流数据时，服务会终止识别任务
    /// <br>• 服务通过回调的方式来提供识别结果，用户需要提供CallbackUrl。回调时机为一小段话(最长15秒)回调一次。
    /// <br>• 签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    /// <br>• 默认单账号限制并发数为20路，如您有提高并发限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func createAsyncRecognitionTask(_ input: CreateAsyncRecognitionTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAsyncRecognitionTaskResponse > {
        self.client.execute(action: "CreateAsyncRecognitionTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 语音流异步识别任务创建
    ///
    /// 本接口用于对语音流进行准实时识别，通过异步回调来返回识别结果。适用于直播审核等场景。
    /// <br>• 支持rtmp、rtsp等流媒体协议，以及各类基于http协议的直播流(不支持hls)
    /// <br>• 音频流时长无限制，服务会自动拉取音频流数据，若连续10分钟拉不到流数据时，服务会终止识别任务
    /// <br>• 服务通过回调的方式来提供识别结果，用户需要提供CallbackUrl。回调时机为一小段话(最长15秒)回调一次。
    /// <br>• 签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    /// <br>• 默认单账号限制并发数为20路，如您有提高并发限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func createAsyncRecognitionTask(_ input: CreateAsyncRecognitionTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAsyncRecognitionTaskResponse {
        try await self.client.execute(action: "CreateAsyncRecognitionTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAsyncRecognitionTask请求参数结构体
    public struct CreateAsyncRecognitionTaskRequest: TCRequestModel {
        /// 引擎模型类型。
        /// • 16k_zh：16k 中文普通话通用；
        /// • 16k_zh_video：16k 音视频领域；
        /// • 16k_en：16k 英语；
        /// • 16k_ca：16k 粤语；
        public let engineType: String
        
        /// 语音流地址，支持rtmp、rtsp等流媒体协议，以及各类基于http协议的直播流(不支持hls)
        public let url: String
        
        /// 支持HTTP和HTTPS协议，用于接收识别结果，您需要自行搭建公网可调用的服务。回调格式&内容详见：[语音流异步识别回调说明](https://cloud.tencent.com/document/product/1093/52633)
        public let callbackUrl: String
        
        /// 用于生成回调通知中的签名
        public let signToken: String?
        
        /// 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0
        public let filterDirty: Int64?
        
        /// 是否过语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0
        public let filterModal: Int64?
        
        /// 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认为0
        public let filterPunc: Int64?
        
        /// 是否进行阿拉伯数字智能转换。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为1
        public let convertNumMode: Int64?
        
        /// 是否显示词级别时间戳。0：不显示；1：显示，不包含标点时间戳，2：显示，包含标点时间戳。默认为0
        public let wordInfo: Int64?
        
        /// 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        public let hotwordId: String?
        
        /// 回调数据中，是否需要对应音频数据。
        public let audioData: Bool?
        
        public init (engineType: String, url: String, callbackUrl: String, signToken: String?, filterDirty: Int64?, filterModal: Int64?, filterPunc: Int64?, convertNumMode: Int64?, wordInfo: Int64?, hotwordId: String?, audioData: Bool?) {
            self.engineType = engineType
            self.url = url
            self.callbackUrl = callbackUrl
            self.signToken = signToken
            self.filterDirty = filterDirty
            self.filterModal = filterModal
            self.filterPunc = filterPunc
            self.convertNumMode = convertNumMode
            self.wordInfo = wordInfo
            self.hotwordId = hotwordId
            self.audioData = audioData
        }
        
        enum CodingKeys: String, CodingKey {
            case engineType = "EngineType"
            case url = "Url"
            case callbackUrl = "CallbackUrl"
            case signToken = "SignToken"
            case filterDirty = "FilterDirty"
            case filterModal = "FilterModal"
            case filterPunc = "FilterPunc"
            case convertNumMode = "ConvertNumMode"
            case wordInfo = "WordInfo"
            case hotwordId = "HotwordId"
            case audioData = "AudioData"
        }
    }
    
    /// CreateAsyncRecognitionTask返回参数结构体
    public struct CreateAsyncRecognitionTaskResponse: TCResponseModel {
        /// 请求返回结果，包含本次的任务ID(TaskId)
        public let data: Task
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
