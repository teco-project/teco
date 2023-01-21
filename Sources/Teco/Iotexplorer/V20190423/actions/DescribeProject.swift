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

extension Iotexplorer {
    /// DescribeProject请求参数结构体
    public struct DescribeProjectRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// DescribeProject返回参数结构体
    public struct DescribeProjectResponse: TCResponseModel {
        /// 返回信息
        public let project: ProjectEntryEx

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case project = "Project"
            case requestId = "RequestId"
        }
    }

    /// 查询项目详情
    @inlinable
    public func describeProject(_ input: DescribeProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResponse> {
        self.client.execute(action: "DescribeProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目详情
    @inlinable
    public func describeProject(_ input: DescribeProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        try await self.client.execute(action: "DescribeProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询项目详情
    @inlinable
    public func describeProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResponse> {
        self.describeProject(DescribeProjectRequest(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目详情
    @inlinable
    public func describeProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        try await self.describeProject(DescribeProjectRequest(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
