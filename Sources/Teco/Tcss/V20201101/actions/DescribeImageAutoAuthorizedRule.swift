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

extension Tcss {
    /// DescribeImageAutoAuthorizedRule请求参数结构体
    public struct DescribeImageAutoAuthorizedRuleRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeImageAutoAuthorizedRule返回参数结构体
    public struct DescribeImageAutoAuthorizedRuleResponse: TCResponse {
        /// 规则是否生效，0:不生效，1:已生效
        public let isEnabled: Int64

        /// 授权范围类别，MANUAL:自选主机节点，ALL:全部镜像
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rangeType: String?

        /// 授权范围是自选主机时的主机数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostCount: Int64?

        /// 每天最大的镜像授权数限制, 0表示无限制
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxDailyCount: Int64?

        /// 规则id，用未设置时为0
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isEnabled = "IsEnabled"
            case rangeType = "RangeType"
            case hostCount = "HostCount"
            case maxDailyCount = "MaxDailyCount"
            case ruleId = "RuleId"
            case requestId = "RequestId"
        }
    }

    /// 查询本地镜像自动授权规则
    @inlinable
    public func describeImageAutoAuthorizedRule(_ input: DescribeImageAutoAuthorizedRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageAutoAuthorizedRuleResponse> {
        self.client.execute(action: "DescribeImageAutoAuthorizedRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地镜像自动授权规则
    @inlinable
    public func describeImageAutoAuthorizedRule(_ input: DescribeImageAutoAuthorizedRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedRuleResponse {
        try await self.client.execute(action: "DescribeImageAutoAuthorizedRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地镜像自动授权规则
    @inlinable
    public func describeImageAutoAuthorizedRule(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageAutoAuthorizedRuleResponse> {
        self.describeImageAutoAuthorizedRule(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询本地镜像自动授权规则
    @inlinable
    public func describeImageAutoAuthorizedRule(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageAutoAuthorizedRuleResponse {
        try await self.describeImageAutoAuthorizedRule(.init(), region: region, logger: logger, on: eventLoop)
    }
}
