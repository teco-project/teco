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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ivld {
    /// CreateTask请求参数结构体
    public struct CreateTaskRequest: TCRequestModel {
        /// 媒资文件ID，最长32B
        public let mediaId: String

        /// 媒资素材先验知识，相关限制参考MediaPreknownInfo
        public let mediaPreknownInfo: MediaPreknownInfo

        /// 任务名称，最长100个中文字符
        public let taskName: String?

        /// 是否上传转码后的视频，仅设置true时上传，默认为false
        public let uploadVideo: Bool?

        /// 自定义标签，可用于查询
        public let label: String?

        /// 任务分析完成的回调地址，该设置优先级高于控制台全局的设置；
        public let callbackURL: String?

        public init(mediaId: String, mediaPreknownInfo: MediaPreknownInfo, taskName: String? = nil, uploadVideo: Bool? = nil, label: String? = nil, callbackURL: String? = nil) {
            self.mediaId = mediaId
            self.mediaPreknownInfo = mediaPreknownInfo
            self.taskName = taskName
            self.uploadVideo = uploadVideo
            self.label = label
            self.callbackURL = callbackURL
        }

        enum CodingKeys: String, CodingKey {
            case mediaId = "MediaId"
            case mediaPreknownInfo = "MediaPreknownInfo"
            case taskName = "TaskName"
            case uploadVideo = "UploadVideo"
            case label = "Label"
            case callbackURL = "CallbackURL"
        }
    }

    /// CreateTask返回参数结构体
    public struct CreateTaskResponse: TCResponseModel {
        /// 智能标签视频分析任务ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建任务
    ///
    /// 创建智能标签任务。
    ///
    /// 请注意，本接口为异步接口，**返回TaskId只代表任务创建成功，不代表任务执行成功**。
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建任务
    ///
    /// 创建智能标签任务。
    ///
    /// 请注意，本接口为异步接口，**返回TaskId只代表任务创建成功，不代表任务执行成功**。
    @inlinable
    public func createTask(_ input: CreateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.client.execute(action: "CreateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建任务
    ///
    /// 创建智能标签任务。
    ///
    /// 请注意，本接口为异步接口，**返回TaskId只代表任务创建成功，不代表任务执行成功**。
    @inlinable
    public func createTask(mediaId: String, mediaPreknownInfo: MediaPreknownInfo, taskName: String? = nil, uploadVideo: Bool? = nil, label: String? = nil, callbackURL: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskResponse> {
        self.createTask(.init(mediaId: mediaId, mediaPreknownInfo: mediaPreknownInfo, taskName: taskName, uploadVideo: uploadVideo, label: label, callbackURL: callbackURL), region: region, logger: logger, on: eventLoop)
    }

    /// 创建任务
    ///
    /// 创建智能标签任务。
    ///
    /// 请注意，本接口为异步接口，**返回TaskId只代表任务创建成功，不代表任务执行成功**。
    @inlinable
    public func createTask(mediaId: String, mediaPreknownInfo: MediaPreknownInfo, taskName: String? = nil, uploadVideo: Bool? = nil, label: String? = nil, callbackURL: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskResponse {
        try await self.createTask(.init(mediaId: mediaId, mediaPreknownInfo: mediaPreknownInfo, taskName: taskName, uploadVideo: uploadVideo, label: label, callbackURL: callbackURL), region: region, logger: logger, on: eventLoop)
    }
}
