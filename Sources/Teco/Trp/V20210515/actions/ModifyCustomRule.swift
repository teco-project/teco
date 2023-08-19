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

extension Trp {
    /// ModifyCustomRule请求参数结构体
    public struct ModifyCustomRuleRequest: TCRequest {
        /// 码规则ID
        public let customId: String

        /// 规则名称
        public let name: String

        /// 码长度
        public let codeLength: UInt64

        /// 码段配置
        public let codeParts: [CodePart]

        /// 企业ID
        public let corpId: UInt64?

        public init(customId: String, name: String, codeLength: UInt64, codeParts: [CodePart], corpId: UInt64? = nil) {
            self.customId = customId
            self.name = name
            self.codeLength = codeLength
            self.codeParts = codeParts
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case name = "Name"
            case codeLength = "CodeLength"
            case codeParts = "CodeParts"
            case corpId = "CorpId"
        }
    }

    /// ModifyCustomRule返回参数结构体
    public struct ModifyCustomRuleResponse: TCResponse {
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

    /// 修改自定义码规则
    @inlinable
    public func modifyCustomRule(_ input: ModifyCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleResponse> {
        self.client.execute(action: "ModifyCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改自定义码规则
    @inlinable
    public func modifyCustomRule(_ input: ModifyCustomRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleResponse {
        try await self.client.execute(action: "ModifyCustomRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改自定义码规则
    @inlinable
    public func modifyCustomRule(customId: String, name: String, codeLength: UInt64, codeParts: [CodePart], corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleResponse> {
        self.modifyCustomRule(.init(customId: customId, name: name, codeLength: codeLength, codeParts: codeParts, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改自定义码规则
    @inlinable
    public func modifyCustomRule(customId: String, name: String, codeLength: UInt64, codeParts: [CodePart], corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleResponse {
        try await self.modifyCustomRule(.init(customId: customId, name: name, codeLength: codeLength, codeParts: codeParts, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
