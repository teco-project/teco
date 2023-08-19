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

extension Goosefs {
    /// DescribeClusterRoles请求参数结构体
    public struct DescribeClusterRolesRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 角色名
        public let roleName: String?

        public init(clusterId: String, roleName: String? = nil) {
            self.clusterId = clusterId
            self.roleName = roleName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case roleName = "RoleName"
        }
    }

    /// DescribeClusterRoles返回参数结构体
    public struct DescribeClusterRolesResponse: TCResponse {
        /// 集群角色
        public let clusterRoles: [ClusterRole]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterRoles = "ClusterRoles"
            case requestId = "RequestId"
        }
    }

    /// 查询GooseFS集群角色
    @inlinable
    public func describeClusterRoles(_ input: DescribeClusterRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterRolesResponse> {
        self.client.execute(action: "DescribeClusterRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询GooseFS集群角色
    @inlinable
    public func describeClusterRoles(_ input: DescribeClusterRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterRolesResponse {
        try await self.client.execute(action: "DescribeClusterRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询GooseFS集群角色
    @inlinable
    public func describeClusterRoles(clusterId: String, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterRolesResponse> {
        self.describeClusterRoles(.init(clusterId: clusterId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询GooseFS集群角色
    @inlinable
    public func describeClusterRoles(clusterId: String, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterRolesResponse {
        try await self.describeClusterRoles(.init(clusterId: clusterId, roleName: roleName), region: region, logger: logger, on: eventLoop)
    }
}
