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

extension Tiw {
    /// DescribeVideoGenerationTask请求参数结构体
    public struct DescribeVideoGenerationTaskRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 录制视频生成的任务Id
        public let taskId: String

        public init(sdkAppId: Int64, taskId: String) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
        }
    }

    /// DescribeVideoGenerationTask返回参数结构体
    public struct DescribeVideoGenerationTaskResponse: TCResponseModel {
        /// 任务对应的群组Id
        public let groupId: String

        /// 任务对应的房间号
        public let roomId: Int64

        /// 任务的Id
        public let taskId: String

        /// 已废弃
        public let progress: Int64

        /// 录制视频生成任务状态
        /// - QUEUED: 正在排队
        /// - PROCESSING: 正在生成视频
        /// - FINISHED: 生成视频结束（成功完成或失败结束，可以通过错误码和错误信息进一步判断）
        public let status: String

        /// 回放视频总时长,单位：毫秒
        public let totalTime: Int64

        /// 已废弃，请使用`VideoInfoList`参数
        public let videoInfos: VideoInfo

        /// 录制视频生成视频列表
        public let videoInfoList: [VideoInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case roomId = "RoomId"
            case taskId = "TaskId"
            case progress = "Progress"
            case status = "Status"
            case totalTime = "TotalTime"
            case videoInfos = "VideoInfos"
            case videoInfoList = "VideoInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询录制视频生成任务
    ///
    /// 查询录制视频生成任务状态与结果
    @inlinable
    public func describeVideoGenerationTask(_ input: DescribeVideoGenerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoGenerationTaskResponse> {
        self.client.execute(action: "DescribeVideoGenerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录制视频生成任务
    ///
    /// 查询录制视频生成任务状态与结果
    @inlinable
    public func describeVideoGenerationTask(_ input: DescribeVideoGenerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoGenerationTaskResponse {
        try await self.client.execute(action: "DescribeVideoGenerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录制视频生成任务
    ///
    /// 查询录制视频生成任务状态与结果
    @inlinable
    public func describeVideoGenerationTask(sdkAppId: Int64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoGenerationTaskResponse> {
        self.describeVideoGenerationTask(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录制视频生成任务
    ///
    /// 查询录制视频生成任务状态与结果
    @inlinable
    public func describeVideoGenerationTask(sdkAppId: Int64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoGenerationTaskResponse {
        try await self.describeVideoGenerationTask(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
