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

extension Dayu {
    /// DeleteCCFrequencyRules请求参数结构体
    public struct DeleteCCFrequencyRulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// CC防护的访问频率控制规则ID
        public let ccFrequencyRuleId: String

        public init(business: String, ccFrequencyRuleId: String) {
            self.business = business
            self.ccFrequencyRuleId = ccFrequencyRuleId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case ccFrequencyRuleId = "CCFrequencyRuleId"
        }
    }

    /// DeleteCCFrequencyRules返回参数结构体
    public struct DeleteCCFrequencyRulesResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 删除CC防护的访问频率控制规则
    @inlinable
    public func deleteCCFrequencyRules(_ input: DeleteCCFrequencyRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCCFrequencyRulesResponse> {
        self.client.execute(action: "DeleteCCFrequencyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除CC防护的访问频率控制规则
    @inlinable
    public func deleteCCFrequencyRules(_ input: DeleteCCFrequencyRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCCFrequencyRulesResponse {
        try await self.client.execute(action: "DeleteCCFrequencyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除CC防护的访问频率控制规则
    @inlinable
    public func deleteCCFrequencyRules(business: String, ccFrequencyRuleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCCFrequencyRulesResponse> {
        self.deleteCCFrequencyRules(.init(business: business, ccFrequencyRuleId: ccFrequencyRuleId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除CC防护的访问频率控制规则
    @inlinable
    public func deleteCCFrequencyRules(business: String, ccFrequencyRuleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCCFrequencyRulesResponse {
        try await self.deleteCCFrequencyRules(.init(business: business, ccFrequencyRuleId: ccFrequencyRuleId), region: region, logger: logger, on: eventLoop)
    }
}
