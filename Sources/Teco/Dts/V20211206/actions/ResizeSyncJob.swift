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
    /// ResizeSyncJob请求参数结构体
    public struct ResizeSyncJobRequest: TCRequest {
        /// 同步任务id
        public let jobId: String

        /// 任务规格
        public let newInstanceClass: String

        public init(jobId: String, newInstanceClass: String) {
            self.jobId = jobId
            self.newInstanceClass = newInstanceClass
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case newInstanceClass = "NewInstanceClass"
        }
    }

    /// ResizeSyncJob返回参数结构体
    public struct ResizeSyncJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整同步任务规格
    ///
    /// 调整同步任务规格，此接口只支持按量计费任务的调整，调用此接口后不会立即生效，后台调整时间大概为3~5分钟。调用此接口后可通过查询同步任务信息接口DescribeSyncJobs，获取变配后的状态。
    @inlinable @discardableResult
    public func resizeSyncJob(_ input: ResizeSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeSyncJobResponse> {
        self.client.execute(action: "ResizeSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整同步任务规格
    ///
    /// 调整同步任务规格，此接口只支持按量计费任务的调整，调用此接口后不会立即生效，后台调整时间大概为3~5分钟。调用此接口后可通过查询同步任务信息接口DescribeSyncJobs，获取变配后的状态。
    @inlinable @discardableResult
    public func resizeSyncJob(_ input: ResizeSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeSyncJobResponse {
        try await self.client.execute(action: "ResizeSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整同步任务规格
    ///
    /// 调整同步任务规格，此接口只支持按量计费任务的调整，调用此接口后不会立即生效，后台调整时间大概为3~5分钟。调用此接口后可通过查询同步任务信息接口DescribeSyncJobs，获取变配后的状态。
    @inlinable @discardableResult
    public func resizeSyncJob(jobId: String, newInstanceClass: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeSyncJobResponse> {
        self.resizeSyncJob(.init(jobId: jobId, newInstanceClass: newInstanceClass), region: region, logger: logger, on: eventLoop)
    }

    /// 调整同步任务规格
    ///
    /// 调整同步任务规格，此接口只支持按量计费任务的调整，调用此接口后不会立即生效，后台调整时间大概为3~5分钟。调用此接口后可通过查询同步任务信息接口DescribeSyncJobs，获取变配后的状态。
    @inlinable @discardableResult
    public func resizeSyncJob(jobId: String, newInstanceClass: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeSyncJobResponse {
        try await self.resizeSyncJob(.init(jobId: jobId, newInstanceClass: newInstanceClass), region: region, logger: logger, on: eventLoop)
    }
}
