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

extension Postgres {
    /// DescribeDBInstanceSecurityGroups请求参数结构体
    public struct DescribeDBInstanceSecurityGroupsRequest: TCRequest {
        /// 实例ID，DBInstanceId和ReadOnlyGroupId至少传一个；如果都传，忽略ReadOnlyGroupId
        public let dbInstanceId: String?

        /// 只读组ID，DBInstanceId和ReadOnlyGroupId至少传一个；如果要查询只读组关联的安全组，只传ReadOnlyGroupId
        public let readOnlyGroupId: String?

        public init(dbInstanceId: String? = nil, readOnlyGroupId: String? = nil) {
            self.dbInstanceId = dbInstanceId
            self.readOnlyGroupId = readOnlyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
        }
    }

    /// DescribeDBInstanceSecurityGroups返回参数结构体
    public struct DescribeDBInstanceSecurityGroupsResponse: TCResponse {
        /// 安全组信息数组
        public let securityGroupSet: [SecurityGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroupSet = "SecurityGroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例安全组
    ///
    /// 本接口（DescribeDBInstanceSecurityGroups）用于查询实例安全组。
    @inlinable
    public func describeDBInstanceSecurityGroups(_ input: DescribeDBInstanceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceSecurityGroupsResponse> {
        self.client.execute(action: "DescribeDBInstanceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组
    ///
    /// 本接口（DescribeDBInstanceSecurityGroups）用于查询实例安全组。
    @inlinable
    public func describeDBInstanceSecurityGroups(_ input: DescribeDBInstanceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceSecurityGroupsResponse {
        try await self.client.execute(action: "DescribeDBInstanceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例安全组
    ///
    /// 本接口（DescribeDBInstanceSecurityGroups）用于查询实例安全组。
    @inlinable
    public func describeDBInstanceSecurityGroups(dbInstanceId: String? = nil, readOnlyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceSecurityGroupsResponse> {
        self.describeDBInstanceSecurityGroups(.init(dbInstanceId: dbInstanceId, readOnlyGroupId: readOnlyGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例安全组
    ///
    /// 本接口（DescribeDBInstanceSecurityGroups）用于查询实例安全组。
    @inlinable
    public func describeDBInstanceSecurityGroups(dbInstanceId: String? = nil, readOnlyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceSecurityGroupsResponse {
        try await self.describeDBInstanceSecurityGroups(.init(dbInstanceId: dbInstanceId, readOnlyGroupId: readOnlyGroupId), region: region, logger: logger, on: eventLoop)
    }
}
