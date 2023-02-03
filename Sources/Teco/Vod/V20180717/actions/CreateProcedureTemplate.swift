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

extension Vod {
    /// CreateProcedureTemplate请求参数结构体
    public struct CreateProcedureTemplateRequest: TCRequestModel {
        /// 任务流名字（支持中文，不超过20个字）。
        public let name: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 视频处理类型任务参数。
        public let mediaProcessTask: MediaProcessTaskInput?

        /// AI 内容审核类型任务参数 \*。
        /// <font color=red>\*：该参数用于发起旧版审核，不建议使用。推荐使用 ReviewAudioVideoTask 参数发起审核。</font>
        public let aiContentReviewTask: AiContentReviewTaskInput?

        /// AI 内容分析类型任务参数。
        public let aiAnalysisTask: AiAnalysisTaskInput?

        /// AI 内容识别类型任务参数。
        public let aiRecognitionTask: AiRecognitionTaskInput?

        /// 音视频审核类型任务参数。
        public let reviewAudioVideoTask: ProcedureReviewAudioVideoTaskInput?

        public init(name: String, subAppId: UInt64? = nil, comment: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, reviewAudioVideoTask: ProcedureReviewAudioVideoTaskInput? = nil) {
            self.name = name
            self.subAppId = subAppId
            self.comment = comment
            self.mediaProcessTask = mediaProcessTask
            self.aiContentReviewTask = aiContentReviewTask
            self.aiAnalysisTask = aiAnalysisTask
            self.aiRecognitionTask = aiRecognitionTask
            self.reviewAudioVideoTask = reviewAudioVideoTask
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case subAppId = "SubAppId"
            case comment = "Comment"
            case mediaProcessTask = "MediaProcessTask"
            case aiContentReviewTask = "AiContentReviewTask"
            case aiAnalysisTask = "AiAnalysisTask"
            case aiRecognitionTask = "AiRecognitionTask"
            case reviewAudioVideoTask = "ReviewAudioVideoTask"
        }
    }

    /// CreateProcedureTemplate返回参数结构体
    public struct CreateProcedureTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建任务流模板
    ///
    /// 创建用户自定义的任务流模板，模板上限：50。
    @inlinable @discardableResult
    public func createProcedureTemplate(_ input: CreateProcedureTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProcedureTemplateResponse> {
        self.client.execute(action: "CreateProcedureTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务流模板
    ///
    /// 创建用户自定义的任务流模板，模板上限：50。
    @inlinable @discardableResult
    public func createProcedureTemplate(_ input: CreateProcedureTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProcedureTemplateResponse {
        try await self.client.execute(action: "CreateProcedureTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建任务流模板
    ///
    /// 创建用户自定义的任务流模板，模板上限：50。
    @inlinable @discardableResult
    public func createProcedureTemplate(name: String, subAppId: UInt64? = nil, comment: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, reviewAudioVideoTask: ProcedureReviewAudioVideoTaskInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProcedureTemplateResponse> {
        let input = CreateProcedureTemplateRequest(name: name, subAppId: subAppId, comment: comment, mediaProcessTask: mediaProcessTask, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, reviewAudioVideoTask: reviewAudioVideoTask)
        return self.client.execute(action: "CreateProcedureTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务流模板
    ///
    /// 创建用户自定义的任务流模板，模板上限：50。
    @inlinable @discardableResult
    public func createProcedureTemplate(name: String, subAppId: UInt64? = nil, comment: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, reviewAudioVideoTask: ProcedureReviewAudioVideoTaskInput? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProcedureTemplateResponse {
        let input = CreateProcedureTemplateRequest(name: name, subAppId: subAppId, comment: comment, mediaProcessTask: mediaProcessTask, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, reviewAudioVideoTask: reviewAudioVideoTask)
        return try await self.client.execute(action: "CreateProcedureTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
