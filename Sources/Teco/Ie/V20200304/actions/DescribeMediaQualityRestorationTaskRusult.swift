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

extension Ie {
    /// DescribeMediaQualityRestorationTaskRusult请求参数结构体
    public struct DescribeMediaQualityRestorationTaskRusultRequest: TCRequestModel {
        /// 画质重生任务ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeMediaQualityRestorationTaskRusult返回参数结构体
    public struct DescribeMediaQualityRestorationTaskRusultResponse: TCResponseModel {
        /// 画质重生任务结果信息
        public let taskResult: MediaQualityRestorationTaskResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskResult = "TaskResult"
            case requestId = "RequestId"
        }
    }

    /// 获取画质重生任务结果
    ///
    /// 获取画质重生任务结果，查看结束后的文件信息
    @inlinable
    public func describeMediaQualityRestorationTaskRusult(_ input: DescribeMediaQualityRestorationTaskRusultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMediaQualityRestorationTaskRusultResponse > {
        self.client.execute(action: "DescribeMediaQualityRestorationTaskRusult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取画质重生任务结果
    ///
    /// 获取画质重生任务结果，查看结束后的文件信息
    @inlinable
    public func describeMediaQualityRestorationTaskRusult(_ input: DescribeMediaQualityRestorationTaskRusultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaQualityRestorationTaskRusultResponse {
        try await self.client.execute(action: "DescribeMediaQualityRestorationTaskRusult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取画质重生任务结果
    ///
    /// 获取画质重生任务结果，查看结束后的文件信息
    @inlinable
    public func describeMediaQualityRestorationTaskRusult(taskId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMediaQualityRestorationTaskRusultResponse > {
        self.describeMediaQualityRestorationTaskRusult(DescribeMediaQualityRestorationTaskRusultRequest(taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 获取画质重生任务结果
    ///
    /// 获取画质重生任务结果，查看结束后的文件信息
    @inlinable
    public func describeMediaQualityRestorationTaskRusult(taskId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaQualityRestorationTaskRusultResponse {
        try await self.describeMediaQualityRestorationTaskRusult(DescribeMediaQualityRestorationTaskRusultRequest(taskId: taskId), logger: logger, on: eventLoop)
    }
}
