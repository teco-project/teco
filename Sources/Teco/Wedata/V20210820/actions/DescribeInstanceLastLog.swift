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

extension Wedata {
    /// DescribeInstanceLastLog请求参数结构体
    public struct DescribeInstanceLastLogRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 数据时间
        public let curRunDate: String

        public init(taskId: String, curRunDate: String) {
            self.taskId = taskId
            self.curRunDate = curRunDate
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case curRunDate = "CurRunDate"
        }
    }

    /// DescribeInstanceLastLog返回参数结构体
    public struct DescribeInstanceLastLogResponse: TCResponseModel {
        /// 日志
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 日志获取详情页面
    @inlinable
    public func describeInstanceLastLog(_ input: DescribeInstanceLastLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLastLogResponse> {
        self.client.execute(action: "DescribeInstanceLastLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 日志获取详情页面
    @inlinable
    public func describeInstanceLastLog(_ input: DescribeInstanceLastLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLastLogResponse {
        try await self.client.execute(action: "DescribeInstanceLastLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 日志获取详情页面
    @inlinable
    public func describeInstanceLastLog(taskId: String, curRunDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLastLogResponse> {
        self.describeInstanceLastLog(.init(taskId: taskId, curRunDate: curRunDate), region: region, logger: logger, on: eventLoop)
    }

    /// 日志获取详情页面
    @inlinable
    public func describeInstanceLastLog(taskId: String, curRunDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLastLogResponse {
        try await self.describeInstanceLastLog(.init(taskId: taskId, curRunDate: curRunDate), region: region, logger: logger, on: eventLoop)
    }
}
