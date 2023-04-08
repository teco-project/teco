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

extension Postgres {
    /// ModifyDBInstanceSecurityGroups请求参数结构体
    public struct ModifyDBInstanceSecurityGroupsRequest: TCRequestModel {
        /// 实例或只读组要绑定的安全组列表
        public let securityGroupIdSet: [String]

        /// 实例ID，DBInstanceId和ReadOnlyGroupId至少传一个；如果都传，忽略ReadOnlyGroupId
        public let dbInstanceId: String?

        /// 只读组ID，DBInstanceId和ReadOnlyGroupId至少传一个；如果要修改只读组关联的安全组，只传ReadOnlyGroupId
        public let readOnlyGroupId: String?

        public init(securityGroupIdSet: [String], dbInstanceId: String? = nil, readOnlyGroupId: String? = nil) {
            self.securityGroupIdSet = securityGroupIdSet
            self.dbInstanceId = dbInstanceId
            self.readOnlyGroupId = readOnlyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupIdSet = "SecurityGroupIdSet"
            case dbInstanceId = "DBInstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
        }
    }

    /// ModifyDBInstanceSecurityGroups返回参数结构体
    public struct ModifyDBInstanceSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例的安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroups）用于修改实例安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(_ input: ModifyDBInstanceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSecurityGroupsResponse> {
        self.client.execute(action: "ModifyDBInstanceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例的安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroups）用于修改实例安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(_ input: ModifyDBInstanceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupsResponse {
        try await self.client.execute(action: "ModifyDBInstanceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例的安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroups）用于修改实例安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(securityGroupIdSet: [String], dbInstanceId: String? = nil, readOnlyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSecurityGroupsResponse> {
        self.modifyDBInstanceSecurityGroups(.init(securityGroupIdSet: securityGroupIdSet, dbInstanceId: dbInstanceId, readOnlyGroupId: readOnlyGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例的安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroups）用于修改实例安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(securityGroupIdSet: [String], dbInstanceId: String? = nil, readOnlyGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupsResponse {
        try await self.modifyDBInstanceSecurityGroups(.init(securityGroupIdSet: securityGroupIdSet, dbInstanceId: dbInstanceId, readOnlyGroupId: readOnlyGroupId), region: region, logger: logger, on: eventLoop)
    }
}
