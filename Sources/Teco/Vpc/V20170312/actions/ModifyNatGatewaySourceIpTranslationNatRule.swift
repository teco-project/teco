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
    /// ModifyNatGatewaySourceIpTranslationNatRule请求参数结构体
    public struct ModifyNatGatewaySourceIpTranslationNatRuleRequest: TCRequestModel {
        /// NAT网关的ID，形如：`nat-df453454`。
        public let natGatewayId: String

        /// NAT网关的SNAT转换规则。
        public let sourceIpTranslationNatRule: SourceIpTranslationNatRule

        public init(natGatewayId: String, sourceIpTranslationNatRule: SourceIpTranslationNatRule) {
            self.natGatewayId = natGatewayId
            self.sourceIpTranslationNatRule = sourceIpTranslationNatRule
        }

        enum CodingKeys: String, CodingKey {
            case natGatewayId = "NatGatewayId"
            case sourceIpTranslationNatRule = "SourceIpTranslationNatRule"
        }
    }

    /// ModifyNatGatewaySourceIpTranslationNatRule返回参数结构体
    public struct ModifyNatGatewaySourceIpTranslationNatRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改NAT网关SNAT转发规则
    ///
    /// 本接口（ModifyNatGatewaySourceIpTranslationNatRule）用于修改NAT网关SNAT转发规则。
    @inlinable @discardableResult
    public func modifyNatGatewaySourceIpTranslationNatRule(_ input: ModifyNatGatewaySourceIpTranslationNatRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatGatewaySourceIpTranslationNatRuleResponse> {
        self.client.execute(action: "ModifyNatGatewaySourceIpTranslationNatRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改NAT网关SNAT转发规则
    ///
    /// 本接口（ModifyNatGatewaySourceIpTranslationNatRule）用于修改NAT网关SNAT转发规则。
    @inlinable @discardableResult
    public func modifyNatGatewaySourceIpTranslationNatRule(_ input: ModifyNatGatewaySourceIpTranslationNatRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatGatewaySourceIpTranslationNatRuleResponse {
        try await self.client.execute(action: "ModifyNatGatewaySourceIpTranslationNatRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改NAT网关SNAT转发规则
    ///
    /// 本接口（ModifyNatGatewaySourceIpTranslationNatRule）用于修改NAT网关SNAT转发规则。
    @inlinable @discardableResult
    public func modifyNatGatewaySourceIpTranslationNatRule(natGatewayId: String, sourceIpTranslationNatRule: SourceIpTranslationNatRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNatGatewaySourceIpTranslationNatRuleResponse> {
        self.modifyNatGatewaySourceIpTranslationNatRule(.init(natGatewayId: natGatewayId, sourceIpTranslationNatRule: sourceIpTranslationNatRule), region: region, logger: logger, on: eventLoop)
    }

    /// 修改NAT网关SNAT转发规则
    ///
    /// 本接口（ModifyNatGatewaySourceIpTranslationNatRule）用于修改NAT网关SNAT转发规则。
    @inlinable @discardableResult
    public func modifyNatGatewaySourceIpTranslationNatRule(natGatewayId: String, sourceIpTranslationNatRule: SourceIpTranslationNatRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatGatewaySourceIpTranslationNatRuleResponse {
        try await self.modifyNatGatewaySourceIpTranslationNatRule(.init(natGatewayId: natGatewayId, sourceIpTranslationNatRule: sourceIpTranslationNatRule), region: region, logger: logger, on: eventLoop)
    }
}
