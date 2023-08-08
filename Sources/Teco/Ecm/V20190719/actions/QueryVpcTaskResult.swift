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

extension Ecm {
    /// QueryVpcTaskResult请求参数结构体
    public struct QueryVpcTaskResultRequest: TCRequestModel {
        /// 无
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// QueryVpcTaskResult返回参数结构体
    public struct QueryVpcTaskResultResponse: TCResponseModel {
        /// 执行结果，包括"SUCCESS", "FAILED", "RUNNING"
        public let status: String

        /// 异步任务执行输出。
        public let output: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case output = "Output"
            case requestId = "RequestId"
        }
    }

    /// 查询Vpc异步任务请求结果
    ///
    /// 查询私有网络下Vpc、子网、havip等异步任务请求结果
    @inlinable
    public func queryVpcTaskResult(_ input: QueryVpcTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVpcTaskResultResponse> {
        self.client.execute(action: "QueryVpcTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Vpc异步任务请求结果
    ///
    /// 查询私有网络下Vpc、子网、havip等异步任务请求结果
    @inlinable
    public func queryVpcTaskResult(_ input: QueryVpcTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVpcTaskResultResponse {
        try await self.client.execute(action: "QueryVpcTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Vpc异步任务请求结果
    ///
    /// 查询私有网络下Vpc、子网、havip等异步任务请求结果
    @inlinable
    public func queryVpcTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVpcTaskResultResponse> {
        self.queryVpcTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Vpc异步任务请求结果
    ///
    /// 查询私有网络下Vpc、子网、havip等异步任务请求结果
    @inlinable
    public func queryVpcTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVpcTaskResultResponse {
        try await self.queryVpcTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
