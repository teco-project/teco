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

extension Tcr {
    /// CreateMultipleSecurityPolicy请求参数结构体
    public struct CreateMultipleSecurityPolicyRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 安全组策略
        public let securityGroupPolicySet: [SecurityPolicy]

        public init(registryId: String, securityGroupPolicySet: [SecurityPolicy]) {
            self.registryId = registryId
            self.securityGroupPolicySet = securityGroupPolicySet
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case securityGroupPolicySet = "SecurityGroupPolicySet"
        }
    }

    /// CreateMultipleSecurityPolicy返回参数结构体
    public struct CreateMultipleSecurityPolicyResponse: TCResponseModel {
        /// 实例Id
        public let registryId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例公网访问多白名单策略
    ///
    /// 用于在TCR实例中，创建多个白名单策略
    @inlinable
    public func createMultipleSecurityPolicy(_ input: CreateMultipleSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultipleSecurityPolicyResponse> {
        self.client.execute(action: "CreateMultipleSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例公网访问多白名单策略
    ///
    /// 用于在TCR实例中，创建多个白名单策略
    @inlinable
    public func createMultipleSecurityPolicy(_ input: CreateMultipleSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultipleSecurityPolicyResponse {
        try await self.client.execute(action: "CreateMultipleSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例公网访问多白名单策略
    ///
    /// 用于在TCR实例中，创建多个白名单策略
    @inlinable
    public func createMultipleSecurityPolicy(registryId: String, securityGroupPolicySet: [SecurityPolicy], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultipleSecurityPolicyResponse> {
        self.createMultipleSecurityPolicy(.init(registryId: registryId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例公网访问多白名单策略
    ///
    /// 用于在TCR实例中，创建多个白名单策略
    @inlinable
    public func createMultipleSecurityPolicy(registryId: String, securityGroupPolicySet: [SecurityPolicy], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultipleSecurityPolicyResponse {
        try await self.createMultipleSecurityPolicy(.init(registryId: registryId, securityGroupPolicySet: securityGroupPolicySet), region: region, logger: logger, on: eventLoop)
    }
}
