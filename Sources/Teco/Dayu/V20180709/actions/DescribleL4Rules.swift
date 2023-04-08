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
    /// DescribleL4Rules请求参数结构体
    public struct DescribleL4RulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则ID，可选参数，填写后获取指定的规则
        public let ruleIdList: [String]?

        /// 一页条数，填0表示不分页
        public let limit: UInt64?

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?

        public init(business: String, id: String, ruleIdList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.business = business
            self.id = id
            self.ruleIdList = ruleIdList
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleIdList = "RuleIdList"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribleL4Rules返回参数结构体
    public struct DescribleL4RulesResponse: TCResponseModel {
        /// 转发规则列表
        public let rules: [L4RuleEntry]

        /// 总规则数
        public let total: UInt64

        /// 健康检查配置列表
        public let healths: [L4RuleHealth]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case total = "Total"
            case healths = "Healths"
            case requestId = "RequestId"
        }
    }

    /// 获取L4转发规则
    ///
    /// 获取四层转发规则
    @inlinable
    public func describleL4Rules(_ input: DescribleL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribleL4RulesResponse> {
        self.client.execute(action: "DescribleL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取L4转发规则
    ///
    /// 获取四层转发规则
    @inlinable
    public func describleL4Rules(_ input: DescribleL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribleL4RulesResponse {
        try await self.client.execute(action: "DescribleL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取L4转发规则
    ///
    /// 获取四层转发规则
    @inlinable
    public func describleL4Rules(business: String, id: String, ruleIdList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribleL4RulesResponse> {
        self.describleL4Rules(.init(business: business, id: id, ruleIdList: ruleIdList, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取L4转发规则
    ///
    /// 获取四层转发规则
    @inlinable
    public func describleL4Rules(business: String, id: String, ruleIdList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribleL4RulesResponse {
        try await self.describleL4Rules(.init(business: business, id: id, ruleIdList: ruleIdList, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
