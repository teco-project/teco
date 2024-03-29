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
    /// DeleteJobs请求参数结构体
    public struct DeleteJobsRequest: TCRequest {
        /// 任务ID数组
        public let jobIds: [String]

        /// 项目ID
        public let projectId: String

        /// 场景ID数组
        public let scenarioIds: [String]

        public init(jobIds: [String], projectId: String, scenarioIds: [String]) {
            self.jobIds = jobIds
            self.projectId = projectId
            self.scenarioIds = scenarioIds
        }

        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case projectId = "ProjectId"
            case scenarioIds = "ScenarioIds"
        }
    }

    /// DeleteJobs返回参数结构体
    public struct DeleteJobsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteJobs(_ input: DeleteJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobsResponse> {
        self.client.execute(action: "DeleteJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteJobs(_ input: DeleteJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobsResponse {
        try await self.client.execute(action: "DeleteJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteJobs(jobIds: [String], projectId: String, scenarioIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobsResponse> {
        self.deleteJobs(.init(jobIds: jobIds, projectId: projectId, scenarioIds: scenarioIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除任务
    @inlinable @discardableResult
    public func deleteJobs(jobIds: [String], projectId: String, scenarioIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobsResponse {
        try await self.deleteJobs(.init(jobIds: jobIds, projectId: projectId, scenarioIds: scenarioIds), region: region, logger: logger, on: eventLoop)
    }
}
