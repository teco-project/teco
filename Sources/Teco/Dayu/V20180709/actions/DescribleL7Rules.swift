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

import TecoCore

extension Dayu {
    /// DescribleL7Rules请求参数结构体
    public struct DescribleL7RulesRequest: TCRequestModel {
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

        /// 域名搜索，选填，当需要搜索域名请填写
        public let domain: String?

        /// 转发协议搜索，选填，取值[http, https, http/https]
        public let protocolList: [String]?

        /// 状态搜索，选填，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        public let statusList: [UInt64]?

        public init(business: String, id: String, ruleIdList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, domain: String? = nil, protocolList: [String]? = nil, statusList: [UInt64]? = nil) {
            self.business = business
            self.id = id
            self.ruleIdList = ruleIdList
            self.limit = limit
            self.offset = offset
            self.domain = domain
            self.protocolList = protocolList
            self.statusList = statusList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleIdList = "RuleIdList"
            case limit = "Limit"
            case offset = "Offset"
            case domain = "Domain"
            case protocolList = "ProtocolList"
            case statusList = "StatusList"
        }
    }

    /// DescribleL7Rules返回参数结构体
    public struct DescribleL7RulesResponse: TCResponseModel {
        /// 转发规则列表
        public let rules: [L7RuleEntry]

        /// 总规则数
        public let total: UInt64

        /// 健康检查配置列表
        public let healths: [L7RuleHealth]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case total = "Total"
            case healths = "Healths"
            case requestId = "RequestId"
        }
    }

    /// 获取L7转发规则
    ///
    /// 获取七层转发规则
    @inlinable
    public func describleL7Rules(_ input: DescribleL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribleL7RulesResponse> {
        self.client.execute(action: "DescribleL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取L7转发规则
    ///
    /// 获取七层转发规则
    @inlinable
    public func describleL7Rules(_ input: DescribleL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribleL7RulesResponse {
        try await self.client.execute(action: "DescribleL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取L7转发规则
    ///
    /// 获取七层转发规则
    @inlinable
    public func describleL7Rules(business: String, id: String, ruleIdList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, domain: String? = nil, protocolList: [String]? = nil, statusList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribleL7RulesResponse> {
        self.describleL7Rules(.init(business: business, id: id, ruleIdList: ruleIdList, limit: limit, offset: offset, domain: domain, protocolList: protocolList, statusList: statusList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取L7转发规则
    ///
    /// 获取七层转发规则
    @inlinable
    public func describleL7Rules(business: String, id: String, ruleIdList: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, domain: String? = nil, protocolList: [String]? = nil, statusList: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribleL7RulesResponse {
        try await self.describleL7Rules(.init(business: business, id: id, ruleIdList: ruleIdList, limit: limit, offset: offset, domain: domain, protocolList: protocolList, statusList: statusList), region: region, logger: logger, on: eventLoop)
    }
}
