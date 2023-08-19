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

extension Cynosdb {
    /// DescribeDBSecurityGroups请求参数结构体
    public struct DescribeDBSecurityGroupsRequest: TCRequest {
        /// 实例组ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBSecurityGroups返回参数结构体
    public struct DescribeDBSecurityGroupsResponse: TCResponse {
        /// 安全组信息
        public let groups: [SecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case requestId = "RequestId"
        }
    }

    /// 查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSecurityGroupsResponse> {
        self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSecurityGroupsResponse> {
        self.describeDBSecurityGroups(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.describeDBSecurityGroups(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
