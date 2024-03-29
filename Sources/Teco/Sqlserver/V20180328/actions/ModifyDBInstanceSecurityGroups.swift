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

extension Sqlserver {
    /// ModifyDBInstanceSecurityGroups请求参数结构体
    public struct ModifyDBInstanceSecurityGroupsRequest: TCRequest {
        /// 实例 ID，格式如：mssql-c1nl9rpv 或者 mssqlro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 要修改的安全组 ID 列表，一个或者多个安全组 ID 组成的数组。
        public let securityGroupIdSet: [String]

        public init(instanceId: String, securityGroupIdSet: [String]) {
            self.instanceId = instanceId
            self.securityGroupIdSet = securityGroupIdSet
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case securityGroupIdSet = "SecurityGroupIdSet"
        }
    }

    /// ModifyDBInstanceSecurityGroups返回参数结构体
    public struct ModifyDBInstanceSecurityGroupsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库安全组
    ///
    /// 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(_ input: ModifyDBInstanceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSecurityGroupsResponse> {
        self.client.execute(action: "ModifyDBInstanceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库安全组
    ///
    /// 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(_ input: ModifyDBInstanceSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupsResponse {
        try await self.client.execute(action: "ModifyDBInstanceSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库安全组
    ///
    /// 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(instanceId: String, securityGroupIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSecurityGroupsResponse> {
        self.modifyDBInstanceSecurityGroups(.init(instanceId: instanceId, securityGroupIdSet: securityGroupIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库安全组
    ///
    /// 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroups(instanceId: String, securityGroupIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupsResponse {
        try await self.modifyDBInstanceSecurityGroups(.init(instanceId: instanceId, securityGroupIdSet: securityGroupIdSet), region: region, logger: logger, on: eventLoop)
    }
}
