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

extension Vpc {
    /// DescribeSecurityGroupPolicies请求参数结构体
    public struct DescribeSecurityGroupPoliciesRequest: TCRequest {
        /// 安全组实例ID，例如：sg-33ocnj9n，可通过DescribeSecurityGroups获取。
        public let securityGroupId: String

        /// 过滤条件。
        /// - security-group-id - String - 规则中的安全组ID。
        /// - ip - String - IP，支持IPV4和IPV6模糊匹配。
        /// - address-module - String - IP地址模板或IP地址组模板ID。
        /// - service-module - String - 协议端口模板或协议端口组模板ID。
        /// - protocol-type - String - 安全组策略支持的协议，可选值：`TCP`, `UDP`, `ICMP`, `ICMPV6`, `GRE`, `ALL`。
        /// - port - String - 是否必填：否 -协议端口，支持模糊匹配，值为`ALL`时，查询所有的端口。
        /// - poly - String - 协议策略，可选值：`ALL`，所有策略；`ACCEPT`，允许；`DROP`，拒绝。
        /// - direction - String - 协议规则，可选值：`ALL`，所有策略；`INBOUND`，入站规则；`OUTBOUND`，出站规则。
        /// - description - String - 协议描述，该过滤条件支持模糊匹配。
        public let filters: [Filter]?

        public init(securityGroupId: String, filters: [Filter]? = nil) {
            self.securityGroupId = securityGroupId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupId = "SecurityGroupId"
            case filters = "Filters"
        }
    }

    /// DescribeSecurityGroupPolicies返回参数结构体
    public struct DescribeSecurityGroupPoliciesResponse: TCResponse {
        /// 安全组规则集合。
        public let securityGroupPolicySet: SecurityGroupPolicySet

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityGroupPolicySet = "SecurityGroupPolicySet"
            case requestId = "RequestId"
        }
    }

    /// 查询安全组规则
    ///
    /// 本接口（DescribeSecurityGroupPolicies）用于查询安全组规则。
    @inlinable
    public func describeSecurityGroupPolicies(_ input: DescribeSecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupPoliciesResponse> {
        self.client.execute(action: "DescribeSecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则
    ///
    /// 本接口（DescribeSecurityGroupPolicies）用于查询安全组规则。
    @inlinable
    public func describeSecurityGroupPolicies(_ input: DescribeSecurityGroupPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupPoliciesResponse {
        try await self.client.execute(action: "DescribeSecurityGroupPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全组规则
    ///
    /// 本接口（DescribeSecurityGroupPolicies）用于查询安全组规则。
    @inlinable
    public func describeSecurityGroupPolicies(securityGroupId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityGroupPoliciesResponse> {
        self.describeSecurityGroupPolicies(.init(securityGroupId: securityGroupId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全组规则
    ///
    /// 本接口（DescribeSecurityGroupPolicies）用于查询安全组规则。
    @inlinable
    public func describeSecurityGroupPolicies(securityGroupId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityGroupPoliciesResponse {
        try await self.describeSecurityGroupPolicies(.init(securityGroupId: securityGroupId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
