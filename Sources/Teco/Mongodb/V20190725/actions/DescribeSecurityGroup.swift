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

extension Mongodb {
    /// DescribeSecurityGroup请求参数结构体
    public struct DescribeSecurityGroupRequest: TCRequestModel {
        /// 实例 ID。例如：cmgo-p8vn****。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeSecurityGroup返回参数结构体
    public struct DescribeSecurityGroupResponse: TCResponseModel {
        /// 实例绑定的安全组信息。
        public let groups: [SecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case requestId = "RequestId"
        }
    }

    /// 查询实例绑定的安全组
    ///
    /// 本就口（DescribeSecurityGroup）用于查询实例绑定的安全组。
    @inlinable
    public func describeSecurityGroup(_ input: DescribeSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupResponse> {
        self.client.execute(action: "DescribeSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例绑定的安全组
    ///
    /// 本就口（DescribeSecurityGroup）用于查询实例绑定的安全组。
    @inlinable
    public func describeSecurityGroup(_ input: DescribeSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupResponse {
        try await self.client.execute(action: "DescribeSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例绑定的安全组
    ///
    /// 本就口（DescribeSecurityGroup）用于查询实例绑定的安全组。
    @inlinable
    public func describeSecurityGroup(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupResponse> {
        self.describeSecurityGroup(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例绑定的安全组
    ///
    /// 本就口（DescribeSecurityGroup）用于查询实例绑定的安全组。
    @inlinable
    public func describeSecurityGroup(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupResponse {
        try await self.describeSecurityGroup(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
