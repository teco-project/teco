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

extension Cdb {
    /// DisassociateSecurityGroups请求参数结构体
    public struct DisassociateSecurityGroupsRequest: TCRequestModel {
        /// 安全组 ID。
        public let securityGroupId: String

        /// 实例 ID 列表，一个或者多个实例 ID 组成的数组。
        public let instanceIds: [String]

        /// 当传入只读实例ID时，默认操作的是对应只读组的安全组。如果需要操作只读实例ID的安全组， 需要将该入参置为True
        public let forReadonlyInstance: Bool?

        public init(securityGroupId: String, instanceIds: [String], forReadonlyInstance: Bool? = nil) {
            self.securityGroupId = securityGroupId
            self.instanceIds = instanceIds
            self.forReadonlyInstance = forReadonlyInstance
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case instanceIds = "InstanceIds"
            case forReadonlyInstance = "ForReadonlyInstance"
        }
    }

    /// DisassociateSecurityGroups返回参数结构体
    public struct DisassociateSecurityGroupsResponse: TCResponseModel {
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
    public func disassociateSecurityGroups(securityGroupId: String, instanceIds: [String], forReadonlyInstance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSecurityGroupsResponse> {
        self.disassociateSecurityGroups(.init(securityGroupId: securityGroupId, instanceIds: instanceIds, forReadonlyInstance: forReadonlyInstance), region: region, logger: logger, on: eventLoop)
    }

    /// 安全组批量解绑云资源
    ///
    /// 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。
    @inlinable @discardableResult
    public func disassociateSecurityGroups(securityGroupId: String, instanceIds: [String], forReadonlyInstance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSecurityGroupsResponse {
        try await self.disassociateSecurityGroups(.init(securityGroupId: securityGroupId, instanceIds: instanceIds, forReadonlyInstance: forReadonlyInstance), region: region, logger: logger, on: eventLoop)
    }
}
