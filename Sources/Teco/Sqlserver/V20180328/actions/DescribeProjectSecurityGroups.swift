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

extension Sqlserver {
    /// DescribeProjectSecurityGroups请求参数结构体
    public struct DescribeProjectSecurityGroupsRequest: TCRequestModel {
        /// 项目ID，可通过控制台项目管理中查看
        public let projectId: Int64

        public init(projectId: Int64) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// DescribeProjectSecurityGroups返回参数结构体
    public struct DescribeProjectSecurityGroupsResponse: TCResponseModel {
        /// 安全组详情。
        public let securityGroupSet: [SecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroupSet = "SecurityGroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询项目安全组信息
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(_ input: DescribeProjectSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeProjectSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询项目安全组信息
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupsResponse> {
        self.describeProjectSecurityGroups(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    ///
    /// 本接口(DescribeProjectSecurityGroups)用于查询项目的安全组详情。
    @inlinable
    public func describeProjectSecurityGroups(projectId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupsResponse {
        try await self.describeProjectSecurityGroups(.init(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
