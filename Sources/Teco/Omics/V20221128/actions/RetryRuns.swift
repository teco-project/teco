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

extension Omics {
    /// RetryRuns请求参数结构体
    public struct RetryRunsRequest: TCRequestModel {
        /// 关联项目ID。
        public let projectId: String

        /// 任务UUID。
        public let runUuids: [String]

        public init(projectId: String, runUuids: [String]) {
            self.projectId = projectId
            self.runUuids = runUuids
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case runUuids = "RunUuids"
        }
    }

    /// RetryRuns返回参数结构体
    public struct RetryRunsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重试任务
    ///
    /// 重试任务。
    @inlinable @discardableResult
    public func retryRuns(_ input: RetryRunsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryRunsResponse> {
        self.client.execute(action: "RetryRuns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重试任务
    ///
    /// 重试任务。
    @inlinable @discardableResult
    public func retryRuns(_ input: RetryRunsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryRunsResponse {
        try await self.client.execute(action: "RetryRuns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重试任务
    ///
    /// 重试任务。
    @inlinable @discardableResult
    public func retryRuns(projectId: String, runUuids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryRunsResponse> {
        self.retryRuns(.init(projectId: projectId, runUuids: runUuids), region: region, logger: logger, on: eventLoop)
    }

    /// 重试任务
    ///
    /// 重试任务。
    @inlinable @discardableResult
    public func retryRuns(projectId: String, runUuids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryRunsResponse {
        try await self.retryRuns(.init(projectId: projectId, runUuids: runUuids), region: region, logger: logger, on: eventLoop)
    }
}
