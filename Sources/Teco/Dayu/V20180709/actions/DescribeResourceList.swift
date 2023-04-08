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
import TecoPaginationHelpers

extension Dayu {
    /// DescribeResourceList请求参数结构体
    public struct DescribeResourceListRequest: TCPaginatedRequest {
        /// 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 地域码搜索，可选，当不指定地域时空数组，当指定地域时，填地域码。例如：["gz", "sh"]
        public let regionList: [String]?

        /// 线路搜索，可选，只有当获取高防IP资源列表是可以选填，取值为[1（BGP线路），2（南京电信），3（南京联通），99（第三方合作线路）]，当获取其他产品时请填空数组；
        public let line: [UInt64]?

        /// 资源ID搜索，可选，当不为空数组时表示获取指定资源的资源列表；
        public let idList: [String]?

        /// 资源名称搜索，可选，当不为空字符串时表示按名称搜索资源；
        public let name: String?

        /// IP搜索列表，可选，当不为空时表示按照IP搜索资源；
        public let ipList: [String]?

        /// 资源状态搜索列表，可选，取值为[0（运行中）, 1（清洗中）, 2（封堵中）]，当填空数组时不进行状态搜索；
        public let status: [UInt64]?

        /// 即将到期搜索；可选，取值为[0（不搜索），1（搜索即将到期的资源）]
        public let expire: UInt64?

        /// 排序字段，可选
        public let oderBy: [OrderBy]?

        /// 一页条数，填0表示不分页
        public let limit: UInt64?

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?

        /// 高防IP专业版资源的CNAME，可选，只对高防IP专业版资源列表有效；
        public let cName: String?

        /// 高防IP专业版资源的域名，可选，只对高防IP专业版资源列表有效；
        public let domain: String?

