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
    /// SubmitConversationTask请求参数结构体
    public struct SubmitConversationTaskRequest: TCRequestModel {
        /// 音频源的语言，默认0为英文，1为中文
        public let lang: Int64
        
        /// 学生音频流
        public let studentUrl: String
        
        /// 教师音频流
        public let teacherUrl: String
        
        /// 语音编码类型 1:pcm
        public let voiceEncodeType: Int64
        
        /// 语音文件类型 1:raw, 2:wav, 3:mp3（三种格式目前仅支持16k采样率16bit）
        public let voiceFileType: Int64
        
        /// 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
        public let functions: Function?
        
        /// 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        public let vocabLibNameList: [String]?
        
        public init (lang: Int64, studentUrl: String, teacherUrl: String, voiceEncodeType: Int64, voiceFileType: Int64, functions: Function? = nil, vocabLibNameList: [String]? = nil) {
            self.lang = lang
            self.studentUrl = studentUrl
            self.teacherUrl = teacherUrl
            self.voiceEncodeType = voiceEncodeType
            self.voiceFileType = voiceFileType
            self.functions = functions
            self.vocabLibNameList = vocabLibNameList
        }
        
        enum CodingKeys: String, CodingKey {
            case lang = "Lang"
            case studentUrl = "StudentUrl"
            case teacherUrl = "TeacherUrl"
            case voiceEncodeType = "VoiceEncodeType"
            case voiceFileType = "VoiceFileType"
            case functions = "Functions"
            case vocabLibNameList = "VocabLibNameList"
        }
    }
    
    /// SubmitConversationTask返回参数结构体
    public struct SubmitConversationTaskResponse: TCResponseModel {
        /// 	查询结果时指名的jobid。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        public let jobId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }
    
    /// 对话任务分析接口
    @inlinable
    public func submitConversationTask(_ input: SubmitConversationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SubmitConversationTaskResponse > {
        self.client.execute(action: "SubmitConversationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 对话任务分析接口
    @inlinable
    public func submitConversationTask(_ input: SubmitConversationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitConversationTaskResponse {
        try await self.client.execute(action: "SubmitConversationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
