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

extension Vpc {
    /// RemoveIp6Rules请求参数结构体
    public struct RemoveIp6RulesRequest: TCRequestModel {
        /// IPV6转换规则所属的转换实例唯一ID，形如ip6-xxxxxxxx
        public let ip6TranslatorId: String

        /// 待删除IPV6转换规则，形如rule6-xxxxxxxx
        public let ip6RuleIds: [String]

        public init(ip6TranslatorId: String, ip6RuleIds: [String]) {
            self.ip6TranslatorId = ip6TranslatorId
            self.ip6RuleIds = ip6RuleIds
        }

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorId = "Ip6TranslatorId"
            case ip6RuleIds = "Ip6RuleIds"
        }
    }

    /// RemoveIp6Rules返回参数结构体
    public struct RemoveIp6RulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除IPV6转换规则
    ///
    /// 1. 该接口用于删除IPV6转换规则
    /// 2. 支持批量删除同一个转换实例下的多个转换规则
    @inlinable @discardableResult
    public func removeIp6Rules(_ input: RemoveIp6RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveIp6RulesResponse> {
        self.client.execute(action: "RemoveIp6Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除IPV6转换规则
    ///
    /// 1. 该接口用于删除IPV6转换规则
    /// 2. 支持批量删除同一个转换实例下的多个转换规则
    @inlinable @discardableResult
    public func removeIp6Rules(_ input: RemoveIp6RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveIp6RulesResponse {
        try await self.client.execute(action: "RemoveIp6Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除IPV6转换规则
    ///
    /// 1. 该接口用于删除IPV6转换规则
    /// 2. 支持批量删除同一个转换实例下的多个转换规则
    @inlinable @discardableResult
    public func removeIp6Rules(ip6TranslatorId: String, ip6RuleIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveIp6RulesResponse> {
        self.removeIp6Rules(.init(ip6TranslatorId: ip6TranslatorId, ip6RuleIds: ip6RuleIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除IPV6转换规则
    ///
    /// 1. 该接口用于删除IPV6转换规则
    /// 2. 支持批量删除同一个转换实例下的多个转换规则
    @inlinable @discardableResult
    public func removeIp6Rules(ip6TranslatorId: String, ip6RuleIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveIp6RulesResponse {
        try await self.removeIp6Rules(.init(ip6TranslatorId: ip6TranslatorId, ip6RuleIds: ip6RuleIds), region: region, logger: logger, on: eventLoop)
    }
}
