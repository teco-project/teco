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

extension Mariadb {
    /// DescribeDBSecurityGroups请求参数结构体
    public struct DescribeDBSecurityGroupsRequest: TCRequestModel {
        /// 数据库引擎名称，本接口取值：mariadb。
        public let product: String

        /// 实例ID。
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
        /// 安全组详情。
        public let groups: [SecurityGroup]

        /// 实例VIP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vip: String?

        /// 实例端口。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vPort: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case vip = "VIP"
            case vPort = "VPort"
            case requestId = "RequestId"
        }
    }

    /// 查询实例安全组信息
    ///
    /// 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSecurityGroupsResponse> {
        self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组信息
    ///
    /// 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(_ input: DescribeDBSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例安全组信息
    ///
    /// 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(product: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSecurityGroupsResponse> {
        let input = DescribeDBSecurityGroupsRequest(product: product, instanceId: instanceId)
        return self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组信息
    ///
    /// 本接口（DescribeDBSecurityGroups）用于查询实例安全组信息
    @inlinable
    public func describeDBSecurityGroups(product: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSecurityGroupsResponse {
        let input = DescribeDBSecurityGroupsRequest(product: product, instanceId: instanceId)
        return try await self.client.execute(action: "DescribeDBSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
