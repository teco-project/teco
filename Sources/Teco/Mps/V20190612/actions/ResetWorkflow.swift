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

extension Mps {
    /// ResetWorkflow请求参数结构体
    public struct ResetWorkflowRequest: TCRequest {
        /// 工作流 ID。
        public let workflowId: Int64

        /// 工作流名称，最多128字符。同一个用户该名称唯一。
        public let workflowName: String

        /// 工作流绑定的触发规则，当上传视频命中该规则到该对象时即触发工作流。
        public let trigger: WorkflowTrigger

        /// 视频处理的文件输出配置。不填则继承 Trigger 中的存储位置。
        public let outputStorage: TaskOutputStorage?

        /// 视频处理生成的文件输出的目标目录，如`/movie/201907/`。如果不填，表示与触发文件所在的目录一致，即`{inputDir}`。
        public let outputDir: String?

        /// 视频处理类型任务参数。
        public let mediaProcessTask: MediaProcessTaskInput?

        /// 视频内容审核类型任务参数。
        public let aiContentReviewTask: AiContentReviewTaskInput?

        /// 视频内容分析类型任务参数。
        public let aiAnalysisTask: AiAnalysisTaskInput?

        /// 视频内容识别类型任务参数。
        public let aiRecognitionTask: AiRecognitionTaskInput?

        /// 工作流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let taskPriority: Int64?

        /// 任务的事件通知信息，不填代表不获取事件通知。
        public let taskNotifyConfig: TaskNotifyConfig?

        public init(workflowId: Int64, workflowName: String, trigger: WorkflowTrigger, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, taskPriority: Int64? = nil, taskNotifyConfig: TaskNotifyConfig? = nil) {
            self.workflowId = workflowId
            self.workflowName = workflowName
            self.trigger = trigger
            self.outputStorage = outputStorage
            self.outputDir = outputDir
            self.mediaProcessTask = mediaProcessTask
            self.aiContentReviewTask = aiContentReviewTask
            self.aiAnalysisTask = aiAnalysisTask
            self.aiRecognitionTask = aiRecognitionTask
            self.taskPriority = taskPriority
            self.taskNotifyConfig = taskNotifyConfig
        }

        enum CodingKeys: String, CodingKey {
            case workflowId = "WorkflowId"
            case workflowName = "WorkflowName"
            case trigger = "Trigger"
            case outputStorage = "OutputStorage"
            case outputDir = "OutputDir"
            case mediaProcessTask = "MediaProcessTask"
            case aiContentReviewTask = "AiContentReviewTask"
            case aiAnalysisTask = "AiAnalysisTask"
            case aiRecognitionTask = "AiRecognitionTask"
            case taskPriority = "TaskPriority"
            case taskNotifyConfig = "TaskNotifyConfig"
        }
    }

    /// ResetWorkflow返回参数结构体
    public struct ResetWorkflowResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重设工作流
    ///
    /// 重新设置一个已经存在且处于禁用状态的工作流。
    @inlinable @discardableResult
    public func resetWorkflow(_ input: ResetWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetWorkflowResponse> {
        self.client.execute(action: "ResetWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重设工作流
    ///
    /// 重新设置一个已经存在且处于禁用状态的工作流。
    @inlinable @discardableResult
    public func resetWorkflow(_ input: ResetWorkflowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetWorkflowResponse {
        try await self.client.execute(action: "ResetWorkflow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重设工作流
    ///
    /// 重新设置一个已经存在且处于禁用状态的工作流。
    @inlinable @discardableResult
    public func resetWorkflow(workflowId: Int64, workflowName: String, trigger: WorkflowTrigger, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, taskPriority: Int64? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetWorkflowResponse> {
        self.resetWorkflow(.init(workflowId: workflowId, workflowName: workflowName, trigger: trigger, outputStorage: outputStorage, outputDir: outputDir, mediaProcessTask: mediaProcessTask, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, taskPriority: taskPriority, taskNotifyConfig: taskNotifyConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 重设工作流
    ///
    /// 重新设置一个已经存在且处于禁用状态的工作流。
    @inlinable @discardableResult
    public func resetWorkflow(workflowId: Int64, workflowName: String, trigger: WorkflowTrigger, outputStorage: TaskOutputStorage? = nil, outputDir: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, taskPriority: Int64? = nil, taskNotifyConfig: TaskNotifyConfig? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetWorkflowResponse {
        try await self.resetWorkflow(.init(workflowId: workflowId, workflowName: workflowName, trigger: trigger, outputStorage: outputStorage, outputDir: outputDir, mediaProcessTask: mediaProcessTask, aiContentReviewTask: aiContentReviewTask, aiAnalysisTask: aiAnalysisTask, aiRecognitionTask: aiRecognitionTask, taskPriority: taskPriority, taskNotifyConfig: taskNotifyConfig), region: region, logger: logger, on: eventLoop)
    }
}
