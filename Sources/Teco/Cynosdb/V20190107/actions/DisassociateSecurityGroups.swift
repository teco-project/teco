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
    /// DisassociateSecurityGroups请求参数结构体
    public struct DisassociateSecurityGroupsRequest: TCRequestModel {
        /// 实例组ID数组
        public let instanceIds: [String]

        /// 要修改的安全组ID列表，一个或者多个安全组ID组成的数组。
        public let securityGroupIds: [String]

        /// 可用区
        public let zone: String

        public init(instanceIds: [String], securityGroupIds: [String], zone: String) {
            self.instanceIds = instanceIds
            self.securityGroupIds = securityGroupIds
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case securityGroupIds = "SecurityGroupIds"
            case zone = "Zone"
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
    @inlinable @discardableResult
    public func disassociateSecurityGroups(_ input: DisassociateSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSecurityGroupsResponse> {
        self.client.execute(action: "DisassociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全组批量解绑云资源
    @inlinable @discardableResult
    public func disassociateSecurityGroups(_ input: DisassociateSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSecurityGroupsResponse {
        try await self.client.execute(action: "DisassociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全组批量解绑云资源
    @inlinable @discardableResult
    public func disassociateSecurityGroups(instanceIds: [String], securityGroupIds: [String], zone: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSecurityGroupsResponse> {
        let input = DisassociateSecurityGroupsRequest(instanceIds: instanceIds, securityGroupIds: securityGroupIds, zone: zone)
        return self.client.execute(action: "DisassociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全组批量解绑云资源
    @inlinable @discardableResult
    public func disassociateSecurityGroups(instanceIds: [String], securityGroupIds: [String], zone: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSecurityGroupsResponse {
        let input = DisassociateSecurityGroupsRequest(instanceIds: instanceIds, securityGroupIds: securityGroupIds, zone: zone)
        return try await self.client.execute(action: "DisassociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
