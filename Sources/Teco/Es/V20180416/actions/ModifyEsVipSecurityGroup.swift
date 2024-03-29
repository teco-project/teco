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

extension Es {
    /// ModifyEsVipSecurityGroup请求参数结构体
    public struct ModifyEsVipSecurityGroupRequest: TCRequest {
        /// es集群的实例id
        public let instanceId: String

        /// 安全组id列表
        public let securityGroupIds: [String]?

        public init(instanceId: String, securityGroupIds: [String]? = nil) {
            self.instanceId = instanceId
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// ModifyEsVipSecurityGroup返回参数结构体
    public struct ModifyEsVipSecurityGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改集群VIP绑定的安全组
    ///
    /// 修改绑定VIP的安全组，传安全组id列表
    @inlinable @discardableResult
    public func modifyEsVipSecurityGroup(_ input: ModifyEsVipSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEsVipSecurityGroupResponse> {
        self.client.execute(action: "ModifyEsVipSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改集群VIP绑定的安全组
    ///
    /// 修改绑定VIP的安全组，传安全组id列表
    @inlinable @discardableResult
    public func modifyEsVipSecurityGroup(_ input: ModifyEsVipSecurityGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEsVipSecurityGroupResponse {
        try await self.client.execute(action: "ModifyEsVipSecurityGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改集群VIP绑定的安全组
    ///
    /// 修改绑定VIP的安全组，传安全组id列表
    @inlinable @discardableResult
    public func modifyEsVipSecurityGroup(instanceId: String, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEsVipSecurityGroupResponse> {
        self.modifyEsVipSecurityGroup(.init(instanceId: instanceId, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改集群VIP绑定的安全组
    ///
    /// 修改绑定VIP的安全组，传安全组id列表
    @inlinable @discardableResult
    public func modifyEsVipSecurityGroup(instanceId: String, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEsVipSecurityGroupResponse {
        try await self.modifyEsVipSecurityGroup(.init(instanceId: instanceId, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
