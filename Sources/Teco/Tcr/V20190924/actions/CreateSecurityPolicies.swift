//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcr {
    /// CreateSecurityPolicies请求参数结构体
    public struct CreateSecurityPoliciesRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 192.168.0.0/24
        public let cidrBlock: String

        /// 描述
        public let description: String?

        public init(registryId: String, cidrBlock: String, description: String? = nil) {
            self.registryId = registryId
            self.cidrBlock = cidrBlock
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case cidrBlock = "CidrBlock"
            case description = "Description"
        }
    }

    /// CreateSecurityPolicies返回参数结构体
    public struct CreateSecurityPoliciesResponse: TCResponseModel {
        /// 实例Id
        public let registryId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例公网访问白名单策略
    @inlinable
    public func createSecurityPolicies(_ input: CreateSecurityPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityPoliciesResponse> {
        self.client.execute(action: "CreateSecurityPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例公网访问白名单策略
    @inlinable
    public func createSecurityPolicies(_ input: CreateSecurityPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityPoliciesResponse {
        try await self.client.execute(action: "CreateSecurityPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例公网访问白名单策略
    @inlinable
    public func createSecurityPolicies(registryId: String, cidrBlock: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityPoliciesResponse> {
        self.createSecurityPolicies(CreateSecurityPoliciesRequest(registryId: registryId, cidrBlock: cidrBlock, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例公网访问白名单策略
    @inlinable
    public func createSecurityPolicies(registryId: String, cidrBlock: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityPoliciesResponse {
        try await self.createSecurityPolicies(CreateSecurityPoliciesRequest(registryId: registryId, cidrBlock: cidrBlock, description: description), region: region, logger: logger, on: eventLoop)
    }
}
