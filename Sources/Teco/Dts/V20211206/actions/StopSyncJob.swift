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

extension Dts {
    /// StopSyncJob请求参数结构体
    public struct StopSyncJobRequest: TCRequest {
        /// 同步任务id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// StopSyncJob返回参数结构体
    public struct StopSyncJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 结束同步任务
    ///
    /// 结束同步任务，操作后可通过查询同步任务信息接口DescribeSyncJobs，获取操作后的状态。
    @inlinable @discardableResult
    public func stopSyncJob(_ input: StopSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopSyncJobResponse> {
        self.client.execute(action: "StopSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 结束同步任务
    ///
    /// 结束同步任务，操作后可通过查询同步任务信息接口DescribeSyncJobs，获取操作后的状态。
    @inlinable @discardableResult
    public func stopSyncJob(_ input: StopSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopSyncJobResponse {
        try await self.client.execute(action: "StopSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 结束同步任务
    ///
    /// 结束同步任务，操作后可通过查询同步任务信息接口DescribeSyncJobs，获取操作后的状态。
    @inlinable @discardableResult
    public func stopSyncJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopSyncJobResponse> {
        self.stopSyncJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 结束同步任务
    ///
    /// 结束同步任务，操作后可通过查询同步任务信息接口DescribeSyncJobs，获取操作后的状态。
    @inlinable @discardableResult
    public func stopSyncJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopSyncJobResponse {
        try await self.stopSyncJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
