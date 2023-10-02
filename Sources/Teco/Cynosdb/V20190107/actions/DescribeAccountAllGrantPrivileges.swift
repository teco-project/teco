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
    /// DescribeAccountAllGrantPrivileges请求参数结构体
    public struct DescribeAccountAllGrantPrivilegesRequest: TCRequest {
        /// 集群id
        public let clusterId: String

        /// 账号信息
        public let account: InputAccount

        public init(clusterId: String, account: InputAccount) {
            self.clusterId = clusterId
            self.account = account
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case account = "Account"
        }
    }

    /// DescribeAccountAllGrantPrivileges返回参数结构体
    public struct DescribeAccountAllGrantPrivilegesResponse: TCResponse {
        /// 权限语句
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let privilegeStatements: [String]?

        /// 全局权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let globalPrivileges: [String]?

        /// 数据库权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let databasePrivileges: [DatabasePrivileges]?

        /// 数据库表权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tablePrivileges: [TablePrivileges]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case privilegeStatements = "PrivilegeStatements"
            case globalPrivileges = "GlobalPrivileges"
            case databasePrivileges = "DatabasePrivileges"
            case tablePrivileges = "TablePrivileges"
            case requestId = "RequestId"
        }
    }

    /// 查询账号所有可授予权限
    @inlinable
    public func describeAccountAllGrantPrivileges(_ input: DescribeAccountAllGrantPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAllGrantPrivilegesResponse> {
        self.client.execute(action: "DescribeAccountAllGrantPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账号所有可授予权限
    @inlinable
    public func describeAccountAllGrantPrivileges(_ input: DescribeAccountAllGrantPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAllGrantPrivilegesResponse {
        try await self.client.execute(action: "DescribeAccountAllGrantPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账号所有可授予权限
    @inlinable
    public func describeAccountAllGrantPrivileges(clusterId: String, account: InputAccount, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAllGrantPrivilegesResponse> {
        self.describeAccountAllGrantPrivileges(.init(clusterId: clusterId, account: account), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号所有可授予权限
    @inlinable
    public func describeAccountAllGrantPrivileges(clusterId: String, account: InputAccount, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAllGrantPrivilegesResponse {
        try await self.describeAccountAllGrantPrivileges(.init(clusterId: clusterId, account: account), region: region, logger: logger, on: eventLoop)
    }
}
