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

extension Gaap {
    /// DescribeSecurityPolicyDetail请求参数结构体
    public struct DescribeSecurityPolicyDetailRequest: TCRequestModel {
        /// 安全策略ID
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    /// DescribeSecurityPolicyDetail返回参数结构体
    public struct DescribeSecurityPolicyDetailResponse: TCResponseModel {
        /// 通道ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyId: String?

        /// 安全策略状态：
        /// BOUND，已开启安全策略
        /// UNBIND，已关闭安全策略
        /// BINDING，安全策略开启中
        /// UNBINDING，安全策略关闭中。
        public let status: String

        /// 默认策略：ACCEPT或DROP。
        public let defaultAction: String

        /// 策略ID
        public let policyId: String

        /// 规则列表
        public let ruleList: [SecurityPolicyRuleOut]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case status = "Status"
            case defaultAction = "DefaultAction"
            case policyId = "PolicyId"
            case ruleList = "RuleList"
            case requestId = "RequestId"
        }
    }

    /// 获取安全策略详情
    @inlinable
    public func describeSecurityPolicyDetail(_ input: DescribeSecurityPolicyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyDetailResponse> {
        self.client.execute(action: "DescribeSecurityPolicyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全策略详情
    @inlinable
    public func describeSecurityPolicyDetail(_ input: DescribeSecurityPolicyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyDetailResponse {
        try await self.client.execute(action: "DescribeSecurityPolicyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全策略详情
    @inlinable
    public func describeSecurityPolicyDetail(policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyDetailResponse> {
        self.describeSecurityPolicyDetail(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全策略详情
    @inlinable
    public func describeSecurityPolicyDetail(policyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyDetailResponse {
        try await self.describeSecurityPolicyDetail(.init(policyId: policyId), region: region, logger: logger, on: eventLoop)
    }
}
