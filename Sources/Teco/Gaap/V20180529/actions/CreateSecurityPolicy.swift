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

extension Gaap {
    /// CreateSecurityPolicy请求参数结构体
    public struct CreateSecurityPolicyRequest: TCRequestModel {
        /// 默认策略：ACCEPT或DROP
        public let defaultAction: String

        /// 加速通道ID
        public let proxyId: String?

        /// 通道组ID
        public let groupId: String?

        public init(defaultAction: String, proxyId: String? = nil, groupId: String? = nil) {
            self.defaultAction = defaultAction
            self.proxyId = proxyId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case defaultAction = "DefaultAction"
            case proxyId = "ProxyId"
            case groupId = "GroupId"
        }
    }

    /// CreateSecurityPolicy返回参数结构体
    public struct CreateSecurityPolicyResponse: TCResponseModel {
        /// 安全策略ID
        public let policyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case requestId = "RequestId"
        }
    }

    /// 创建安全策略
    @inlinable
    public func createSecurityPolicy(_ input: CreateSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityPolicyResponse> {
        self.client.execute(action: "CreateSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建安全策略
    @inlinable
    public func createSecurityPolicy(_ input: CreateSecurityPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityPolicyResponse {
        try await self.client.execute(action: "CreateSecurityPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建安全策略
    @inlinable
    public func createSecurityPolicy(defaultAction: String, proxyId: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSecurityPolicyResponse> {
        self.createSecurityPolicy(CreateSecurityPolicyRequest(defaultAction: defaultAction, proxyId: proxyId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建安全策略
    @inlinable
    public func createSecurityPolicy(defaultAction: String, proxyId: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityPolicyResponse {
        try await self.createSecurityPolicy(CreateSecurityPolicyRequest(defaultAction: defaultAction, proxyId: proxyId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
