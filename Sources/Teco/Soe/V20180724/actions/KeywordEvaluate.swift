//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Soe {
    /// KeywordEvaluate请求参数结构体
    public struct KeywordEvaluateRequest: TCRequestModel {
        /// 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义，非流式模式时无意义。
        /// 注意：序号上限为3000，不能超过上限。
        public let seqId: UInt64

        /// 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        public let isEnd: UInt64

        /// 语音文件类型
        /// 1: raw/pcm
        /// 2: wav
        /// 3: mp3
        /// 4: speex
        /// [音频上传格式](https://cloud.tencent.com/document/product/884/56132)
        public let voiceFileType: UInt64

        /// 语音编码类型
        /// 1:pcm
        public let voiceEncodeType: UInt64

        /// 当前语音数据, 编码格式要求为BASE64且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数）。格式要求参考[音频上传格式](https://cloud.tencent.com/document/product/884/56132)
        /// 流式模式下需要将语音数据进行分片处理，参考：[分片大小设置](https://cloud.tencent.com/document/product/884/78985#.E5.88.86.E7.89.87.E5.A4.A7.E5.B0.8F.E8.AE.BE.E7.BD.AE.E4.B8.BA.E5.A4.9A.E5.A4.A7.E6.AF.94.E8.BE.83.E5.90.88.E9.80.82.3F)
        /// 如何进行流式分片参考：[流式评测](https://cloud.tencent.com/document/product/884/78824#.E6.B5.81.E5.BC.8F.E8.AF.84.E6.B5.8B)
        public let userVoiceData: String

        /// 语音段唯一标识，一段完整语音使用一个SessionId，不同语音段的评测需要使用不同的SessionId。一般使用uuid(通用唯一识别码)来作为它的值，要尽量保证SessionId的唯一性。
        public let sessionId: String

        /// 关键词列表
        public let keywords: [Keyword]

        /// 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 SoeAppId 可以在[控制台](https://console.cloud.tencent.com/soe)【应用管理】下新建。如果没有新建SoeAppId，请勿填入该参数，否则会报欠费错误。使用指南：[业务应用](https://cloud.tencent.com/document/product/884/78824#.E4.B8.9A.E5.8A.A1.E5.BA.94.E7.94.A8)
        public let soeAppId: String?

        /// 查询标识，当该参数为1时，该请求为查询请求，请求返回该 Session 评估结果。
        public let isQuery: UInt64?

        public init(seqId: UInt64, isEnd: UInt64, voiceFileType: UInt64, voiceEncodeType: UInt64, userVoiceData: String, sessionId: String, keywords: [Keyword], soeAppId: String? = nil, isQuery: UInt64? = nil) {
            self.seqId = seqId
            self.isEnd = isEnd
            self.voiceFileType = voiceFileType
            self.voiceEncodeType = voiceEncodeType
            self.userVoiceData = userVoiceData
            self.sessionId = sessionId
            self.keywords = keywords
            self.soeAppId = soeAppId
            self.isQuery = isQuery
        }

        enum CodingKeys: String, CodingKey {
            case seqId = "SeqId"
            case isEnd = "IsEnd"
            case voiceFileType = "VoiceFileType"
            case voiceEncodeType = "VoiceEncodeType"
            case userVoiceData = "UserVoiceData"
            case sessionId = "SessionId"
            case keywords = "Keywords"
            case soeAppId = "SoeAppId"
            case isQuery = "IsQuery"
        }
    }

    /// KeywordEvaluate返回参数结构体
    public struct KeywordEvaluateResponse: TCResponseModel {
        /// 关键词得分
        public let keywordScores: [KeywordScore]

        /// 语音段唯一标识，一段完整语音使用一个SessionId，不同语音段的评测需要使用不同的SessionId。一般使用uuid(通用唯一识别码)来作为它的值，要尽量保证SessionId的唯一性。
        public let sessionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keywordScores = "KeywordScores"
            case sessionId = "SessionId"
            case requestId = "RequestId"
        }
    }

    /// 关键词评测
    ///
    /// 指定主题关键词词汇评估，分析语音与关键词的切合程度，可指定多个关键词，支持中文英文同时评测。分片传输时，尽量保证纯异步调用，即不等待上一个分片的传输结果边录边传，这样可以尽可能早的提供音频数据。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func keywordEvaluate(_ input: KeywordEvaluateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KeywordEvaluateResponse> {
        self.client.execute(action: "KeywordEvaluate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关键词评测
    ///
    /// 指定主题关键词词汇评估，分析语音与关键词的切合程度，可指定多个关键词，支持中文英文同时评测。分片传输时，尽量保证纯异步调用，即不等待上一个分片的传输结果边录边传，这样可以尽可能早的提供音频数据。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func keywordEvaluate(_ input: KeywordEvaluateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KeywordEvaluateResponse {
        try await self.client.execute(action: "KeywordEvaluate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关键词评测
    ///
    /// 指定主题关键词词汇评估，分析语音与关键词的切合程度，可指定多个关键词，支持中文英文同时评测。分片传输时，尽量保证纯异步调用，即不等待上一个分片的传输结果边录边传，这样可以尽可能早的提供音频数据。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func keywordEvaluate(seqId: UInt64, isEnd: UInt64, voiceFileType: UInt64, voiceEncodeType: UInt64, userVoiceData: String, sessionId: String, keywords: [Keyword], soeAppId: String? = nil, isQuery: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<KeywordEvaluateResponse> {
        self.keywordEvaluate(KeywordEvaluateRequest(seqId: seqId, isEnd: isEnd, voiceFileType: voiceFileType, voiceEncodeType: voiceEncodeType, userVoiceData: userVoiceData, sessionId: sessionId, keywords: keywords, soeAppId: soeAppId, isQuery: isQuery), region: region, logger: logger, on: eventLoop)
    }

    /// 关键词评测
    ///
    /// 指定主题关键词词汇评估，分析语音与关键词的切合程度，可指定多个关键词，支持中文英文同时评测。分片传输时，尽量保证纯异步调用，即不等待上一个分片的传输结果边录边传，这样可以尽可能早的提供音频数据。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func keywordEvaluate(seqId: UInt64, isEnd: UInt64, voiceFileType: UInt64, voiceEncodeType: UInt64, userVoiceData: String, sessionId: String, keywords: [Keyword], soeAppId: String? = nil, isQuery: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> KeywordEvaluateResponse {
        try await self.keywordEvaluate(KeywordEvaluateRequest(seqId: seqId, isEnd: isEnd, voiceFileType: voiceFileType, voiceEncodeType: voiceEncodeType, userVoiceData: userVoiceData, sessionId: sessionId, keywords: keywords, soeAppId: soeAppId, isQuery: isQuery), region: region, logger: logger, on: eventLoop)
    }
}
