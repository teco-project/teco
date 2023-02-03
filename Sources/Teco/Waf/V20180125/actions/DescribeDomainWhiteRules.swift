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
    /// DescribeDomainWhiteRules请求参数结构体
    public struct DescribeDomainWhiteRulesRequest: TCRequestModel {
        /// 需要查询的域名
        public let domain: String

        /// 请求的白名单匹配路径
        public let url: String?

        /// 翻到多少页
        public let page: UInt64?

        /// 每页展示的条数
        public let count: UInt64?

        /// 排序方式,desc表示降序，asc表示升序
        public let sort: String?

        /// 规则ID
        public let ruleId: String?

        public init(domain: String, url: String? = nil, page: UInt64? = nil, count: UInt64? = nil, sort: String? = nil, ruleId: String? = nil) {
            self.domain = domain
            self.url = url
            self.page = page
            self.count = count
            self.sort = sort
            self.ruleId = ruleId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case url = "Url"
            case page = "Page"
            case count = "Count"
            case sort = "Sort"
            case ruleId = "RuleId"
        }
    }

    /// DescribeDomainWhiteRules返回参数结构体
    public struct DescribeDomainWhiteRulesResponse: TCResponseModel {
        /// 规则列表
        public let ruleList: [RuleList]

        /// 规则的数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleList = "RuleList"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取域名的规则白名单
    @inlinable
    public func describeDomainWhiteRules(_ input: DescribeDomainWhiteRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainWhiteRulesResponse> {
        self.client.execute(action: "DescribeDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名的规则白名单
    @inlinable
    public func describeDomainWhiteRules(_ input: DescribeDomainWhiteRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainWhiteRulesResponse {
        try await self.client.execute(action: "DescribeDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名的规则白名单
    @inlinable
    public func describeDomainWhiteRules(domain: String, url: String? = nil, page: UInt64? = nil, count: UInt64? = nil, sort: String? = nil, ruleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainWhiteRulesResponse> {
        let input = DescribeDomainWhiteRulesRequest(domain: domain, url: url, page: page, count: count, sort: sort, ruleId: ruleId)
        return self.client.execute(action: "DescribeDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名的规则白名单
    @inlinable
    public func describeDomainWhiteRules(domain: String, url: String? = nil, page: UInt64? = nil, count: UInt64? = nil, sort: String? = nil, ruleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainWhiteRulesResponse {
        let input = DescribeDomainWhiteRulesRequest(domain: domain, url: url, page: page, count: count, sort: sort, ruleId: ruleId)
        return try await self.client.execute(action: "DescribeDomainWhiteRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
