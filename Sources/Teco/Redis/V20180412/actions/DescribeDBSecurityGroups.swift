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

extension Redis {
    /// DescribeDBSecurityGroups请求参数结构体
    public struct DescribeDBSecurityGroupsRequest: TCRequestModel {
        /// 数据库引擎名称，本接口取值：redis。
        public let product: String

        /// 实例ID，格式如：cdb-c1nl9rpv或者cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        public init(product: String, instanceId: String) {
            self.product = product
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBSecurityGroups返回参数结构体
    public struct DescribeDBSecurityGroupsResponse: TCResponseModel {
        /// 安全组规则。
        public let groups: [SecurityGroup]

        /// 安全组生效内网地址。
        public let vip: String

        /// 安全组生效内网端口。
        public let vPort: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case vip = "VIP"
            case vPort = "VPort"
            case requestId = "RequestId"
        }
    }

    /// 查询实例安全组详情
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBSecurityGroupsResponse > {
        self.client.execute(action: "DescribeDBSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组详情
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeDBSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例安全组详情
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(product: String, instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBSecurityGroupsResponse > {
        self.describeDBSecurityGroups(DescribeDBSecurityGroupsRequest(product: product, instanceId: instanceId), logger: logger, on: eventLoop)
    }

    /// 查询实例安全组详情
    ///
    /// 本接口(DescribeDBSecurityGroups)用于查询实例的安全组详情。
    @inlinable
    public func describeDBSecurityGroups(product: String, instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.describeDBSecurityGroups(DescribeDBSecurityGroupsRequest(product: product, instanceId: instanceId), logger: logger, on: eventLoop)
    }
}
