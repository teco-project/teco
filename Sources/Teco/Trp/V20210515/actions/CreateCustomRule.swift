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

extension Trp {
    /// CreateCustomRule请求参数结构体
    public struct CreateCustomRuleRequest: TCRequestModel {
        /// 规则名称
        public let name: String

        /// 商户ID
        public let merchantId: String

        /// 码长度
        public let codeLength: UInt64

        /// 码段配置
        public let codeParts: [CodePart]

        /// 企业ID
        public let corpId: UInt64?

        public init(name: String, merchantId: String, codeLength: UInt64, codeParts: [CodePart], corpId: UInt64? = nil) {
            self.name = name
            self.merchantId = merchantId
            self.codeLength = codeLength
            self.codeParts = codeParts
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case merchantId = "MerchantId"
            case codeLength = "CodeLength"
            case codeParts = "CodeParts"
            case corpId = "CorpId"
        }
    }

    /// CreateCustomRule返回参数结构体
    public struct CreateCustomRuleResponse: TCResponseModel {
        /// 码规则ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case requestId = "RequestId"
        }
    }

    /// 新建自定义码规则
    @inlinable
    public func createCustomRule(_ input: CreateCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomRuleResponse> {
        self.client.execute(action: "CreateCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建自定义码规则
    @inlinable
    public func createCustomRule(_ input: CreateCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomRuleResponse {
        try await self.client.execute(action: "CreateCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建自定义码规则
    @inlinable
    public func createCustomRule(name: String, merchantId: String, codeLength: UInt64, codeParts: [CodePart], corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomRuleResponse> {
        self.createCustomRule(CreateCustomRuleRequest(name: name, merchantId: merchantId, codeLength: codeLength, codeParts: codeParts, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建自定义码规则
    @inlinable
    public func createCustomRule(name: String, merchantId: String, codeLength: UInt64, codeParts: [CodePart], corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomRuleResponse {
        try await self.createCustomRule(CreateCustomRuleRequest(name: name, merchantId: merchantId, codeLength: codeLength, codeParts: codeParts, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
