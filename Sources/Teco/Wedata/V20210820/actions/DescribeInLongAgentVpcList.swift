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

extension Wedata {
    /// DescribeInLongAgentVpcList请求参数结构体
    public struct DescribeInLongAgentVpcListRequest: TCRequestModel {
        /// WeData项目ID
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// DescribeInLongAgentVpcList返回参数结构体
    public struct DescribeInLongAgentVpcListResponse: TCResponseModel {
        /// VPC列表
        public let vpcList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcList = "VpcList"
            case requestId = "RequestId"
        }
    }

    /// 获取采集器所在集群的VPC列表
    @inlinable
    public func describeInLongAgentVpcList(_ input: DescribeInLongAgentVpcListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInLongAgentVpcListResponse> {
        self.client.execute(action: "DescribeInLongAgentVpcList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取采集器所在集群的VPC列表
    @inlinable
    public func describeInLongAgentVpcList(_ input: DescribeInLongAgentVpcListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInLongAgentVpcListResponse {
        try await self.client.execute(action: "DescribeInLongAgentVpcList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取采集器所在集群的VPC列表
    @inlinable
    public func describeInLongAgentVpcList(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInLongAgentVpcListResponse> {
        let input = DescribeInLongAgentVpcListRequest(projectId: projectId)
        return self.client.execute(action: "DescribeInLongAgentVpcList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取采集器所在集群的VPC列表
    @inlinable
    public func describeInLongAgentVpcList(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInLongAgentVpcListResponse {
        let input = DescribeInLongAgentVpcListRequest(projectId: projectId)
        return try await self.client.execute(action: "DescribeInLongAgentVpcList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
