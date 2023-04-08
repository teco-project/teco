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

extension Tmt {
    /// SpeechTranslate请求参数结构体
    public struct SpeechTranslateRequest: TCRequestModel {
        /// 一段完整的语音对应一个SessionUuid
        public let sessionUuid: String

        /// 音频中的语言类型，支持语言列表<li> zh : 中文 </li> <li> en : 英文 </li>
        public let source: String

        /// 翻译目标语言类型，支持的语言列表<li> zh : 中文 </li> <li> en : 英文 </li>
        public let target: String

        /// pcm : 146   speex : 16779154   mp3 : 83886080
        public let audioFormat: Int64

        /// 语音分片的序号，从0开始
        public let seq: Int64

        /// 是否最后一片语音分片，0-否，1-是
        public let isEnd: Int64

        /// 语音分片内容进行 Base64 编码后的字符串。音频内容需包含有效并可识别的文本信息。
        public let data: String

        /// 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        public let projectId: Int64?

        /// 识别模式，该参数已废弃
        public let mode: String?

        /// 该参数已废弃
        public let transType: Int64?

        public init(sessionUuid: String, source: String, target: String, audioFormat: Int64, seq: Int64, isEnd: Int64, data: String, projectId: Int64? = nil, mode: String? = nil, transType: Int64? = nil) {
            self.sessionUuid = sessionUuid
            self.source = source
            self.target = target
            self.audioFormat = audioFormat
            self.seq = seq
            self.isEnd = isEnd
            self.data = data
            self.projectId = projectId
            self.mode = mode
            self.transType = transType
        }

        enum CodingKeys: String, CodingKey {
            case sessionUuid = "SessionUuid"
            case source = "Source"
            case target = "Target"
            case audioFormat = "AudioFormat"
            case seq = "Seq"
            case isEnd = "IsEnd"
            case data = "Data"
            case projectId = "ProjectId"
            case mode = "Mode"
            case transType = "TransType"
        }
    }

    /// SpeechTranslate返回参数结构体
    public struct SpeechTranslateResponse: TCResponseModel {
        /// 请求的SessionUuid直接返回
        public let sessionUuid: String

        /// 语音识别状态 1-进行中 0-完成
        public let recognizeStatus: Int64

        /// 识别出的原文
        public let sourceText: String

        /// 翻译出的译文
        public let targetText: String

        /// 第几个语音分片
        public let seq: Int64

        /// 原语言
        public let source: String

        /// 目标语言
        public let target: String

        /// 当请求的Mode参数填写bvad是，启动VadSeq。此时Seq会被设置为后台vad（静音检测）后的新序号，而VadSeq代表客户端原始Seq值
        public let vadSeq: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sessionUuid = "SessionUuid"
            case recognizeStatus = "RecognizeStatus"
            case sourceText = "SourceText"
            case targetText = "TargetText"
            case seq = "Seq"
            case source = "Source"
            case target = "Target"
            case vadSeq = "VadSeq"
            case requestId = "RequestId"
        }
    }

    /// 语音翻译
    ///
    /// 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的语音翻译服务。
    /// 待识别和翻译的音频文件可以是 pcm、mp3和speex 格式，pcm采样率要求16kHz、位深16bit、单声道，音频内语音清晰。<br/>
    /// 如果采用流式传输的方式，要求每个分片时长200ms~500ms；如果采用非流式的传输方式，要求音频时长不超过8s。注意最后一个分片的IsEnd参数设置为1。<br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源部分。
    @inlinable
    public func speechTranslate(_ input: SpeechTranslateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SpeechTranslateResponse> {
        self.client.execute(action: "SpeechTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 语音翻译
    ///
    /// 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的语音翻译服务。
    /// 待识别和翻译的音频文件可以是 pcm、mp3和speex 格式，pcm采样率要求16kHz、位深16bit、单声道，音频内语音清晰。<br/>
    /// 如果采用流式传输的方式，要求每个分片时长200ms~500ms；如果采用非流式的传输方式，要求音频时长不超过8s。注意最后一个分片的IsEnd参数设置为1。<br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源部分。
    @inlinable
    public func speechTranslate(_ input: SpeechTranslateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SpeechTranslateResponse {
        try await self.client.execute(action: "SpeechTranslate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 语音翻译
    ///
    /// 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的语音翻译服务。
    /// 待识别和翻译的音频文件可以是 pcm、mp3和speex 格式，pcm采样率要求16kHz、位深16bit、单声道，音频内语音清晰。<br/>
    /// 如果采用流式传输的方式，要求每个分片时长200ms~500ms；如果采用非流式的传输方式，要求音频时长不超过8s。注意最后一个分片的IsEnd参数设置为1。<br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源部分。
    @inlinable
    public func speechTranslate(sessionUuid: String, source: String, target: String, audioFormat: Int64, seq: Int64, isEnd: Int64, data: String, projectId: Int64? = nil, mode: String? = nil, transType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SpeechTranslateResponse> {
        self.speechTranslate(.init(sessionUuid: sessionUuid, source: source, target: target, audioFormat: audioFormat, seq: seq, isEnd: isEnd, data: data, projectId: projectId, mode: mode, transType: transType), region: region, logger: logger, on: eventLoop)
    }

    /// 语音翻译
    ///
    /// 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的语音翻译服务。
    /// 待识别和翻译的音频文件可以是 pcm、mp3和speex 格式，pcm采样率要求16kHz、位深16bit、单声道，音频内语音清晰。<br/>
    /// 如果采用流式传输的方式，要求每个分片时长200ms~500ms；如果采用非流式的传输方式，要求音频时长不超过8s。注意最后一个分片的IsEnd参数设置为1。<br />
    /// 提示：对于一般开发者，我们建议优先使用SDK接入简化开发。SDK使用介绍请直接查看 5. 开发者资源部分。
    @inlinable
    public func speechTranslate(sessionUuid: String, source: String, target: String, audioFormat: Int64, seq: Int64, isEnd: Int64, data: String, projectId: Int64? = nil, mode: String? = nil, transType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SpeechTranslateResponse {
        try await self.speechTranslate(.init(sessionUuid: sessionUuid, source: source, target: target, audioFormat: audioFormat, seq: seq, isEnd: isEnd, data: data, projectId: projectId, mode: mode, transType: transType), region: region, logger: logger, on: eventLoop)
    }
}
