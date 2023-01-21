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

extension Mps {
    /// ProcessMedia请求参数结构体
    public struct ProcessMediaRequest: TCRequestModel {
        /// 媒体处理的文件输入信息。
        public let inputInfo: MediaInputInfo

        /// 媒体处理输出文件的目标存储。不填则继承 InputInfo 中的存储位置。
        public let outputStorage: TaskOutputStorage?

        /// 媒体处理生成的文件输出的目标目录，如`/movie/201907/`。如果不填，表示与 InputInfo 中文件所在的目录一致。
        public let outputDir: String?

        /// 媒体处理类型任务参数。
        public let mediaProcessTask: MediaProcessTaskInput?

        /// 视频内容审核类型任务参数。
        public let aiContentReviewTask: AiContentReviewTaskInput?

        /// 视频内容分析类型任务参数。
        public let aiAnalysisTask: AiAnalysisTaskInput?

        /// 视频内容识别类型任务参数。
        public let aiRecognitionTask: AiRecognitionTaskInput?

        /// 任务的事件通知信息，不填代表不获取事件通知。
        public let taskNotifyConfig: TaskNotifyConfig?

        /// 任务流的优先级，数值越大优先级越高，取值范围是-10到 10，不填代表0。
        public let tasksPriority: Int64?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 编排ID。
        /// 注意1：对于OutputStorage、OutputDir参数：
        /// <li>当服务编排中子任务节点配置了OutputStorage、OutputDir时，该子任务节点中配置的输出作为子任务的输出。</li>
        /// <li>当服务编排中子任务节点没有配置OutputStorage、OutputDir时，若创建任务接口（ProcessMedia）有输出，将覆盖原有编排的默认输出。</li>
        /// 注意2：对于TaskNotifyConfig参数，若创建任务接口（ProcessMedia）有设置，将覆盖原有编排的默认回调。
        /// 注意3：编排的 Trigger 只是用来自动化触发场景，在手动发起的请求中已经配置的 Trigger 无意义。
        public let scheduleId: Int64?

        public init(inputInfo: MediaInputInfo, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, tasksPriority: Int64? = nil, sessionId: String? = nil, sessionContext: String? = nil, scheduleId: Int64? = nil) {
            self.inputInfo = inputInfo
            self.outputStorage = outputStorage
            self.outputDir = outputDir
            self.mediaProcessTask = mediaProcessTask
            self.aiContentReviewTask = aiContentReviewTask
            self.aiAnalysisTask = aiAnalysisTask
            self.aiRecognitionTask = aiRecognitionTask
            self.taskNotifyConfig = taskNotifyConfig
            self.tasksPriority = tasksPriority
            self.sessionId = sessionId
            self.sessionContext = sessionContext
            self.scheduleId = scheduleId
        }

        enum CodingKeys: String, CodingKey {
            case inputInfo = "InputInfo"
            case outputStorage = "OutputStorage"
            case outputDir = "OutputDir"
            case mediaProcessTask = "MediaProcessTask"
            case aiContentReviewTask = "AiContentReviewTask"
            case aiAnalysisTask = "AiAnalysisTask"
            case aiRecognitionTask = "AiRecognitionTask"
            case taskNotifyConfig = "TaskNotifyConfig"
            case tasksPriority = "TasksPriority"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
            case scheduleId = "ScheduleId"
        }
    }

    /// ProcessMedia返回参数结构体
    public struct ProcessMediaResponse: TCResponseModel {
        /// 任务 ID。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 发起媒体处理
    ///
    /// 对 URL视频链接 或 COS 中的媒体文件发起处理任务，功能包括：
    /// 1. 视频转码（普通转码、极速高清转码、音视频增强）；
    /// 2. 视频转动图；
    /// 3. 对视频按指定时间点截图；
    /// 4. 对视频采样截图；
    /// 5. 对视频截图雪碧图；
    /// 6. 对视频转自适应码流；
    /// 7. 智能内容审核（鉴黄、敏感信息检测）；
    /// 8. 智能内容分析（标签、分类、封面、按帧标签、拆条、集锦、片头片尾）；
    /// 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音翻译、物体识别）。
    @inlinable
    public func processMedia(_ input: ProcessMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessMediaResponse> {
        self.client.execute(action: "ProcessMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发起媒体处理
    ///
    /// 对 URL视频链接 或 COS 中的媒体文件发起处理任务，功能包括：
    /// 1. 视频转码（普通转码、极速高清转码、音视频增强）；
    /// 2. 视频转动图；
    /// 3. 对视频按指定时间点截图；
    /// 4. 对视频采样截图；
    /// 5. 对视频截图雪碧图；
    /// 6. 对视频转自适应码流；
    /// 7. 智能内容审核（鉴黄、敏感信息检测）；
    /// 8. 智能内容分析（标签、分类、封面、按帧标签、拆条、集锦、片头片尾）；
    /// 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音翻译、物体识别）。
    @inlinable
    public func processMedia(_ input: ProcessMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessMediaResponse {
        try await self.client.execute(action: "ProcessMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发起媒体处理
    ///
    /// 对 URL视频链接 或 COS 中的媒体文件发起处理任务，功能包括：
    /// 1. 视频转码（普通转码、极速高清转码、音视频增强）；
    /// 2. 视频转动图；
    /// 3. 对视频按指定时间点截图；
    /// 4. 对视频采样截图；
    /// 5. 对视频截图雪碧图；
    /// 6. 对视频转自适应码流；
    /// 7. 智能内容审核（鉴黄、敏感信息检测）；
    /// 8. 智能内容分析（标签、分类、封面、按帧标签、拆条、集锦、片头片尾）；
    /// 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音翻译、物体识别）。
    @inlinable
    public func processMedia(inputInfo: MediaInputInfo, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, tasksPriority: Int64? = nil, sessionId: String? = nil, sessionContext: String? = nil, scheduleId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessMediaResponse> {
        self.processMedia(ProcessMediaRequest(inputInfo: inputInfo, outputStorage: outputStorage, outputDir: outputDir, mediaProcessTask: mediaProcessTask, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, taskNotifyConfig: taskNotifyConfig, tasksPriority: tasksPriority, sessionId: sessionId, sessionContext: sessionContext, scheduleId: scheduleId), region: region, logger: logger, on: eventLoop)
    }

    /// 发起媒体处理
    ///
    /// 对 URL视频链接 或 COS 中的媒体文件发起处理任务，功能包括：
    /// 1. 视频转码（普通转码、极速高清转码、音视频增强）；
    /// 2. 视频转动图；
    /// 3. 对视频按指定时间点截图；
    /// 4. 对视频采样截图；
    /// 5. 对视频截图雪碧图；
    /// 6. 对视频转自适应码流；
    /// 7. 智能内容审核（鉴黄、敏感信息检测）；
    /// 8. 智能内容分析（标签、分类、封面、按帧标签、拆条、集锦、片头片尾）；
    /// 9. 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音翻译、物体识别）。
    @inlinable
    public func processMedia(inputInfo: MediaInputInfo, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, tasksPriority: Int64? = nil, sessionId: String? = nil, sessionContext: String? = nil, scheduleId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessMediaResponse {
        try await self.processMedia(ProcessMediaRequest(inputInfo: inputInfo, outputStorage: outputStorage, outputDir: outputDir, mediaProcessTask: mediaProcessTask, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, taskNotifyConfig: taskNotifyConfig, tasksPriority: tasksPriority, sessionId: sessionId, sessionContext: sessionContext, scheduleId: scheduleId), region: region, logger: logger, on: eventLoop)
    }
}
