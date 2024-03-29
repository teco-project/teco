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

extension Soe {
    /// TransmitOralProcessWithInit请求参数结构体
    public struct TransmitOralProcessWithInitRequest: TCRequest {
        /// 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义，当IsLongLifeSession不为1且为非流式模式时无意义。
        /// 注意：序号上限为3000，不能超过上限。
        public let seqId: Int64

        /// 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        public let isEnd: Int64

        /// 语音文件类型
        /// 1: raw/pcm
        /// 2: wav
        /// 3: mp3
        /// 4: speex
        /// 语音文件格式目前仅支持 16k 采样率 16bit 编码单声道，如有不一致可能导致评估不准确或失败。
        /// [音频上传格式](https://cloud.tencent.com/document/product/884/56132)
        public let voiceFileType: Int64

        /// 语音编码类型
        /// 1:pcm
        public let voiceEncodeType: Int64

        /// 当前语音数据, 编码格式要求为BASE64且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数）。格式要求参考[音频上传格式](https://cloud.tencent.com/document/product/884/56132)
        /// 流式模式下需要将语音数据进行分片处理，参考：[分片大小设置](https://cloud.tencent.com/document/product/884/78985#.E5.88.86.E7.89.87.E5.A4.A7.E5.B0.8F.E8.AE.BE.E7.BD.AE.E4.B8.BA.E5.A4.9A.E5.A4.A7.E6.AF.94.E8.BE.83.E5.90.88.E9.80.82.3F)
        /// 如何进行流式分片参考：[流式测试](https://cloud.tencent.com/document/product/884/78824#.E6.B5.81.E5.BC.8F.E8.AF.84.E6.B5.8B)
        public let userVoiceData: String

        /// 语音段唯一标识，一段完整语音使用一个SessionId，不同语音段的评测需要使用不同的SessionId。一般使用uuid(通用唯一识别码)来作为它的值，要尽量保证SessionId的唯一性。
        public let sessionId: String

        /// 被评估语音对应的文本，仅支持中文和英文。
        /// 句子模式下不超过个 30 单词或者中文文字，段落模式不超过 120 单词或者中文文字，中文评估使用 utf-8 编码，自由说模式RefText可以不填。
        /// 关于RefText的文本键入要求，请参考[评测模式介绍](https://cloud.tencent.com/document/product/884/56131)。
        /// 如需要在评测模式下使用自定义注音（支持中英文），可以通过设置「TextMode」参数实现，设置方式请参考[音素标注](https://cloud.tencent.com/document/product/884/33698)。
        public let refText: String

        /// 语音输入模式
        /// 0：流式分片
        /// 1：非流式一次性评估
        /// 推荐使用流式分片传输。
        public let workMode: Int64

        /// 评测模式
        /// 0：单词/单字模式（中文评测模式下为单字模式）
        /// 1：句子模式
        /// 2：段落模式
        /// 3：自由说模式
        /// 4：单词音素纠错模式
        /// 5：情景评测模式
        /// 6：句子多分支评测模式
        /// 7：单词实时评测模式
        /// 8：拼音评测模式
        /// 关于每种评测模式的详细介绍，以及适用场景，请参考[评测模式介绍](https://cloud.tencent.com/document/product/884/56131)。
        public let evalMode: Int64

        /// 评价苛刻指数。取值为[1.0 - 4.0]范围内的浮点数，用于平滑不同年龄段的分数。
        /// 1.0：适用于最小年龄段用户，一般对应儿童应用场景；
        /// 4.0：适用于最高年龄段用户，一般对应成人严格打分场景。
        /// 苛刻度影响范围参考：[苛刻度影响范围](https://cloud.tencent.com/document/product/884/78824#.E8.8B.9B.E5.88.BB.E5.BA.A6)
        public let scoreCoeff: Float

        /// 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 SoeAppId 可以在[控制台](https://console.cloud.tencent.com/soe)【应用管理】下新建。如果没有新建SoeAppId，请勿填入该参数，否则会报欠费错误。使用指南：[业务应用](https://cloud.tencent.com/document/product/884/78824#.E4.B8.9A.E5.8A.A1.E5.BA.94.E7.94.A8)
        public let soeAppId: String?

        /// 音频存储模式，此参数已废弃，无需设置，设置与否都默认为0不存储；
        /// 注：有存储需求的用户建议自行存储至腾讯云COS[对象存储](https://cloud.tencent.com/product/cos)使用。
        public let storageMode: Int64?