        public init(business: String, regionList: [String]? = nil, line: [UInt64]? = nil, idList: [String]? = nil, name: String? = nil, ipList: [String]? = nil, status: [UInt64]? = nil, expire: UInt64? = nil, oderBy: [OrderBy]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, cName: String? = nil, domain: String? = nil) {
            self.business = business
            self.regionList = regionList
            self.line = line
            self.idList = idList
            self.name = name
            self.ipList = ipList
            self.status = status
            self.expire = expire
            self.oderBy = oderBy
            self.limit = limit
            self.offset = offset
            self.cName = cName
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case regionList = "RegionList"
            case line = "Line"
            case idList = "IdList"
            case name = "Name"
            case ipList = "IpList"
            case status = "Status"
            case expire = "Expire"
            case oderBy = "OderBy"
            case limit = "Limit"
            case offset = "Offset"
            case cName = "CName"
            case domain = "Domain"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourceListResponse) -> DescribeResourceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourceListRequest(business: self.business, regionList: self.regionList, line: self.line, idList: self.idList, name: self.name, ipList: self.ipList, status: self.status, expire: self.expire, oderBy: self.oderBy, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), cName: self.cName, domain: self.domain)
        }
    }

    /// DescribeResourceList返回参数结构体
    public struct DescribeResourceListResponse: TCPaginatedResponse {
        /// 总记录数
        public let total: UInt64

        /// 资源记录列表，返回Key值说明：
        /// "Key": "CreateTime" 表示资源实例购买时间
        /// "Key": "Region" 表示资源实例的地域
        /// "Key": "BoundIP" 表示独享包实例绑定的IP
        /// "Key": "Id" 表示资源实例的ID
        /// "Key": "CCEnabled" 表示资源实例的CC防护开关状态
        /// "Key": "DDoSThreshold" 表示资源实例的DDoS的清洗阈值
        /// "Key": "BoundStatus" 表示独享包或共享包实例的绑定IP操作状态(绑定中或绑定完成)
        /// "Key": "Type" 此字段弃用
        /// "Key": "ElasticLimit" 表示资源实例的弹性防护值
        /// "Key": "DDoSAI" 表示资源实例的DDoS AI防护开关
        /// "Key": "OverloadCount" 表示资源实例受到超过弹性防护值的次数
        /// "Key": "Status" 表示资源实例的状态(idle:运行中, attacking:攻击中, blocking:封堵中, isolate:隔离中)
        /// "Key": "Lbid" 此字段弃用
        /// "Key": "ShowFlag" 此字段弃用
        /// "Key": "Expire" 表示资源实例的过期时间
        /// "Key": "CCThreshold" 表示资源实例的CC防护触发阈值
        /// "Key": "AutoRenewFlag" 表示资源实例的自动续费是否开启
        /// "Key": "IspCode" 表示独享包或共享包的线路(0-电信, 1-联通, 2-移动, 5-BGP)
        /// "Key": "PackType" 表示套餐包类型
        /// "Key": "PackId" 表示套餐包ID
        /// "Key": "Name" 表示资源实例的名称
        /// "Key": "Locked" 此字段弃用
        /// "Key": "IpDDoSLevel" 表示资源实例的防护等级(low-宽松, middle-正常, high-严格)
        /// "Key": "DefendStatus" 表示资源实例的DDoS防护状态(防护开启或临时关闭)
        /// "Key": "UndefendExpire" 表示资源实例的DDoS防护临时关闭结束时间
        /// "Key": "Tgw" 表示资源实例是否是新资源
        /// "Key": "Bandwidth" 表示资源实例的保底防护值，只针对高防包和高防IP
        /// "Key": "DdosMax" 表示资源实例的保底防护值，只针对高防IP专业版
        /// "Key": "GFBandwidth" 表示资源实例的保底业务带宽，只针对高防IP
        /// "Key": "ServiceBandwidth" 表示资源实例的保底业务带宽，只针对高防IP专业版
        public let servicePacks: [KeyValueRecord]

        /// 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case servicePacks = "ServicePacks"
            case business = "Business"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [KeyValueRecord] {
            self.servicePacks
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取资源列表
    @inlinable
    public func describeResourceList(_ input: DescribeResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceListResponse> {
        self.client.execute(action: "DescribeResourceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资源列表
    @inlinable
    public func describeResourceList(_ input: DescribeResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceListResponse {
        try await self.client.execute(action: "DescribeResourceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资源列表
    @inlinable
    public func describeResourceList(business: String, regionList: [String]? = nil, line: [UInt64]? = nil, idList: [String]? = nil, name: String? = nil, ipList: [String]? = nil, status: [UInt64]? = nil, expire: UInt64? = nil, oderBy: [OrderBy]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, cName: String? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceListResponse> {
        self.describeResourceList(.init(business: business, regionList: regionList, line: line, idList: idList, name: name, ipList: ipList, status: status, expire: expire, oderBy: oderBy, limit: limit, offset: offset, cName: cName, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源列表
    @inlinable
    public func describeResourceList(business: String, regionList: [String]? = nil, line: [UInt64]? = nil, idList: [String]? = nil, name: String? = nil, ipList: [String]? = nil, status: [UInt64]? = nil, expire: UInt64? = nil, oderBy: [OrderBy]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, cName: String? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceListResponse {
        try await self.describeResourceList(.init(business: business, regionList: regionList, line: line, idList: idList, name: name, ipList: ipList, status: status, expire: expire, oderBy: oderBy, limit: limit, offset: offset, cName: cName, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源列表
    @inlinable
    public func describeResourceListPaginated(_ input: DescribeResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [KeyValueRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceList, logger: logger, on: eventLoop)
    }

    /// 获取资源列表
    @inlinable @discardableResult
    public func describeResourceListPaginated(_ input: DescribeResourceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取资源列表
    ///
    /// - Returns: `AsyncSequence`s of `KeyValueRecord` and `DescribeResourceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceListPaginator(_ input: DescribeResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceList, logger: logger, on: eventLoop)
    }
}
