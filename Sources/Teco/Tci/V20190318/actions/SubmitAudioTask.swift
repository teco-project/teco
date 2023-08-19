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

extension Tci {
    /// SubmitAudioTask请求参数结构体
    public struct SubmitAudioTaskRequest: TCRequest {
        /// 音频源的语言，默认0为英文，1为中文
        public let lang: Int64

        /// 音频URL。客户请求为URL方式时必须带此字段指名音频的url。
        public let url: String

        /// 语音编码类型 1:pcm
        public let voiceEncodeType: Int64

        /// 语音文件类型 1:raw, 2:wav, 3:mp3，10:视频（三种音频格式目前仅支持16k采样率16bit）
        public let voiceFileType: Int64

        /// 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
        public let functions: Function?

        /// 视频文件类型，默认点播，直播填 live_url
        public let fileType: String?

        /// 静音阈值设置，如果静音检测开关开启，则静音时间超过这个阈值认为是静音片段，在结果中会返回, 没给的话默认值为3s
        public let muteThreshold: Int64?

        /// 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        public let vocabLibNameList: [String]?

        public init(lang: Int64, url: String, voiceEncodeType: Int64, voiceFileType: Int64, functions: Function? = nil, fileType: String? = nil, muteThreshold: Int64? = nil, vocabLibNameList: [String]? = nil) {
            self.lang = lang
            self.url = url
            self.voiceEncodeType = voiceEncodeType
            self.voiceFileType = voiceFileType
            self.functions = functions
            self.fileType = fileType
            self.muteThreshold = muteThreshold
            self.vocabLibNameList = vocabLibNameList
        }

        enum CodingKeys: String, CodingKey {
            case lang = "Lang"
            case url = "Url"
            case voiceEncodeType = "VoiceEncodeType"
            case voiceFileType = "VoiceFileType"
            case functions = "Functions"
            case fileType = "FileType"
            case muteThreshold = "MuteThreshold"
            case vocabLibNameList = "VocabLibNameList"
        }
    }

    /// SubmitAudioTask返回参数结构体
    public struct SubmitAudioTaskResponse: TCResponse {
        /// 查询结果时指名的jobid。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        public let jobId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 音频任务提交接口
    @inlinable
    public func submitAudioTask(_ input: SubmitAudioTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitAudioTaskResponse> {
        self.client.execute(action: "SubmitAudioTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 音频任务提交接口
    @inlinable
    public func submitAudioTask(_ input: SubmitAudioTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitAudioTaskResponse {
        try await self.client.execute(action: "SubmitAudioTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 音频任务提交接口
    @inlinable
    public func submitAudioTask(lang: Int64, url: String, voiceEncodeType: Int64, voiceFileType: Int64, functions: Function? = nil, fileType: String? = nil, muteThreshold: Int64? = nil, vocabLibNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitAudioTaskResponse> {
        self.submitAudioTask(.init(lang: lang, url: url, voiceEncodeType: voiceEncodeType, voiceFileType: voiceFileType, functions: functions, fileType: fileType, muteThreshold: muteThreshold, vocabLibNameList: vocabLibNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 音频任务提交接口
    @inlinable
    public func submitAudioTask(lang: Int64, url: String, voiceEncodeType: Int64, voiceFileType: Int64, functions: Function? = nil, fileType: String? = nil, muteThreshold: Int64? = nil, vocabLibNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitAudioTaskResponse {
        try await self.submitAudioTask(.init(lang: lang, url: url, voiceEncodeType: voiceEncodeType, voiceFileType: voiceFileType, functions: functions, fileType: fileType, muteThreshold: muteThreshold, vocabLibNameList: vocabLibNameList), region: region, logger: logger, on: eventLoop)
    }
}
