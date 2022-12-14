//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vpc {
    /// ReplaceSecurityGroupPolicy请求参数结构体
    public struct ReplaceSecurityGroupPolicyRequest: TCRequestModel {
        /// 安全组实例ID，例如sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String

        /// 安全组规则集合对象。
        public let securityGroupPolicySet: SecurityGroupPolicySet

        /// 旧的安全组规则集合对象，可选，日志记录用。
        public let originalSecurityGroupPolicySet: SecurityGroupPolicySet?

        public init(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, originalSecurityGroupPolicySet: SecurityGroupPolicySet? = nil) {
            self.securityGroupId = securityGroupId
            self.securityGroupPolicySet = securityGroupPolicySet
            self.originalSecurityGroupPolicySet = originalSecurityGroupPolicySet
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case securityGroupPolicySet = "SecurityGroupPolicySet"
            case originalSecurityGroupPolicySet = "OriginalSecurityGroupPolicySet"
        }
    }

    /// ReplaceSecurityGroupPolicy返回参数结构体
    public struct ReplaceSecurityGroupPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 替换单条安全组规则
    ///
    /// 本接口（ReplaceSecurityGroupPolicy）用于替换单条安全组规则（SecurityGroupPolicy）。
    /// 单个请求中只能替换单个方向的一条规则, 必须要指定索引（PolicyIndex）。
    @inlinable
    public func replaceSecurityGroupPolicy(_ input: ReplaceSecurityGroupPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReplaceSecurityGroupPolicyResponse > {
        self.client.execute(action: "ReplaceSecurityGroupPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 替换单条安全组规则
    ///
    /// 本接口（ReplaceSecurityGroupPolicy）用于替换单条安全组规则（SecurityGroupPolicy）。
    /// 单个请求中只能替换单个方向的一条规则, 必须要指定索引（PolicyIndex）。
    @inlinable
    public func replaceSecurityGroupPolicy(_ input: ReplaceSecurityGroupPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceSecurityGroupPolicyResponse {
        try await self.client.execute(action: "ReplaceSecurityGroupPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 替换单条安全组规则
    ///
    /// 本接口（ReplaceSecurityGroupPolicy）用于替换单条安全组规则（SecurityGroupPolicy）。
    /// 单个请求中只能替换单个方向的一条规则, 必须要指定索引（PolicyIndex）。
    @inlinable
    public func replaceSecurityGroupPolicy(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, originalSecurityGroupPolicySet: SecurityGroupPolicySet? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReplaceSecurityGroupPolicyResponse > {
        self.replaceSecurityGroupPolicy(ReplaceSecurityGroupPolicyRequest(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet, originalSecurityGroupPolicySet: originalSecurityGroupPolicySet), logger: logger, on: eventLoop)
    }

    /// 替换单条安全组规则
    ///
    /// 本接口（ReplaceSecurityGroupPolicy）用于替换单条安全组规则（SecurityGroupPolicy）。
    /// 单个请求中只能替换单个方向的一条规则, 必须要指定索引（PolicyIndex）。
    @inlinable
    public func replaceSecurityGroupPolicy(securityGroupId: String, securityGroupPolicySet: SecurityGroupPolicySet, originalSecurityGroupPolicySet: SecurityGroupPolicySet? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceSecurityGroupPolicyResponse {
        try await self.replaceSecurityGroupPolicy(ReplaceSecurityGroupPolicyRequest(securityGroupId: securityGroupId, securityGroupPolicySet: securityGroupPolicySet, originalSecurityGroupPolicySet: originalSecurityGroupPolicySet), logger: logger, on: eventLoop)
    }
}
