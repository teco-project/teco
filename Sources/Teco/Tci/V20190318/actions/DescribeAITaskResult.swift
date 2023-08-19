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

extension Tci {
    /// DescribeAITaskResult请求参数结构体
    public struct DescribeAITaskResultRequest: TCRequest {
        /// 任务唯一标识符。在URL方式时提交请求后会返回一个任务标识符，后续查询该url的结果时使用这个标识符进行查询。
        public let taskId: Int64

        /// 限制数目
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        public init(taskId: Int64, limit: Int64? = nil, offset: Int64? = nil) {
            self.taskId = taskId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeAITaskResult返回参数结构体
    public struct DescribeAITaskResultResponse: TCResponse {
        /// 音频分析结果
        public let audioResult: StandardAudioResult

        /// 图像分析结果
        public let imageResult: StandardImageResult

        /// 视频分析结果
        public let videoResult: StandardVideoResult

        /// 任务状态
        public let status: String

        /// 任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case audioResult = "AudioResult"
            case imageResult = "ImageResult"
            case videoResult = "VideoResult"
            case status = "Status"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 获取标准化接口任务结果
    @inlinable
    public func describeAITaskResult(_ input: DescribeAITaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAITaskResultResponse> {
        self.client.execute(action: "DescribeAITaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取标准化接口任务结果
    @inlinable
    public func describeAITaskResult(_ input: DescribeAITaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAITaskResultResponse {
        try await self.client.execute(action: "DescribeAITaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取标准化接口任务结果
    @inlinable
    public func describeAITaskResult(taskId: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAITaskResultResponse> {
        self.describeAITaskResult(.init(taskId: taskId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取标准化接口任务结果
    @inlinable
    public func describeAITaskResult(taskId: Int64, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAITaskResultResponse {
        try await self.describeAITaskResult(.init(taskId: taskId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
