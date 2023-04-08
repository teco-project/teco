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

extension Solar {
    /// OffLineProject请求参数结构体
    public struct OffLineProjectRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// OffLineProject返回参数结构体
    public struct OffLineProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 下线项目
    @inlinable @discardableResult
    public func offLineProject(_ input: OffLineProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OffLineProjectResponse> {
        self.client.execute(action: "OffLineProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下线项目
    @inlinable @discardableResult
    public func offLineProject(_ input: OffLineProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OffLineProjectResponse {
        try await self.client.execute(action: "OffLineProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下线项目
    @inlinable @discardableResult
    public func offLineProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OffLineProjectResponse> {
        self.offLineProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 下线项目
    @inlinable @discardableResult
    public func offLineProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OffLineProjectResponse {
        try await self.offLineProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
