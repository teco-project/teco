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

extension Batch {
    /// RetryJobs请求参数结构体
    public struct RetryJobsRequest: TCRequest {
        /// 作业ID列表。
        public let jobIds: [String]

        public init(jobIds: [String]) {
            self.jobIds = jobIds
        }

        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
        }
    }

    /// RetryJobs返回参数结构体
    public struct RetryJobsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重试作业
    ///
    /// 用于重试作业中失败的任务实例。
    /// 当且仅当作业处于“FAILED”状态，支持重试操作。重试操作成功后，作业会按照“DAG”中指定的任务依赖关系，依次重试各个任务中失败的任务实例。任务实例的历史信息将被重置，如同首次运行一样，参与后续的调度和执行。
    @inlinable @discardableResult
    public func retryJobs(_ input: RetryJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryJobsResponse> {
        self.client.execute(action: "RetryJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重试作业
    ///
    /// 用于重试作业中失败的任务实例。
    /// 当且仅当作业处于“FAILED”状态，支持重试操作。重试操作成功后，作业会按照“DAG”中指定的任务依赖关系，依次重试各个任务中失败的任务实例。任务实例的历史信息将被重置，如同首次运行一样，参与后续的调度和执行。
    @inlinable @discardableResult
    public func retryJobs(_ input: RetryJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryJobsResponse {
        try await self.client.execute(action: "RetryJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重试作业
    ///
    /// 用于重试作业中失败的任务实例。
    /// 当且仅当作业处于“FAILED”状态，支持重试操作。重试操作成功后，作业会按照“DAG”中指定的任务依赖关系，依次重试各个任务中失败的任务实例。任务实例的历史信息将被重置，如同首次运行一样，参与后续的调度和执行。
    @inlinable @discardableResult
    public func retryJobs(jobIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryJobsResponse> {
        self.retryJobs(.init(jobIds: jobIds), region: region, logger: logger, on: eventLoop)
    }

    /// 重试作业
    ///
    /// 用于重试作业中失败的任务实例。
    /// 当且仅当作业处于“FAILED”状态，支持重试操作。重试操作成功后，作业会按照“DAG”中指定的任务依赖关系，依次重试各个任务中失败的任务实例。任务实例的历史信息将被重置，如同首次运行一样，参与后续的调度和执行。
    @inlinable @discardableResult
    public func retryJobs(jobIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryJobsResponse {
        try await self.retryJobs(.init(jobIds: jobIds), region: region, logger: logger, on: eventLoop)
    }
}
