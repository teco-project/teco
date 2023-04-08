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

import TecoCore

extension Ecm {
    /// AssociateSecurityGroups请求参数结构体
    public struct AssociateSecurityGroupsRequest: TCRequestModel {
        /// 要绑定的安全组ID，类似esg-efil73jd，只支持绑定单个安全组。
        public let securityGroupIds: [String]

        /// 被绑定的实例ID，类似ein-lesecurk，支持指定多个实例，每次请求批量实例的上限为100。
        public let instanceIds: [String]

        public init(securityGroupIds: [String], instanceIds: [String]) {
            self.securityGroupIds = securityGroupIds
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupIds = "SecurityGroupIds"
            case instanceIds = "InstanceIds"
        }
    }

    /// AssociateSecurityGroups返回参数结构体
    public struct AssociateSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定安全组
    @inlinable @discardableResult
    public func associateSecurityGroups(_ input: AssociateSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSecurityGroupsResponse> {
        self.client.execute(action: "AssociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定安全组
    @inlinable @discardableResult
    public func associateSecurityGroups(_ input: AssociateSecurityGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateSecurityGroupsResponse {
        try await self.client.execute(action: "AssociateSecurityGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定安全组
    @inlinable @discardableResult
    public func associateSecurityGroups(securityGroupIds: [String], instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSecurityGroupsResponse> {
        self.associateSecurityGroups(.init(securityGroupIds: securityGroupIds, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定安全组
    @inlinable @discardableResult
    public func associateSecurityGroups(securityGroupIds: [String], instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateSecurityGroupsResponse {
        try await self.associateSecurityGroups(.init(securityGroupIds: securityGroupIds, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
