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
    /// ModifyNatGatewaySourceIpTranslationNatRule请求参数结构体
    public struct ModifyNatGatewaySourceIpTranslationNatRuleRequest: TCRequestModel {
        /// NAT网关的ID，形如：`nat-df453454`。
        public let natGatewayId: String
        
        /// NAT网关的SNAT转换规则。
        public let sourceIpTranslationNatRule: SourceIpTranslationNatRule
        
        public init (natGatewayId: String, sourceIpTranslationNatRule: SourceIpTranslationNatRule) {
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
    @inlinable
    public func modifyNatGatewaySourceIpTranslationNatRule(_ input: ModifyNatGatewaySourceIpTranslationNatRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyNatGatewaySourceIpTranslationNatRuleResponse > {
        self.client.execute(action: "ModifyNatGatewaySourceIpTranslationNatRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改NAT网关SNAT转发规则
    ///
    /// 本接口（ModifyNatGatewaySourceIpTranslationNatRule）用于修改NAT网关SNAT转发规则。
    @inlinable
    public func modifyNatGatewaySourceIpTranslationNatRule(_ input: ModifyNatGatewaySourceIpTranslationNatRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNatGatewaySourceIpTranslationNatRuleResponse {
        try await self.client.execute(action: "ModifyNatGatewaySourceIpTranslationNatRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
