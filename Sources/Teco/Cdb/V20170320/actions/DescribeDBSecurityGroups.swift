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

extension Cdb {
    /// DescribeDBSecurityGroups请求参数结构体
    public struct DescribeDBSecurityGroupsRequest: TCRequestModel {
        /// 实例ID，格式如：cdb-c1nl9rpv或者cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        /// 该值默认为False，表示当传入只读实例ID时，查询操作的是对应只读组的安全组。如果需要操作只读实例ID的安全组， 需要将该入参置为True。
        public let forReadonlyInstance: Bool?

        public init(instanceId: String, forReadonlyInstance: Bool? = nil) {
            self.instanceId = instanceId
            self.forReadonlyInstance = forReadonlyInstance
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case forReadonlyInstance = "ForReadonlyInstance"
        }
    }

    /// DescribeDBSecurityGroups返回参数结构体
    public struct DescribeDBSecurityGroupsResponse: TCResponseModel {
        /// 安全组详情。
        public let groups: [SecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case requestId = "RequestId"
        }
    }

    /// 查询实例安全组信息
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSecurityGroupsResponse> {
        self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组信息
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例安全组信息
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(instanceId: String, forReadonlyInstance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSecurityGroupsResponse> {
        self.describeDBSecurityGroups(.init(instanceId: instanceId, forReadonlyInstance: forReadonlyInstance), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组信息
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(instanceId: String, forReadonlyInstance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.describeDBSecurityGroups(.init(instanceId: instanceId, forReadonlyInstance: forReadonlyInstance), region: region, logger: logger, on: eventLoop)
    }
}
