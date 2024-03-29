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

extension Mongodb {
    /// ModifyDBInstanceSecurityGroup请求参数结构体
    public struct ModifyDBInstanceSecurityGroupRequest: TCRequest {
        /// 实例 ID。例如：cmgo-7pje****。
        public let instanceId: String

        /// 目标安全组 ID。请通过接口[DescribeSecurityGroup](https://cloud.tencent.com/document/product/240/55675)查看具体的安全组 ID。
        public let securityGroupIds: [String]

        public init(instanceId: String, securityGroupIds: [String]) {
            self.instanceId = instanceId
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// ModifyDBInstanceSecurityGroup返回参数结构体
    public struct ModifyDBInstanceSecurityGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroup）用于修改实例绑定的安全组
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroup(_ input: ModifyDBInstanceSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSecurityGroupResponse> {
        self.client.execute(action: "ModifyDBInstanceSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroup）用于修改实例绑定的安全组
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroup(_ input: ModifyDBInstanceSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupResponse {
        try await self.client.execute(action: "ModifyDBInstanceSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroup）用于修改实例绑定的安全组
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroup(instanceId: String, securityGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceSecurityGroupResponse> {
        self.modifyDBInstanceSecurityGroup(.init(instanceId: instanceId, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例安全组
    ///
    /// 本接口（ModifyDBInstanceSecurityGroup）用于修改实例绑定的安全组
    @inlinable @discardableResult
    public func modifyDBInstanceSecurityGroup(instanceId: String, securityGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceSecurityGroupResponse {
        try await self.modifyDBInstanceSecurityGroup(.init(instanceId: instanceId, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
