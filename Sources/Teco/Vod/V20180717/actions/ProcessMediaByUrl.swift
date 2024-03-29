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

extension Vod {
    /// ProcessMediaByUrl请求参数结构体
    public struct ProcessMediaByUrlRequest: TCRequest {
        /// API 已经_不再维护_。推荐使用的替代 API 请参考接口描述。
        public let inputInfo: MediaInputInfo?

        /// 输出文件 COS 路径信息。
        public let outputInfo: MediaOutputInfo?

        /// 视频内容审核类型任务参数。
        public let aiContentReviewTask: AiContentReviewTaskInput?

        /// 视频内容分析类型任务参数。
        public let aiAnalysisTask: AiAnalysisTaskInput?

        /// 视频内容识别类型任务参数。
        public let aiRecognitionTask: AiRecognitionTaskInput?

        /// 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        public let tasksNotifyMode: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(inputInfo: MediaInputInfo? = nil, outputInfo: MediaOutputInfo? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, tasksPriority: Int64? = nil, tasksNotifyMode: String? = nil, sessionContext: String? = nil, sessionId: String? = nil, subAppId: UInt64? = nil) {
            self.inputInfo = inputInfo
            self.outputInfo = outputInfo
            self.aiContentReviewTask = aiContentReviewTask
            self.aiAnalysisTask = aiAnalysisTask
            self.aiRecognitionTask = aiRecognitionTask
            self.tasksPriority = tasksPriority
            self.tasksNotifyMode = tasksNotifyMode
            self.sessionContext = sessionContext
            self.sessionId = sessionId
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case inputInfo = "InputInfo"
            case outputInfo = "OutputInfo"
            case aiContentReviewTask = "AiContentReviewTask"
            case aiAnalysisTask = "AiAnalysisTask"
            case aiRecognitionTask = "AiRecognitionTask"
            case tasksPriority = "TasksPriority"
            case tasksNotifyMode = "TasksNotifyMode"
            case sessionContext = "SessionContext"
            case sessionId = "SessionId"
            case subAppId = "SubAppId"
        }
    }

    /// ProcessMediaByUrl返回参数结构体
    public struct ProcessMediaByUrlResponse: TCResponse {
        /// 任务 ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 对指定 URL 的视频发起视频处理
    ///
    /// 该 API 已经_不再维护_，请使用 MPS 产品的 [ProcessMedia](https://cloud.tencent.com/document/product/862/37578) 接口，在入参 InputInfo.UrlInputInfo.Url 中指定视频 URL。
    @inlinable
    public func processMediaByUrl(_ input: ProcessMediaByUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessMediaByUrlResponse> {
        self.client.execute(action: "ProcessMediaByUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 对指定 URL 的视频发起视频处理
    ///
    /// 该 API 已经_不再维护_，请使用 MPS 产品的 [ProcessMedia](https://cloud.tencent.com/document/product/862/37578) 接口，在入参 InputInfo.UrlInputInfo.Url 中指定视频 URL。
    @inlinable
    public func processMediaByUrl(_ input: ProcessMediaByUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessMediaByUrlResponse {
        try await self.client.execute(action: "ProcessMediaByUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 对指定 URL 的视频发起视频处理
    ///
    /// 该 API 已经_不再维护_，请使用 MPS 产品的 [ProcessMedia](https://cloud.tencent.com/document/product/862/37578) 接口，在入参 InputInfo.UrlInputInfo.Url 中指定视频 URL。
    @inlinable
    public func processMediaByUrl(inputInfo: MediaInputInfo? = nil, outputInfo: MediaOutputInfo? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, tasksPriority: Int64? = nil, tasksNotifyMode: String? = nil, sessionContext: String? = nil, sessionId: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessMediaByUrlResponse> {
        self.processMediaByUrl(.init(inputInfo: inputInfo, outputInfo: outputInfo, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, tasksPriority: tasksPriority, tasksNotifyMode: tasksNotifyMode, sessionContext: sessionContext, sessionId: sessionId, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 对指定 URL 的视频发起视频处理
    ///
    /// 该 API 已经_不再维护_，请使用 MPS 产品的 [ProcessMedia](https://cloud.tencent.com/document/product/862/37578) 接口，在入参 InputInfo.UrlInputInfo.Url 中指定视频 URL。
    @inlinable
    public func processMediaByUrl(inputInfo: MediaInputInfo? = nil, outputInfo: MediaOutputInfo? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, tasksPriority: Int64? = nil, tasksNotifyMode: String? = nil, sessionContext: String? = nil, sessionId: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessMediaByUrlResponse {
        try await self.processMediaByUrl(.init(inputInfo: inputInfo, outputInfo: outputInfo, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, tasksPriority: tasksPriority, tasksNotifyMode: tasksNotifyMode, sessionContext: sessionContext, sessionId: sessionId, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
