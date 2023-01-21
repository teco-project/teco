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

extension Redis {
    /// DescribeProjectSecurityGroup请求参数结构体
    public struct DescribeProjectSecurityGroupRequest: TCRequestModel {
        /// 0:默认项目；-1 所有项目; >0: 特定项目
        public let projectId: Int64?

        /// 安全组Id
        public let securityGroupId: String?

        public init(projectId: Int64? = nil, securityGroupId: String? = nil) {
            self.projectId = projectId
            self.securityGroupId = securityGroupId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case securityGroupId = "SecurityGroupId"
        }
    }

    /// DescribeProjectSecurityGroup返回参数结构体
    public struct DescribeProjectSecurityGroupResponse: TCResponseModel {
        /// 项目安全组
        public let securityGroupDetails: [SecurityGroupDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroupDetails = "SecurityGroupDetails"
            case requestId = "RequestId"
        }
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroup(_ input: DescribeProjectSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupResponse> {
        self.client.execute(action: "DescribeProjectSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroup(_ input: DescribeProjectSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupResponse {
        try await self.client.execute(action: "DescribeProjectSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroup(projectId: Int64? = nil, securityGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectSecurityGroupResponse> {
        self.describeProjectSecurityGroup(DescribeProjectSecurityGroupRequest(projectId: projectId, securityGroupId: securityGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询项目安全组信息
    @inlinable
    public func describeProjectSecurityGroup(projectId: Int64? = nil, securityGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectSecurityGroupResponse {
        try await self.describeProjectSecurityGroup(DescribeProjectSecurityGroupRequest(projectId: projectId, securityGroupId: securityGroupId), region: region, logger: logger, on: eventLoop)
    }
}
