//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcb {
    /// DescribeCloudBaseProjectLatestVersionList请求参数结构体
    public struct DescribeCloudBaseProjectLatestVersionListRequest: TCRequestModel {
        /// 偏移量
        public let offset: Int64

        /// 个数
        public let pageSize: Int64

        /// 环境id, 非必填
        public let envId: String?

        /// 项目名称, 非必填
        public let projectName: String?

        /// 项目类型: framework-oneclick,qci-extension-cicd
        public let projectType: String?

        /// 标签
        public let tags: [String]?

        /// ci的id
        public let ciId: String?

        public init(offset: Int64, pageSize: Int64, envId: String? = nil, projectName: String? = nil, projectType: String? = nil, tags: [String]? = nil, ciId: String? = nil) {
            self.offset = offset
            self.pageSize = pageSize
            self.envId = envId
            self.projectName = projectName
            self.projectType = projectType
            self.tags = tags
            self.ciId = ciId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case pageSize = "PageSize"
            case envId = "EnvId"
            case projectName = "ProjectName"
            case projectType = "ProjectType"
            case tags = "Tags"
            case ciId = "CiId"
        }
    }

    /// DescribeCloudBaseProjectLatestVersionList返回参数结构体
    public struct DescribeCloudBaseProjectLatestVersionListResponse: TCResponseModel {
        /// 项目列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectList: [CloudBaseProjectVersion]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectList = "ProjectList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取云开发项目列表
    @inlinable
    public func describeCloudBaseProjectLatestVersionList(_ input: DescribeCloudBaseProjectLatestVersionListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudBaseProjectLatestVersionListResponse > {
        self.client.execute(action: "DescribeCloudBaseProjectLatestVersionList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云开发项目列表
    @inlinable
    public func describeCloudBaseProjectLatestVersionList(_ input: DescribeCloudBaseProjectLatestVersionListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseProjectLatestVersionListResponse {
        try await self.client.execute(action: "DescribeCloudBaseProjectLatestVersionList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云开发项目列表
    @inlinable
    public func describeCloudBaseProjectLatestVersionList(offset: Int64, pageSize: Int64, envId: String? = nil, projectName: String? = nil, projectType: String? = nil, tags: [String]? = nil, ciId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudBaseProjectLatestVersionListResponse > {
        self.describeCloudBaseProjectLatestVersionList(DescribeCloudBaseProjectLatestVersionListRequest(offset: offset, pageSize: pageSize, envId: envId, projectName: projectName, projectType: projectType, tags: tags, ciId: ciId), logger: logger, on: eventLoop)
    }

    /// 获取云开发项目列表
    @inlinable
    public func describeCloudBaseProjectLatestVersionList(offset: Int64, pageSize: Int64, envId: String? = nil, projectName: String? = nil, projectType: String? = nil, tags: [String]? = nil, ciId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseProjectLatestVersionListResponse {
        try await self.describeCloudBaseProjectLatestVersionList(DescribeCloudBaseProjectLatestVersionListRequest(offset: offset, pageSize: pageSize, envId: envId, projectName: projectName, projectType: projectType, tags: tags, ciId: ciId), logger: logger, on: eventLoop)
    }
}
