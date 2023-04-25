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

extension Vpc {
    /// DeleteNatGatewaySourceIpTranslationNatRule请求参数结构体
    public struct DeleteNatGatewaySourceIpTranslationNatRuleRequest: TCRequestModel {
        /// NAT网关的ID，形如：`nat-df45454`。
        public let natGatewayId: String

        /// NAT网关的SNAT ID列表，形如：`snat-df43254`。
        public let natGatewaySnatIds: [String]

        public init(natGatewayId: String, natGatewaySnatIds: [String]) {
            self.natGatewayId = natGatewayId
            self.natGatewaySnatIds = natGatewaySnatIds
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case natGatewaySnatIds = "NatGatewaySnatIds"
        }
    }

    /// DeleteNatGatewaySourceIpTranslationNatRule返回参数结构体
    public struct DeleteNatGatewaySourceIpTranslationNatRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除NAT网关的SNAT转发规则
    ///
    /// 本接口（DeleteNatGatewaySourceIpTranslationNatRule）用于删除NAT网关端口SNAT转发规则。
    @inlinable @discardableResult
    public func deleteNatGatewaySourceIpTranslationNatRule(_ input: DeleteNatGatewaySourceIpTranslationNatRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNatGatewaySourceIpTranslationNatRuleResponse> {
        self.client.execute(action: "DeleteNatGatewaySourceIpTranslationNatRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除NAT网关的SNAT转发规则
    ///
    /// 本接口（DeleteNatGatewaySourceIpTranslationNatRule）用于删除NAT网关端口SNAT转发规则。
    @inlinable @discardableResult
    public func deleteNatGatewaySourceIpTranslationNatRule(_ input: DeleteNatGatewaySourceIpTranslationNatRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNatGatewaySourceIpTranslationNatRuleResponse {
        try await self.client.execute(action: "DeleteNatGatewaySourceIpTranslationNatRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除NAT网关的SNAT转发规则
    ///
    /// 本接口（DeleteNatGatewaySourceIpTranslationNatRule）用于删除NAT网关端口SNAT转发规则。
    @inlinable @discardableResult
    public func deleteNatGatewaySourceIpTranslationNatRule(natGatewayId: String, natGatewaySnatIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNatGatewaySourceIpTranslationNatRuleResponse> {
        self.deleteNatGatewaySourceIpTranslationNatRule(.init(natGatewayId: natGatewayId, natGatewaySnatIds: natGatewaySnatIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除NAT网关的SNAT转发规则
    ///
    /// 本接口（DeleteNatGatewaySourceIpTranslationNatRule）用于删除NAT网关端口SNAT转发规则。
    @inlinable @discardableResult
    public func deleteNatGatewaySourceIpTranslationNatRule(natGatewayId: String, natGatewaySnatIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNatGatewaySourceIpTranslationNatRuleResponse {
        try await self.deleteNatGatewaySourceIpTranslationNatRule(.init(natGatewayId: natGatewayId, natGatewaySnatIds: natGatewaySnatIds), region: region, logger: logger, on: eventLoop)
    }
}
