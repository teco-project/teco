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
    /// ProcessLiveStream请求参数结构体
    public struct ProcessLiveStreamRequest: TCRequestModel {
        /// 直播流 URL（必须是直播文件地址，支持 rtmp，hls 和 flv 等）。
        public let url: String

        /// 任务的事件通知信息，用于指定直播流处理的结果。
        public let taskNotifyConfig: LiveStreamTaskNotifyConfig

        /// 直播流处理输出文件的目标存储。如处理有文件输出，该参数为必填项。
        public let outputStorage: TaskOutputStorage?

        /// 直播流处理生成的文件输出的目标目录，如`/movie/201909/`，如果不填为 `/` 目录。
        public let outputDir: String?

        /// 视频内容审核类型任务参数。
        public let aiContentReviewTask: AiContentReviewTaskInput?

        /// 视频内容识别类型任务参数。
        public let aiRecognitionTask: AiRecognitionTaskInput?

        /// 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        public init(url: String, taskNotifyConfig: LiveStreamTaskNotifyConfig, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, sessionId: String? = nil, sessionContext: String? = nil) {
            self.url = url
            self.taskNotifyConfig = taskNotifyConfig
            self.outputStorage = outputStorage
            self.outputDir = outputDir
            self.aiContentReviewTask = aiContentReviewTask
            self.aiRecognitionTask = aiRecognitionTask
            self.sessionId = sessionId
            self.sessionContext = sessionContext
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case taskNotifyConfig = "TaskNotifyConfig"
            case outputStorage = "OutputStorage"
            case outputDir = "OutputDir"
            case aiContentReviewTask = "AiContentReviewTask"
            case aiRecognitionTask = "AiRecognitionTask"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
        }
    }

    /// ProcessLiveStream返回参数结构体
    public struct ProcessLiveStreamResponse: TCResponseModel {
        /// 任务 ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 对直播流发起处理
    ///
    /// 对直播流媒体发起处理任务，功能包括：
    ///
    /// * 智能内容审核（画面鉴黄、敏感信息检测、声音鉴黄）；
    /// * 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音实时翻译）。
    ///
    /// 直播流处理事件通知实时写入用户指定的消息队列 CMQ 中，用户需要从消息队列 CMQ 中获取事件通知结果，同时处理过程中存在输出文件的，会写入用户指定的输出文件的目标存储中。
    @inlinable
    public func processLiveStream(_ input: ProcessLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessLiveStreamResponse> {
        self.client.execute(action: "ProcessLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 对直播流发起处理
    ///
    /// 对直播流媒体发起处理任务，功能包括：
    ///
    /// * 智能内容审核（画面鉴黄、敏感信息检测、声音鉴黄）；
    /// * 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音实时翻译）。
    ///
    /// 直播流处理事件通知实时写入用户指定的消息队列 CMQ 中，用户需要从消息队列 CMQ 中获取事件通知结果，同时处理过程中存在输出文件的，会写入用户指定的输出文件的目标存储中。
    @inlinable
    public func processLiveStream(_ input: ProcessLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessLiveStreamResponse {
        try await self.client.execute(action: "ProcessLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 对直播流发起处理
    ///
    /// 对直播流媒体发起处理任务，功能包括：
    ///
    /// * 智能内容审核（画面鉴黄、敏感信息检测、声音鉴黄）；
    /// * 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音实时翻译）。
    ///
    /// 直播流处理事件通知实时写入用户指定的消息队列 CMQ 中，用户需要从消息队列 CMQ 中获取事件通知结果，同时处理过程中存在输出文件的，会写入用户指定的输出文件的目标存储中。
    @inlinable
    public func processLiveStream(url: String, taskNotifyConfig: LiveStreamTaskNotifyConfig, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, sessionId: String? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessLiveStreamResponse> {
        self.processLiveStream(ProcessLiveStreamRequest(url: url, taskNotifyConfig: taskNotifyConfig, outputStorage: outputStorage, outputDir: outputDir, aiContentReviewTask: aiContentReviewTask, aiRecognitionTask: aiRecognitionTask, sessionId: sessionId, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }

    /// 对直播流发起处理
    ///
    /// 对直播流媒体发起处理任务，功能包括：
    ///
    /// * 智能内容审核（画面鉴黄、敏感信息检测、声音鉴黄）；
    /// * 智能内容识别（人脸、文本全文、文本关键词、语音全文、语音关键词、语音实时翻译）。
    ///
    /// 直播流处理事件通知实时写入用户指定的消息队列 CMQ 中，用户需要从消息队列 CMQ 中获取事件通知结果，同时处理过程中存在输出文件的，会写入用户指定的输出文件的目标存储中。
    @inlinable
    public func processLiveStream(url: String, taskNotifyConfig: LiveStreamTaskNotifyConfig, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, sessionId: String? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessLiveStreamResponse {
        try await self.processLiveStream(ProcessLiveStreamRequest(url: url, taskNotifyConfig: taskNotifyConfig, outputStorage: outputStorage, outputDir: outputDir, aiContentReviewTask: aiContentReviewTask, aiRecognitionTask: aiRecognitionTask, sessionId: sessionId, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }
}