        /// 输出断句中间结果标识
        /// 0：不输出（默认）
        /// 1：输出，通过设置该参数
        /// 可以在评估过程中的分片传输请求中，返回已经评估断句的中间结果，中间结果可用于客户端 UI 更新，输出结果为TransmitOralProcessWithInit请求返回结果 SentenceInfoSet 字段。
        public let sentenceInfoEnabled: Int64?

        /// 评估语言
        /// 0：英文（默认）
        /// 1：中文
        public let serverType: Int64?

        /// 异步模式标识
        /// 0：同步模式（默认）
        /// 1：异步模式（一般情况不建议使用异步模式，如需使用参考：[异步轮询](https://cloud.tencent.com/document/product/884/78824#.E7.BB.93.E6.9E.9C.E6.9F.A5.E8.AF.A2)）
        /// 可选值参考[服务模式](https://cloud.tencent.com/document/product/884/33697)。
        public let isAsync: Int64?

        /// 查询标识，当该参数为1时，该请求为查询请求，请求返回该 Session 评估结果。
        public let isQuery: Int64?

        /// 输入文本模式
        /// 0: 普通文本（默认）
        /// 1：[音素结构](https://cloud.tencent.com/document/product/884/33698)文本
        public let textMode: Int64?

        /// 主题词和关键词
        public let keyword: String?

        public init(seqId: Int64, isEnd: Int64, voiceFileType: Int64, voiceEncodeType: Int64, userVoiceData: String, sessionId: String, refText: String, workMode: Int64, evalMode: Int64, scoreCoeff: Float, soeAppId: String? = nil, storageMode: Int64? = nil, sentenceInfoEnabled: Int64? = nil, serverType: Int64? = nil, isAsync: Int64? = nil, isQuery: Int64? = nil, textMode: Int64? = nil, keyword: String? = nil) {
            self.seqId = seqId
            self.isEnd = isEnd
            self.voiceFileType = voiceFileType
            self.voiceEncodeType = voiceEncodeType
            self.userVoiceData = userVoiceData
            self.sessionId = sessionId
            self.refText = refText
            self.workMode = workMode
            self.evalMode = evalMode
            self.scoreCoeff = scoreCoeff
            self.soeAppId = soeAppId
            self.storageMode = storageMode
            self.sentenceInfoEnabled = sentenceInfoEnabled
            self.serverType = serverType
            self.isAsync = isAsync
            self.isQuery = isQuery
            self.textMode = textMode
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case seqId = "SeqId"
            case isEnd = "IsEnd"
            case voiceFileType = "VoiceFileType"
            case voiceEncodeType = "VoiceEncodeType"
            case userVoiceData = "UserVoiceData"
            case sessionId = "SessionId"
            case refText = "RefText"
            case workMode = "WorkMode"
            case evalMode = "EvalMode"
            case scoreCoeff = "ScoreCoeff"
            case soeAppId = "SoeAppId"
            case storageMode = "StorageMode"
            case sentenceInfoEnabled = "SentenceInfoEnabled"
            case serverType = "ServerType"
            case isAsync = "IsAsync"
            case isQuery = "IsQuery"
            case textMode = "TextMode"
            case keyword = "Keyword"
        }
    }

    /// TransmitOralProcessWithInit返回参数结构体
    public struct TransmitOralProcessWithInitResponse: TCResponse {
        /// 发音精准度，取值范围[-1, 100]，当取-1时指完全不匹配，当为句子模式时，是所有已识别单词准确度的加权平均值，在reftext中但未识别出来的词不计入分数中。当为流式模式且请求中IsEnd未置1时，取值无意义。
        public let pronAccuracy: Float

        /// 发音流利度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义。取值无意义时，值为-1
        public let pronFluency: Float

        /// 发音完整度，取值范围[0, 1]，当为词模式或自由说模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义。取值无意义时，值为-1
        public let pronCompletion: Float

        /// 详细发音评估结果
        public let words: [WordRsp]

        /// 语音段唯一标识，一段语音一个SessionId
        public let sessionId: String

        /// 已废弃，不再保存语音音频文件下载地址
        public let audioUrl: String

        /// 断句中间结果，中间结果是局部最优而非全局最优的结果，所以中间结果有可能和最终整体结果对应部分不一致；中间结果的输出便于客户端UI更新；待用户发音完全结束后，系统会给出一个综合所有句子的整体结果。
        public let sentenceInfoSet: [SentenceInfo]

        /// 评估 session 状态，“Evaluating"：评估中、"Failed"：评估失败、"Finished"：评估完成
        public let status: String

        /// 建议评分，取值范围[0,100]，评分方式为建议评分 = 准确度（PronAccuracy）× 完整度（PronCompletion）×（2 - 完整度（PronCompletion）），如若评分策略不符合请参考Words数组中的详细分数自定义评分逻辑。
        public let suggestedScore: Float

