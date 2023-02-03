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

extension Waf {
    /// ModifyCustomRuleStatus请求参数结构体
    public struct ModifyCustomRuleStatusRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 规则ID
        public let ruleId: UInt64

        /// 开关的状态，1是开启、0是关闭
        public let status: UInt64

        /// WAF的版本，clb-waf代表负载均衡WAF、sparta-waf代表SaaS WAF，默认是sparta-waf。
        public let edition: String?

        public init(domain: String, ruleId: UInt64, status: UInt64, edition: String? = nil) {
            self.domain = domain
            self.ruleId = ruleId
            self.status = status
            self.edition = edition
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ruleId = "RuleId"
            case status = "Status"
            case edition = "Edition"
        }
    }

    /// ModifyCustomRuleStatus返回参数结构体
    public struct ModifyCustomRuleStatusResponse: TCResponseModel {
        /// 操作的状态码，如果所有的资源操作成功则返回的是成功的状态码，如果有资源操作失败则需要解析Message的内容来查看哪个资源失败
        public let success: ResponseCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 开启或禁用访问控制（自定义策略）
    @inlinable
    public func modifyCustomRuleStatus(_ input: ModifyCustomRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleStatusResponse> {
        self.client.execute(action: "ModifyCustomRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启或禁用访问控制（自定义策略）
    @inlinable
    public func modifyCustomRuleStatus(_ input: ModifyCustomRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleStatusResponse {
        try await self.client.execute(action: "ModifyCustomRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启或禁用访问控制（自定义策略）
    @inlinable
    public func modifyCustomRuleStatus(domain: String, ruleId: UInt64, status: UInt64, edition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleStatusResponse> {
        let input = ModifyCustomRuleStatusRequest(domain: domain, ruleId: ruleId, status: status, edition: edition)
        return self.client.execute(action: "ModifyCustomRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启或禁用访问控制（自定义策略）
    @inlinable
    public func modifyCustomRuleStatus(domain: String, ruleId: UInt64, status: UInt64, edition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleStatusResponse {
        let input = ModifyCustomRuleStatusRequest(domain: domain, ruleId: ruleId, status: status, edition: edition)
        return try await self.client.execute(action: "ModifyCustomRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
