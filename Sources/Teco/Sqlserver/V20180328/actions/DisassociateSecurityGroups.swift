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
    /// DisassociateSecurityGroups请求参数结构体
    public struct DisassociateSecurityGroupsRequest: TCRequest {
        /// 安全组ID。
        public let securityGroupId: String

        /// 实例ID 列表，一个或者多个实例ID组成的数组。多个实例必须是同一个地域，同一个可用区，同一个项目下的。
        public let instanceIdSet: [String]

        public init(securityGroupId: String, instanceIdSet: [String]) {
            self.securityGroupId = securityGroupId
            self.instanceIdSet = instanceIdSet
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case instanceIdSet = "InstanceIdSet"
        }
    }

    /// DisassociateSecurityGroups返回参数结构体
    public struct DisassociateSecurityGroupsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全组批量解绑云资源
    ///
    /// 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。
    @inlinable @discardableResult
    public func disassociateSecurityGroups(_ input: DisassociateSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSecurityGroupsResponse> {
        self.client.execute(action: "DisassociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全组批量解绑云资源
    ///
    /// 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。
    @inlinable @discardableResult
    public func disassociateSecurityGroups(_ input: DisassociateSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSecurityGroupsResponse {
        try await self.client.execute(action: "DisassociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全组批量解绑云资源
    ///
    /// 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。
    @inlinable @discardableResult
    public func disassociateSecurityGroups(securityGroupId: String, instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSecurityGroupsResponse> {
        self.disassociateSecurityGroups(.init(securityGroupId: securityGroupId, instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 安全组批量解绑云资源
    ///
    /// 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。
    @inlinable @discardableResult
    public func disassociateSecurityGroups(securityGroupId: String, instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSecurityGroupsResponse {
        try await self.disassociateSecurityGroups(.init(securityGroupId: securityGroupId, instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }
}
