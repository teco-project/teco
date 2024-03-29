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

extension Tsf {
    /// DescribeEnabledUnitRule请求参数结构体
    public struct DescribeEnabledUnitRuleRequest: TCRequest {
        /// 网关实体ID
        public let gatewayInstanceId: String

        public init(gatewayInstanceId: String) {
            self.gatewayInstanceId = gatewayInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayInstanceId = "GatewayInstanceId"
        }
    }

    /// DescribeEnabledUnitRule返回参数结构体
    public struct DescribeEnabledUnitRuleResponse: TCResponse {
        /// 单元化规则对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UnitRule?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询生效的单元化规则
    @inlinable
    public func describeEnabledUnitRule(_ input: DescribeEnabledUnitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnabledUnitRuleResponse> {
        self.client.execute(action: "DescribeEnabledUnitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询生效的单元化规则
    @inlinable
    public func describeEnabledUnitRule(_ input: DescribeEnabledUnitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnabledUnitRuleResponse {
        try await self.client.execute(action: "DescribeEnabledUnitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询生效的单元化规则
    @inlinable
    public func describeEnabledUnitRule(gatewayInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnabledUnitRuleResponse> {
        self.describeEnabledUnitRule(.init(gatewayInstanceId: gatewayInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询生效的单元化规则
    @inlinable
    public func describeEnabledUnitRule(gatewayInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnabledUnitRuleResponse {
        try await self.describeEnabledUnitRule(.init(gatewayInstanceId: gatewayInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
