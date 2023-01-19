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

extension Tsf {
    /// UpdateApiRateLimitRule请求参数结构体
    public struct UpdateApiRateLimitRuleRequest: TCRequestModel {
        /// 限流规则ID
        public let ruleId: String

        /// 开启/禁用，enabled/disabled
        public let usableStatus: String

        /// qps值，开启限流规则时，必填
        public let maxQps: Int64?

        public init(ruleId: String, usableStatus: String, maxQps: Int64? = nil) {
            self.ruleId = ruleId
            self.usableStatus = usableStatus
            self.maxQps = maxQps
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case usableStatus = "UsableStatus"
            case maxQps = "MaxQps"
        }
    }

    /// UpdateApiRateLimitRule返回参数结构体
    public struct UpdateApiRateLimitRuleResponse: TCResponseModel {
        /// 是否成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新API限流规则
    @inlinable
    public func updateApiRateLimitRule(_ input: UpdateApiRateLimitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiRateLimitRuleResponse> {
        self.client.execute(action: "UpdateApiRateLimitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新API限流规则
    @inlinable
    public func updateApiRateLimitRule(_ input: UpdateApiRateLimitRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiRateLimitRuleResponse {
        try await self.client.execute(action: "UpdateApiRateLimitRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新API限流规则
    @inlinable
    public func updateApiRateLimitRule(ruleId: String, usableStatus: String, maxQps: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiRateLimitRuleResponse> {
        self.updateApiRateLimitRule(UpdateApiRateLimitRuleRequest(ruleId: ruleId, usableStatus: usableStatus, maxQps: maxQps), region: region, logger: logger, on: eventLoop)
    }

    /// 更新API限流规则
    @inlinable
    public func updateApiRateLimitRule(ruleId: String, usableStatus: String, maxQps: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiRateLimitRuleResponse {
        try await self.updateApiRateLimitRule(UpdateApiRateLimitRuleRequest(ruleId: ruleId, usableStatus: usableStatus, maxQps: maxQps), region: region, logger: logger, on: eventLoop)
    }
}
