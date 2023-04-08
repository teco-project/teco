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
    /// GetRunStatus请求参数结构体
    public struct GetRunStatusRequest: TCRequestModel {
        /// 任务Uuid。
        public let runUuid: String

        /// 项目ID。
        public let projectId: String

        public init(runUuid: String, projectId: String) {
            self.runUuid = runUuid
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case runUuid = "RunUuid"
            case projectId = "ProjectId"
        }
    }

    /// GetRunStatus返回参数结构体
    public struct GetRunStatusResponse: TCResponseModel {
        /// 作业详情。
        public let metadata: RunMetadata

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metadata = "Metadata"
            case requestId = "RequestId"
        }
    }

    /// 查询任务详情
    ///
    /// 查询任务详情。
    @inlinable
    public func getRunStatus(_ input: GetRunStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRunStatusResponse> {
        self.client.execute(action: "GetRunStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 查询任务详情。
    @inlinable
    public func getRunStatus(_ input: GetRunStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRunStatusResponse {
        try await self.client.execute(action: "GetRunStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务详情
    ///
    /// 查询任务详情。
    @inlinable
    public func getRunStatus(runUuid: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRunStatusResponse> {
        self.getRunStatus(.init(runUuid: runUuid, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 查询任务详情。
    @inlinable
    public func getRunStatus(runUuid: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRunStatusResponse {
        try await self.getRunStatus(.init(runUuid: runUuid, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
