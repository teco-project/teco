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
    /// SwitchDomainRules请求参数结构体
    public struct SwitchDomainRulesRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 规则列表
        public let ids: [UInt64]

        /// 开关状态
        public let status: UInt64

        /// 设置为观察模式原因
        public let reason: UInt64?

        public init(domain: String, ids: [UInt64], status: UInt64, reason: UInt64? = nil) {
            self.domain = domain
            self.ids = ids
            self.status = status
            self.reason = reason
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ids = "Ids"
            case status = "Status"
            case reason = "Reason"
        }
    }

    /// SwitchDomainRules返回参数结构体
    public struct SwitchDomainRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 切换域名的规则开关
    @inlinable @discardableResult
    public func switchDomainRules(_ input: SwitchDomainRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchDomainRulesResponse> {
        self.client.execute(action: "SwitchDomainRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换域名的规则开关
    @inlinable @discardableResult
    public func switchDomainRules(_ input: SwitchDomainRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDomainRulesResponse {
        try await self.client.execute(action: "SwitchDomainRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换域名的规则开关
    @inlinable @discardableResult
    public func switchDomainRules(domain: String, ids: [UInt64], status: UInt64, reason: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchDomainRulesResponse> {
        self.switchDomainRules(.init(domain: domain, ids: ids, status: status, reason: reason), region: region, logger: logger, on: eventLoop)
    }

    /// 切换域名的规则开关
    @inlinable @discardableResult
    public func switchDomainRules(domain: String, ids: [UInt64], status: UInt64, reason: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDomainRulesResponse {
        try await self.switchDomainRules(.init(domain: domain, ids: ids, status: status, reason: reason), region: region, logger: logger, on: eventLoop)
    }
}
