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

extension Pts {
    /// AbortJob请求参数结构体
    public struct AbortJobRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String

        /// 项目ID
        public let projectId: String

        /// 场景ID
        public let scenarioId: String

        /// 中断原因
        public let abortReason: Int64?

        public init(jobId: String, projectId: String, scenarioId: String, abortReason: Int64? = nil) {
            self.jobId = jobId
            self.projectId = projectId
            self.scenarioId = scenarioId
            self.abortReason = abortReason
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
            case abortReason = "AbortReason"
        }
    }

    /// AbortJob返回参数结构体
    public struct AbortJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止任务
    @inlinable @discardableResult
    public func abortJob(_ input: AbortJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AbortJobResponse> {
        self.client.execute(action: "AbortJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止任务
    @inlinable @discardableResult
    public func abortJob(_ input: AbortJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AbortJobResponse {
        try await self.client.execute(action: "AbortJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止任务
    @inlinable @discardableResult
    public func abortJob(jobId: String, projectId: String, scenarioId: String, abortReason: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AbortJobResponse> {
        self.abortJob(.init(jobId: jobId, projectId: projectId, scenarioId: scenarioId, abortReason: abortReason), region: region, logger: logger, on: eventLoop)
    }

    /// 停止任务
    @inlinable @discardableResult
    public func abortJob(jobId: String, projectId: String, scenarioId: String, abortReason: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AbortJobResponse {
        try await self.abortJob(.init(jobId: jobId, projectId: projectId, scenarioId: scenarioId, abortReason: abortReason), region: region, logger: logger, on: eventLoop)
    }
}
