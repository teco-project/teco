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

extension Pts {
    /// AdjustJobSpeed请求参数结构体
    public struct AdjustJobSpeedRequest: TCRequest {
        /// 任务ID
        public let jobId: String

        /// 目标RPS
        public let targetRequestsPerSecond: Int64

        public init(jobId: String, targetRequestsPerSecond: Int64) {
            self.jobId = jobId
            self.targetRequestsPerSecond = targetRequestsPerSecond
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case targetRequestsPerSecond = "TargetRequestsPerSecond"
        }
    }

    /// AdjustJobSpeed返回参数结构体
    public struct AdjustJobSpeedResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整任务目标RPS
    ///
    /// 调整任务的目标RPS
    @inlinable @discardableResult
    public func adjustJobSpeed(_ input: AdjustJobSpeedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AdjustJobSpeedResponse> {
        self.client.execute(action: "AdjustJobSpeed", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整任务目标RPS
    ///
    /// 调整任务的目标RPS
    @inlinable @discardableResult
    public func adjustJobSpeed(_ input: AdjustJobSpeedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AdjustJobSpeedResponse {
        try await self.client.execute(action: "AdjustJobSpeed", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整任务目标RPS
    ///
    /// 调整任务的目标RPS
    @inlinable @discardableResult
    public func adjustJobSpeed(jobId: String, targetRequestsPerSecond: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AdjustJobSpeedResponse> {
        self.adjustJobSpeed(.init(jobId: jobId, targetRequestsPerSecond: targetRequestsPerSecond), region: region, logger: logger, on: eventLoop)
    }

    /// 调整任务目标RPS
    ///
    /// 调整任务的目标RPS
    @inlinable @discardableResult
    public func adjustJobSpeed(jobId: String, targetRequestsPerSecond: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AdjustJobSpeedResponse {
        try await self.adjustJobSpeed(.init(jobId: jobId, targetRequestsPerSecond: targetRequestsPerSecond), region: region, logger: logger, on: eventLoop)
    }
}
