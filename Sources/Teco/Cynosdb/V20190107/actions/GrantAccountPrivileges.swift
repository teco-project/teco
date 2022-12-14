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

extension Cynosdb {
    /// GrantAccountPrivileges请求参数结构体
    public struct GrantAccountPrivilegesRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 账号信息
        public let account: InputAccount

        /// 数据库表权限码数组
        public let dbTablePrivileges: [String]

        /// 数据库表信息
        public let dbTables: [DbTable]

        public init(clusterId: String, account: InputAccount, dbTablePrivileges: [String], dbTables: [DbTable]) {
            self.clusterId = clusterId
            self.account = account
            self.dbTablePrivileges = dbTablePrivileges
            self.dbTables = dbTables
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case account = "Account"
            case dbTablePrivileges = "DbTablePrivileges"
            case dbTables = "DbTables"
        }
    }

    /// GrantAccountPrivileges返回参数结构体
    public struct GrantAccountPrivilegesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量授权账号权限
    @inlinable
    public func grantAccountPrivileges(_ input: GrantAccountPrivilegesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GrantAccountPrivilegesResponse > {
        self.client.execute(action: "GrantAccountPrivileges", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量授权账号权限
    @inlinable
    public func grantAccountPrivileges(_ input: GrantAccountPrivilegesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GrantAccountPrivilegesResponse {
        try await self.client.execute(action: "GrantAccountPrivileges", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量授权账号权限
    @inlinable
    public func grantAccountPrivileges(clusterId: String, account: InputAccount, dbTablePrivileges: [String], dbTables: [DbTable], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GrantAccountPrivilegesResponse > {
        self.grantAccountPrivileges(GrantAccountPrivilegesRequest(clusterId: clusterId, account: account, dbTablePrivileges: dbTablePrivileges, dbTables: dbTables), logger: logger, on: eventLoop)
    }

    /// 批量授权账号权限
    @inlinable
    public func grantAccountPrivileges(clusterId: String, account: InputAccount, dbTablePrivileges: [String], dbTables: [DbTable], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GrantAccountPrivilegesResponse {
        try await self.grantAccountPrivileges(GrantAccountPrivilegesRequest(clusterId: clusterId, account: account, dbTablePrivileges: dbTablePrivileges, dbTables: dbTables), logger: logger, on: eventLoop)
    }
}
