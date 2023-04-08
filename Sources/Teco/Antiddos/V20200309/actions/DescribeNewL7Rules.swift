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

extension Antiddos {
    /// DescribeNewL7Rules请求参数结构体
    public struct DescribeNewL7RulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 状态搜索，选填，取值[0(规则配置成功)，1(规则配置生效中)，2(规则配置失败)，3(规则删除生效中)，5(规则删除失败)，6(规则等待配置)，7(规则等待删除)，8(规则待配置证书)]
        public let statusList: [UInt64]?

        /// 域名搜索，选填，当需要搜索域名请填写
        public let domain: String?

        /// IP搜索，选填，当需要搜索IP请填写
        public let ip: String?

        /// 一页条数，填0表示不分页
        public let limit: UInt64?

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?

        /// 转发协议搜索，选填，取值[http, https, http/https]
        public let protocolList: [String]?

        /// 高防IP实例的Cname
        public let cname: String?

        public init(business: String, statusList: [UInt64]? = nil, domain: String? = nil, ip: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, protocolList: [String]? = nil, cname: String? = nil) {
            self.business = business
            self.statusList = statusList
            self.domain = domain
            self.ip = ip
            self.limit = limit
            self.offset = offset
            self.protocolList = protocolList
            self.cname = cname
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case statusList = "StatusList"
            case domain = "Domain"
            case ip = "Ip"
            case limit = "Limit"
            case offset = "Offset"
            case protocolList = "ProtocolList"
            case cname = "Cname"
        }
    }

    /// DescribeNewL7Rules返回参数结构体
    public struct DescribeNewL7RulesResponse: TCResponseModel {
        /// 转发规则列表
        public let rules: [NewL7RuleEntry]

        /// 健康检查配置列表
        public let healths: [L7RuleHealth]

        /// 总规则数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case healths = "Healths"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 高防IP获取7层规则
    @inlinable
    public func describeNewL7Rules(_ input: DescribeNewL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNewL7RulesResponse> {
        self.client.execute(action: "DescribeNewL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 高防IP获取7层规则
    @inlinable
    public func describeNewL7Rules(_ input: DescribeNewL7RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewL7RulesResponse {
        try await self.client.execute(action: "DescribeNewL7Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 高防IP获取7层规则
    @inlinable
    public func describeNewL7Rules(business: String, statusList: [UInt64]? = nil, domain: String? = nil, ip: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, protocolList: [String]? = nil, cname: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNewL7RulesResponse> {
        self.describeNewL7Rules(.init(business: business, statusList: statusList, domain: domain, ip: ip, limit: limit, offset: offset, protocolList: protocolList, cname: cname), region: region, logger: logger, on: eventLoop)
    }

    /// 高防IP获取7层规则
    @inlinable
    public func describeNewL7Rules(business: String, statusList: [UInt64]? = nil, domain: String? = nil, ip: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, protocolList: [String]? = nil, cname: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNewL7RulesResponse {
        try await self.describeNewL7Rules(.init(business: business, statusList: statusList, domain: domain, ip: ip, limit: limit, offset: offset, protocolList: protocolList, cname: cname), region: region, logger: logger, on: eventLoop)
    }
}
