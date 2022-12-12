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
    /// SubmitOneByOneClassTask请求参数结构体
    public struct SubmitOneByOneClassTaskRequest: TCRequestModel {
        /// 输入分析对象内容，输入数据格式参考FileType参数释义
        public let fileContent: String
        
        /// 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，picture: 图片二进制数据的BASE64编码
        public let fileType: String
        
        /// 音频源的语言，默认0为英文，1为中文 
        public let lang: Int64?
        
        /// 查询人员库列表，可填写学生的注册照所在人员库
        public let librarySet: [String]?
        
        /// 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        public let maxVideoDuration: Int64?
        
        /// 识别词库名列表，这些词汇库用来维护关键词，评估学生对这些关键词的使用情况
        public let vocabLibNameList: [String]?
        
        /// 语音编码类型 1:pcm，当FileType为vod_url或live_url时为必填
        public let voiceEncodeType: Int64?
        
        /// 语音文件类型10:视频（三种音频格式目前仅支持16k采样率16bit），当FileType为vod_url或live_url时为必填
        public let voiceFileType: Int64?
        
        public init (fileContent: String, fileType: String, lang: Int64? = nil, librarySet: [String]? = nil, maxVideoDuration: Int64? = nil, vocabLibNameList: [String]? = nil, voiceEncodeType: Int64? = nil, voiceFileType: Int64? = nil) {
            self.fileContent = fileContent
            self.fileType = fileType
            self.lang = lang
            self.librarySet = librarySet
            self.maxVideoDuration = maxVideoDuration
            self.vocabLibNameList = vocabLibNameList
            self.voiceEncodeType = voiceEncodeType
            self.voiceFileType = voiceFileType
        }
        
        enum CodingKeys: String, CodingKey {
            case fileContent = "FileContent"
            case fileType = "FileType"
            case lang = "Lang"
            case librarySet = "LibrarySet"
            case maxVideoDuration = "MaxVideoDuration"
            case vocabLibNameList = "VocabLibNameList"
            case voiceEncodeType = "VoiceEncodeType"
            case voiceFileType = "VoiceFileType"
        }
    }
    
    /// SubmitOneByOneClassTask返回参数结构体
    public struct SubmitOneByOneClassTaskResponse: TCResponseModel {
        /// 图像任务直接返回结果，包括：FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、TimeInfo
        public let imageResults: [ImageTaskResult]
        
        /// 任务ID
        public let taskId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageResults = "ImageResults"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 提交在线1对1课堂任务
    ///
    /// **提交在线1对1课堂任务**  
    /// 对于在线1对1课堂，老师通过视频向学生授课，并且学生人数为1人。通过上传学生端的图像信息，可以获取学生的听课情况分析。 具体指一路全局画面且背景不动，有1位学生的头像或上半身的画面，要求画面稳定清晰。
    ///   
    /// **提供的功能接口有：**学生人脸识别、学生表情识别、语音识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、人脸坐标、人脸尺寸、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、语音转文字、发音时长、非发音时长、音量、语速等。
    ///   
    /// **对场景的要求为：**真实常规1v1授课场景，学生2人以下，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。
    ///     
    /// **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。
    @inlinable
    public func submitOneByOneClassTask(_ input: SubmitOneByOneClassTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SubmitOneByOneClassTaskResponse > {
        self.client.execute(action: "SubmitOneByOneClassTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 提交在线1对1课堂任务
    ///
    /// **提交在线1对1课堂任务**  
    /// 对于在线1对1课堂，老师通过视频向学生授课，并且学生人数为1人。通过上传学生端的图像信息，可以获取学生的听课情况分析。 具体指一路全局画面且背景不动，有1位学生的头像或上半身的画面，要求画面稳定清晰。
    ///   
    /// **提供的功能接口有：**学生人脸识别、学生表情识别、语音识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、人脸坐标、人脸尺寸、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、语音转文字、发音时长、非发音时长、音量、语速等。
    ///   
    /// **对场景的要求为：**真实常规1v1授课场景，学生2人以下，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。
    ///     
    /// **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。
    @inlinable
    public func submitOneByOneClassTask(_ input: SubmitOneByOneClassTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitOneByOneClassTaskResponse {
        try await self.client.execute(action: "SubmitOneByOneClassTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
