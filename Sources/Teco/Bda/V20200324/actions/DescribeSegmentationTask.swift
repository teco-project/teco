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

import TecoCore

extension Bda {
    /// DescribeSegmentationTask请求参数结构体
    public struct DescribeSegmentationTaskRequest: TCRequestModel {
        /// 在提交分割任务成功时返回的任务标识ID。
        public let taskID: String

        public init(taskID: String) {
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
        }
    }

    /// DescribeSegmentationTask返回参数结构体
    public struct DescribeSegmentationTaskResponse: TCResponseModel {
        /// 当前任务状态：
        /// QUEUING 排队中
        /// PROCESSING 处理中
        /// FINISHED 处理完成
        public let taskStatus: String

        /// 分割后视频URL, 存储于腾讯云COS
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultVideoUrl: String?

        /// 分割后视频MD5，用于校验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultVideoMD5: String?

        /// 视频基本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoBasicInformation: VideoBasicInformation?

        /// 分割任务错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case resultVideoUrl = "ResultVideoUrl"
            case resultVideoMD5 = "ResultVideoMD5"
            case videoBasicInformation = "VideoBasicInformation"
            case errorMsg = "ErrorMsg"
            case requestId = "RequestId"
        }
    }

    /// 查看视频人像分割处理任务信息
    ///
    /// 可以查看单条任务的处理情况，包括处理状态，处理结果。
    @inlinable
    public func describeSegmentationTask(_ input: DescribeSegmentationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSegmentationTaskResponse> {
        self.client.execute(action: "DescribeSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看视频人像分割处理任务信息
    ///
    /// 可以查看单条任务的处理情况，包括处理状态，处理结果。
    @inlinable
    public func describeSegmentationTask(_ input: DescribeSegmentationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSegmentationTaskResponse {
        try await self.client.execute(action: "DescribeSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看视频人像分割处理任务信息
    ///
    /// 可以查看单条任务的处理情况，包括处理状态，处理结果。
    @inlinable
    public func describeSegmentationTask(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSegmentationTaskResponse> {
        self.describeSegmentationTask(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }

    /// 查看视频人像分割处理任务信息
    ///
    /// 可以查看单条任务的处理情况，包括处理状态，处理结果。
    @inlinable
    public func describeSegmentationTask(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSegmentationTaskResponse {
        try await self.describeSegmentationTask(.init(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }
}
