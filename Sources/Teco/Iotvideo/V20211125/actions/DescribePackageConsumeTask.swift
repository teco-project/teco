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

extension Iotvideo {
    /// DescribePackageConsumeTask请求参数结构体
    public struct DescribePackageConsumeTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: Int64

        public init(taskId: Int64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribePackageConsumeTask返回参数结构体
    public struct DescribePackageConsumeTaskResponse: TCResponseModel {
        /// 文件下载的url，文件详情是套餐包消耗详情
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "URL"
            case requestId = "RequestId"
        }
    }

    /// 查询套餐消耗记录详情
    @inlinable
    public func describePackageConsumeTask(_ input: DescribePackageConsumeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageConsumeTaskResponse> {
        self.client.execute(action: "DescribePackageConsumeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询套餐消耗记录详情
    @inlinable
    public func describePackageConsumeTask(_ input: DescribePackageConsumeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageConsumeTaskResponse {
        try await self.client.execute(action: "DescribePackageConsumeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询套餐消耗记录详情
    @inlinable
    public func describePackageConsumeTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageConsumeTaskResponse> {
        self.describePackageConsumeTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询套餐消耗记录详情
    @inlinable
    public func describePackageConsumeTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageConsumeTaskResponse {
        try await self.describePackageConsumeTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
