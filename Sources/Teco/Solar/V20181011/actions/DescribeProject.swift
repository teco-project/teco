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

extension Solar {
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
        /// 项目id
        public let projectId: String

        /// 项目名称
        public let projectName: String

        /// 项目预算
        public let projectBudget: Float

        /// 项目机构
        public let projectOrg: String

        /// 项目简介
        public let projectIntroduction: String

        /// 子项目列表
        public let subProjectList: [SubProjectInfo]

        /// 项目状态
        public let projectStatus: String

        /// 项目机构Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectOrgId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case projectBudget = "ProjectBudget"
            case projectOrg = "ProjectOrg"
            case projectIntroduction = "ProjectIntroduction"
            case subProjectList = "SubProjectList"
            case projectStatus = "ProjectStatus"
            case projectOrgId = "ProjectOrgId"
            case requestId = "RequestId"
        }
    }

    /// 项目详情展示
    @inlinable
    public func describeProject(_ input: DescribeProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResponse> {
        self.client.execute(action: "DescribeProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 项目详情展示
    @inlinable
    public func describeProject(_ input: DescribeProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        try await self.client.execute(action: "DescribeProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 项目详情展示
    @inlinable
    public func describeProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResponse> {
        self.describeProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 项目详情展示
    @inlinable
    public func describeProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        try await self.describeProject(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
