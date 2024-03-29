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

extension Tag {
    /// UpdateProject请求参数结构体
    public struct UpdateProjectRequest: TCRequest {
        /// 项目ID
        public let projectId: UInt64

        /// 项目名称
        public let projectName: String?

        /// 禁用项目，1，禁用，0，启用
        public let disable: Int64?

        /// 备注
        public let info: String?

        public init(projectId: UInt64, projectName: String? = nil, disable: Int64? = nil, info: String? = nil) {
            self.projectId = projectId
            self.projectName = projectName
            self.disable = disable
            self.info = info
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case disable = "Disable"
            case info = "Info"
        }
    }

    /// UpdateProject返回参数结构体
    public struct UpdateProjectResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改项目
    @inlinable @discardableResult
    public func updateProject(_ input: UpdateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResponse> {
        self.client.execute(action: "UpdateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改项目
    @inlinable @discardableResult
    public func updateProject(_ input: UpdateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResponse {
        try await self.client.execute(action: "UpdateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改项目
    @inlinable @discardableResult
    public func updateProject(projectId: UInt64, projectName: String? = nil, disable: Int64? = nil, info: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResponse> {
        self.updateProject(.init(projectId: projectId, projectName: projectName, disable: disable, info: info), region: region, logger: logger, on: eventLoop)
    }

    /// 修改项目
    @inlinable @discardableResult
    public func updateProject(projectId: UInt64, projectName: String? = nil, disable: Int64? = nil, info: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResponse {
        try await self.updateProject(.init(projectId: projectId, projectName: projectName, disable: disable, info: info), region: region, logger: logger, on: eventLoop)
    }
}