        /// 匹配候选文本的序号，在句子多分支、情景对 话、段落模式下表示匹配到的文本序号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refTextId: Int64?

        /// 主题词命中标志，0表示没命中，1表示命中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyWordHits: [Float]?

        /// 负向主题词命中标志，0表示没命中，1表示命中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unKeyWordHits: [Float]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pronAccuracy = "PronAccuracy"
            case pronFluency = "PronFluency"
            case pronCompletion = "PronCompletion"
            case words = "Words"
            case sessionId = "SessionId"
            case audioUrl = "AudioUrl"
            case sentenceInfoSet = "SentenceInfoSet"
            case status = "Status"
            case suggestedScore = "SuggestedScore"
            case refTextId = "RefTextId"
            case keyWordHits = "KeyWordHits"
            case unKeyWordHits = "UnKeyWordHits"
            case requestId = "RequestId"
        }
    }

    /// 发音数据传输接口附带初始化过程（常用实践）
    ///
    /// 本接口可用于中英文发音评测。在使用本接口时需要注意：初始化并传输音频数据，分片传输时，尽量保证SeqId顺序传输（请确认SeqId由1开始）。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func transmitOralProcessWithInit(_ input: TransmitOralProcessWithInitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransmitOralProcessWithInitResponse> {
        self.client.execute(action: "TransmitOralProcessWithInit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发音数据传输接口附带初始化过程（常用实践）
    ///
    /// 本接口可用于中英文发音评测。在使用本接口时需要注意：初始化并传输音频数据，分片传输时，尽量保证SeqId顺序传输（请确认SeqId由1开始）。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func transmitOralProcessWithInit(_ input: TransmitOralProcessWithInitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransmitOralProcessWithInitResponse {
        try await self.client.execute(action: "TransmitOralProcessWithInit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发音数据传输接口附带初始化过程（常用实践）
    ///
    /// 本接口可用于中英文发音评测。在使用本接口时需要注意：初始化并传输音频数据，分片传输时，尽量保证SeqId顺序传输（请确认SeqId由1开始）。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func transmitOralProcessWithInit(seqId: Int64, isEnd: Int64, voiceFileType: Int64, voiceEncodeType: Int64, userVoiceData: String, sessionId: String, refText: String, workMode: Int64, evalMode: Int64, scoreCoeff: Float, soeAppId: String? = nil, storageMode: Int64? = nil, sentenceInfoEnabled: Int64? = nil, serverType: Int64? = nil, isAsync: Int64? = nil, isQuery: Int64? = nil, textMode: Int64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransmitOralProcessWithInitResponse> {
        self.transmitOralProcessWithInit(.init(seqId: seqId, isEnd: isEnd, voiceFileType: voiceFileType, voiceEncodeType: voiceEncodeType, userVoiceData: userVoiceData, sessionId: sessionId, refText: refText, workMode: workMode, evalMode: evalMode, scoreCoeff: scoreCoeff, soeAppId: soeAppId, storageMode: storageMode, sentenceInfoEnabled: sentenceInfoEnabled, serverType: serverType, isAsync: isAsync, isQuery: isQuery, textMode: textMode, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 发音数据传输接口附带初始化过程（常用实践）
    ///
    /// 本接口可用于中英文发音评测。在使用本接口时需要注意：初始化并传输音频数据，分片传输时，尽量保证SeqId顺序传输（请确认SeqId由1开始）。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。
    @inlinable
    public func transmitOralProcessWithInit(seqId: Int64, isEnd: Int64, voiceFileType: Int64, voiceEncodeType: Int64, userVoiceData: String, sessionId: String, refText: String, workMode: Int64, evalMode: Int64, scoreCoeff: Float, soeAppId: String? = nil, storageMode: Int64? = nil, sentenceInfoEnabled: Int64? = nil, serverType: Int64? = nil, isAsync: Int64? = nil, isQuery: Int64? = nil, textMode: Int64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransmitOralProcessWithInitResponse {
        try await self.transmitOralProcessWithInit(.init(seqId: seqId, isEnd: isEnd, voiceFileType: voiceFileType, voiceEncodeType: voiceEncodeType, userVoiceData: userVoiceData, sessionId: sessionId, refText: refText, workMode: workMode, evalMode: evalMode, scoreCoeff: scoreCoeff, soeAppId: soeAppId, storageMode: storageMode, sentenceInfoEnabled: sentenceInfoEnabled, serverType: serverType, isAsync: isAsync, isQuery: isQuery, textMode: textMode, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }
}
