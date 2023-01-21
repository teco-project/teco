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

extension Vpc {
    /// CreateNatGatewayDestinationIpPortTranslationNatRule请求参数结构体
    public struct CreateNatGatewayDestinationIpPortTranslationNatRuleRequest: TCRequestModel {
        /// NAT网关的ID，形如：`nat-df45454`。
        public let natGatewayId: String

        /// NAT网关的端口转换规则。
        public let destinationIpPortTranslationNatRules: [DestinationIpPortTranslationNatRule]

        public init(natGatewayId: String, destinationIpPortTranslationNatRules: [DestinationIpPortTranslationNatRule]) {
            self.natGatewayId = natGatewayId
            self.destinationIpPortTranslationNatRules = destinationIpPortTranslationNatRules
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case destinationIpPortTranslationNatRules = "DestinationIpPortTranslationNatRules"
        }
    }

    /// CreateNatGatewayDestinationIpPortTranslationNatRule返回参数结构体
    public struct CreateNatGatewayDestinationIpPortTranslationNatRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建NAT网关端口转发规则
    ///
    /// 本接口(CreateNatGatewayDestinationIpPortTranslationNatRule)用于创建NAT网关端口转发规则。
    @inlinable @discardableResult
    public func createNatGatewayDestinationIpPortTranslationNatRule(_ input: CreateNatGatewayDestinationIpPortTranslationNatRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNatGatewayDestinationIpPortTranslationNatRuleResponse> {
        self.client.execute(action: "CreateNatGatewayDestinationIpPortTranslationNatRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建NAT网关端口转发规则
    ///
    /// 本接口(CreateNatGatewayDestinationIpPortTranslationNatRule)用于创建NAT网关端口转发规则。
    @inlinable @discardableResult
    public func createNatGatewayDestinationIpPortTranslationNatRule(_ input: CreateNatGatewayDestinationIpPortTranslationNatRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNatGatewayDestinationIpPortTranslationNatRuleResponse {
        try await self.client.execute(action: "CreateNatGatewayDestinationIpPortTranslationNatRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建NAT网关端口转发规则
    ///
    /// 本接口(CreateNatGatewayDestinationIpPortTranslationNatRule)用于创建NAT网关端口转发规则。
    @inlinable @discardableResult
    public func createNatGatewayDestinationIpPortTranslationNatRule(natGatewayId: String, destinationIpPortTranslationNatRules: [DestinationIpPortTranslationNatRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNatGatewayDestinationIpPortTranslationNatRuleResponse> {
        self.createNatGatewayDestinationIpPortTranslationNatRule(CreateNatGatewayDestinationIpPortTranslationNatRuleRequest(natGatewayId: natGatewayId, destinationIpPortTranslationNatRules: destinationIpPortTranslationNatRules), region: region, logger: logger, on: eventLoop)
    }

    /// 创建NAT网关端口转发规则
    ///
    /// 本接口(CreateNatGatewayDestinationIpPortTranslationNatRule)用于创建NAT网关端口转发规则。
    @inlinable @discardableResult
    public func createNatGatewayDestinationIpPortTranslationNatRule(natGatewayId: String, destinationIpPortTranslationNatRules: [DestinationIpPortTranslationNatRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNatGatewayDestinationIpPortTranslationNatRuleResponse {
        try await self.createNatGatewayDestinationIpPortTranslationNatRule(CreateNatGatewayDestinationIpPortTranslationNatRuleRequest(natGatewayId: natGatewayId, destinationIpPortTranslationNatRules: destinationIpPortTranslationNatRules), region: region, logger: logger, on: eventLoop)
    }
}
