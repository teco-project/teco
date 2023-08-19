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
    /// DeleteSecurityPolicy请求参数结构体
    public struct DeleteSecurityPolicyRequest: TCRequest {
        /// 实例Id
        public let registryId: String

        /// 白名单Id
        public let policyIndex: Int64?

        /// 白名单版本
        public let policyVersion: String?

        /// 网段或IP(互斥)
        public let cidrBlock: String?

        public init(registryId: String, policyIndex: Int64? = nil, policyVersion: String? = nil, cidrBlock: String? = nil) {
            self.registryId = registryId
            self.policyIndex = policyIndex
            self.policyVersion = policyVersion
            self.cidrBlock = cidrBlock
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case policyIndex = "PolicyIndex"
            case policyVersion = "PolicyVersion"
            case cidrBlock = "CidrBlock"
        }
    }

    /// DeleteSecurityPolicy返回参数结构体
    public struct DeleteSecurityPolicyResponse: TCResponse {
        /// 实例Id
        public let registryId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case requestId = "RequestId"
        }
    }

    /// 删除实例公网访问白名单策略
    ///
    /// 删除实例公网访问白名单策略
    ///
    /// 注意：当PolicyIndex和CidrBlock同时存在时，CidrBlock优先级更高
    @inlinable
    public func deleteSecurityPolicy(_ input: DeleteSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityPolicyResponse> {
        self.client.execute(action: "DeleteSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例公网访问白名单策略
    ///
    /// 删除实例公网访问白名单策略
    ///
    /// 注意：当PolicyIndex和CidrBlock同时存在时，CidrBlock优先级更高
    @inlinable
    public func deleteSecurityPolicy(_ input: DeleteSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityPolicyResponse {
        try await self.client.execute(action: "DeleteSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例公网访问白名单策略
    ///
    /// 删除实例公网访问白名单策略
    ///
    /// 注意：当PolicyIndex和CidrBlock同时存在时，CidrBlock优先级更高
    @inlinable
    public func deleteSecurityPolicy(registryId: String, policyIndex: Int64? = nil, policyVersion: String? = nil, cidrBlock: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityPolicyResponse> {
        self.deleteSecurityPolicy(.init(registryId: registryId, policyIndex: policyIndex, policyVersion: policyVersion, cidrBlock: cidrBlock), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例公网访问白名单策略
    ///
    /// 删除实例公网访问白名单策略
    ///
    /// 注意：当PolicyIndex和CidrBlock同时存在时，CidrBlock优先级更高
    @inlinable
    public func deleteSecurityPolicy(registryId: String, policyIndex: Int64? = nil, policyVersion: String? = nil, cidrBlock: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityPolicyResponse {
        try await self.deleteSecurityPolicy(.init(registryId: registryId, policyIndex: policyIndex, policyVersion: policyVersion, cidrBlock: cidrBlock), region: region, logger: logger, on: eventLoop)
    }
}
