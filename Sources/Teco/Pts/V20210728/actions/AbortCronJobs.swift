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
    /// AbortCronJobs请求参数结构体
    public struct AbortCronJobsRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 定时任务ID数组
        public let cronJobIds: [String]

        public init(projectId: String, cronJobIds: [String]) {
            self.projectId = projectId
            self.cronJobIds = cronJobIds
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case cronJobIds = "CronJobIds"
        }
    }

    /// AbortCronJobs返回参数结构体
    public struct AbortCronJobsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止定时任务
    @inlinable @discardableResult
    public func abortCronJobs(_ input: AbortCronJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AbortCronJobsResponse> {
        self.client.execute(action: "AbortCronJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止定时任务
    @inlinable @discardableResult
    public func abortCronJobs(_ input: AbortCronJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AbortCronJobsResponse {
        try await self.client.execute(action: "AbortCronJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止定时任务
    @inlinable @discardableResult
    public func abortCronJobs(projectId: String, cronJobIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AbortCronJobsResponse> {
        self.abortCronJobs(.init(projectId: projectId, cronJobIds: cronJobIds), region: region, logger: logger, on: eventLoop)
    }

    /// 停止定时任务
    @inlinable @discardableResult
    public func abortCronJobs(projectId: String, cronJobIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AbortCronJobsResponse {
        try await self.abortCronJobs(.init(projectId: projectId, cronJobIds: cronJobIds), region: region, logger: logger, on: eventLoop)
    }
}
