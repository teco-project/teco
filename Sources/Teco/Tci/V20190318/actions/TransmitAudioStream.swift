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

extension Tci {
    /// 流式音频分析
    ///
    /// 分析音频信息
    @inlinable
    public func transmitAudioStream(_ input: TransmitAudioStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TransmitAudioStreamResponse > {
        self.client.execute(action: "TransmitAudioStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 流式音频分析
    ///
    /// 分析音频信息
    @inlinable
    public func transmitAudioStream(_ input: TransmitAudioStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransmitAudioStreamResponse {
        try await self.client.execute(action: "TransmitAudioStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TransmitAudioStream请求参数结构体
    public struct TransmitAudioStreamRequest: TCRequestModel {
        /// 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
        public let functions: Function
        
        /// 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义。
        public let seqId: Int64
        
        /// 语音段唯一标识，一个完整语音一个SessionId。
        public let sessionId: String
        
        /// 当前数据包数据, 流式模式下数据包大小可以按需设置，在网络良好的情况下，建议设置为0.5k，且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数），编码格式要求为BASE64。
        public let userVoiceData: String
        
        /// 语音编码类型 1:pcm。
        public let voiceEncodeType: Int64
        
        /// 语音文件类型 	1: raw, 2: wav, 3: mp3 (语言文件格式目前仅支持 16k 采样率 16bit 编码单声道，如有不一致可能导致评估不准确或失败)。
        public let voiceFileType: Int64
        
        /// 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        public let isEnd: Int64?
        
        /// 音频源的语言，默认0为英文，1为中文
        public let lang: Int64?
        
        /// 是否临时保存 音频链接
        public let storageMode: Int64?
        
        /// 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        public let vocabLibNameList: [String]?
        
        public init (functions: Function, seqId: Int64, sessionId: String, userVoiceData: String, voiceEncodeType: Int64, voiceFileType: Int64, isEnd: Int64?, lang: Int64?, storageMode: Int64?, vocabLibNameList: [String]?) {
            self.functions = functions
            self.seqId = seqId
            self.sessionId = sessionId
            self.userVoiceData = userVoiceData
            self.voiceEncodeType = voiceEncodeType
            self.voiceFileType = voiceFileType
            self.isEnd = isEnd
            self.lang = lang
            self.storageMode = storageMode
            self.vocabLibNameList = vocabLibNameList
        }
        
        enum CodingKeys: String, CodingKey {
            case functions = "Functions"
            case seqId = "SeqId"
            case sessionId = "SessionId"
            case userVoiceData = "UserVoiceData"
            case voiceEncodeType = "VoiceEncodeType"
            case voiceFileType = "VoiceFileType"
            case isEnd = "IsEnd"
            case lang = "Lang"
            case storageMode = "StorageMode"
            case vocabLibNameList = "VocabLibNameList"
        }
    }
    
    /// TransmitAudioStream返回参数结构体
    public struct TransmitAudioStreamResponse: TCResponseModel {
        /// 返回的当前音频的统计信息。当进度为100时返回。
        public let asrStat: ASRStat
        
        /// 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        public let texts: [WholeTextItem]
        
        /// 返回词汇库中的单词出现的详细时间信息。
        public let vocabAnalysisDetailInfo: [VocabDetailInfomation]
        
        /// 返回词汇库中的单词出现的次数信息。
        public let vocabAnalysisStatInfo: [VocabStatInfomation]
        
        /// 音频全部文本。
        public let allTexts: String
        
        /// 临时保存的音频链接
        public let audioUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asrStat = "AsrStat"
            case texts = "Texts"
            case vocabAnalysisDetailInfo = "VocabAnalysisDetailInfo"
            case vocabAnalysisStatInfo = "VocabAnalysisStatInfo"
            case allTexts = "AllTexts"
            case audioUrl = "AudioUrl"
            case requestId = "RequestId"
        }
    }
}
