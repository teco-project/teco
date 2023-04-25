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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dcdb {
    /// DisassociateSecurityGroups请求参数结构体
    public struct DisassociateSecurityGroupsRequest: TCRequestModel {
        /// 数据库引擎名称，本接口取值：dcdb。
        public let product: String

        /// 安全组Id。
        public let securityGroupId: String

        /// 实例ID列表，一个或者多个实例Id组成的数组。
        public let instanceIds: [String]

        public init(product: String, securityGroupId: String, instanceIds: [String]) {
            self.product = product
            self.securityGroupId = securityGroupId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case securityGroupId = "SecurityGroupId"
            case instanceIds = "InstanceIds"
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
    public func disassociateSecurityGroups(product: String, securityGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSecurityGroupsResponse> {
        self.disassociateSecurityGroups(.init(product: product, securityGroupId: securityGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 安全组批量解绑云资源
    ///
    /// 本接口(DisassociateSecurityGroups)用于安全组批量解绑实例。
    @inlinable @discardableResult
    public func disassociateSecurityGroups(product: String, securityGroupId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSecurityGroupsResponse {
        try await self.disassociateSecurityGroups(.init(product: product, securityGroupId: securityGroupId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
