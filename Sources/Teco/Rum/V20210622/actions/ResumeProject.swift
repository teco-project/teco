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

extension Rum {
    /// ResumeProject请求参数结构体
    public struct ResumeProjectRequest: TCRequest {
        /// 项目 id
        public let projectId: Int64

        public init(projectId: Int64) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// ResumeProject返回参数结构体
    public struct ResumeProjectResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恢复 RUM 应用
    ///
    /// 恢复应用使用与上报数据
    @inlinable @discardableResult
    public func resumeProject(_ input: ResumeProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResumeProjectResponse> {
        self.client.execute(action: "ResumeProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复 RUM 应用
    ///
    /// 恢复应用使用与上报数据
    @inlinable @discardableResult
    public func resumeProject(_ input: ResumeProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeProjectResponse {
        try await self.client.execute(action: "ResumeProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复 RUM 应用
    ///
    /// 恢复应用使用与上报数据
    @inlinable @discardableResult
    public func resumeProject(projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResumeProjectResponse> {
        self.resumeProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复 RUM 应用
    ///
    /// 恢复应用使用与上报数据
    @inlinable @discardableResult
    public func resumeProject(projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeProjectResponse {
        try await self.resumeProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
