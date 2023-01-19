//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mongodb {
    /// AssignProject请求参数结构体
    public struct AssignProjectRequest: TCRequestModel {
        /// 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceIds: [String]

        /// 项目ID
        public let projectId: UInt64

        public init(instanceIds: [String], projectId: UInt64) {
            self.instanceIds = instanceIds
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case projectId = "ProjectId"
        }
    }

    /// AssignProject返回参数结构体
    public struct AssignProjectResponse: TCResponseModel {
        /// 返回的异步任务ID列表
        public let flowIds: [UInt64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowIds = "FlowIds"
            case requestId = "RequestId"
        }
    }

    /// 指定云数据库实例的所属项目
    ///
    /// 本接口(AssignProject)用于指定云数据库实例的所属项目。
    @inlinable
    public func assignProject(_ input: AssignProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignProjectResponse> {
        self.client.execute(action: "AssignProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 指定云数据库实例的所属项目
    ///
    /// 本接口(AssignProject)用于指定云数据库实例的所属项目。
    @inlinable
    public func assignProject(_ input: AssignProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignProjectResponse {
        try await self.client.execute(action: "AssignProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 指定云数据库实例的所属项目
    ///
    /// 本接口(AssignProject)用于指定云数据库实例的所属项目。
    @inlinable
    public func assignProject(instanceIds: [String], projectId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssignProjectResponse> {
        self.assignProject(AssignProjectRequest(instanceIds: instanceIds, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 指定云数据库实例的所属项目
    ///
    /// 本接口(AssignProject)用于指定云数据库实例的所属项目。
    @inlinable
    public func assignProject(instanceIds: [String], projectId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssignProjectResponse {
        try await self.assignProject(AssignProjectRequest(instanceIds: instanceIds, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
