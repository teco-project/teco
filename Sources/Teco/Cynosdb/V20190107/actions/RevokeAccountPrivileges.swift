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

extension Cynosdb {
    /// RevokeAccountPrivileges请求参数结构体
    public struct RevokeAccountPrivilegesRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 账号信息
        public let account: InputAccount

        /// 数据库表权限数组
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

    /// RevokeAccountPrivileges返回参数结构体
    public struct RevokeAccountPrivilegesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量回收账号权限
    @inlinable @discardableResult
    public func revokeAccountPrivileges(_ input: RevokeAccountPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeAccountPrivilegesResponse> {
        self.client.execute(action: "RevokeAccountPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量回收账号权限
    @inlinable @discardableResult
    public func revokeAccountPrivileges(_ input: RevokeAccountPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeAccountPrivilegesResponse {
        try await self.client.execute(action: "RevokeAccountPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量回收账号权限
    @inlinable @discardableResult
    public func revokeAccountPrivileges(clusterId: String, account: InputAccount, dbTablePrivileges: [String], dbTables: [DbTable], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeAccountPrivilegesResponse> {
        self.revokeAccountPrivileges(RevokeAccountPrivilegesRequest(clusterId: clusterId, account: account, dbTablePrivileges: dbTablePrivileges, dbTables: dbTables), region: region, logger: logger, on: eventLoop)
    }

    /// 批量回收账号权限
    @inlinable @discardableResult
    public func revokeAccountPrivileges(clusterId: String, account: InputAccount, dbTablePrivileges: [String], dbTables: [DbTable], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeAccountPrivilegesResponse {
        try await self.revokeAccountPrivileges(RevokeAccountPrivilegesRequest(clusterId: clusterId, account: account, dbTablePrivileges: dbTablePrivileges, dbTables: dbTables), region: region, logger: logger, on: eventLoop)
    }
}
