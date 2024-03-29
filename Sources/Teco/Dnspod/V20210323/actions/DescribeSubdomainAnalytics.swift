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

import Logging
import NIOCore
import TecoCore

extension Dnspod {
    /// DescribeSubdomainAnalytics请求参数结构体
    public struct DescribeSubdomainAnalyticsRequest: TCRequest {
        /// 要查询解析量的域名
        public let domain: String

        /// 查询的开始时间，格式：YYYY-MM-DD
        public let startDate: String

        /// 查询的结束时间，格式：YYYY-MM-DD
        public let endDate: String

        /// 要查询解析量的子域名
        public let subdomain: String

        /// DATE:按天维度统计 HOUR:按小时维度统计
        public let dnsFormat: String?

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, startDate: String, endDate: String, subdomain: String, dnsFormat: String? = nil, domainId: UInt64? = nil) {
            self.domain = domain
            self.startDate = startDate
            self.endDate = endDate
            self.subdomain = subdomain
            self.dnsFormat = dnsFormat
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case subdomain = "Subdomain"
            case dnsFormat = "DnsFormat"
            case domainId = "DomainId"
        }
    }

    /// DescribeSubdomainAnalytics返回参数结构体
    public struct DescribeSubdomainAnalyticsResponse: TCResponse {
        /// 当前统计维度解析量小计
        public let data: [DomainAnalyticsDetail]

        /// 子域名解析量统计查询信息
        public let info: SubdomainAnalyticsInfo

        /// 子域名别名解析量统计信息
        public let aliasData: [SubdomainAliasAnalyticsItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case info = "Info"
            case aliasData = "AliasData"
            case requestId = "RequestId"
        }
    }

    /// 子域名解析量统计
    ///
    /// 统计子域名的解析量，帮助您了解流量情况、时间段分布。支持查看近 3 个月内的统计情况。仅付费套餐域名可用。
    @inlinable
    public func describeSubdomainAnalytics(_ input: DescribeSubdomainAnalyticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubdomainAnalyticsResponse> {
        self.client.execute(action: "DescribeSubdomainAnalytics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 子域名解析量统计
    ///
    /// 统计子域名的解析量，帮助您了解流量情况、时间段分布。支持查看近 3 个月内的统计情况。仅付费套餐域名可用。
    @inlinable
    public func describeSubdomainAnalytics(_ input: DescribeSubdomainAnalyticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubdomainAnalyticsResponse {
        try await self.client.execute(action: "DescribeSubdomainAnalytics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 子域名解析量统计
    ///
    /// 统计子域名的解析量，帮助您了解流量情况、时间段分布。支持查看近 3 个月内的统计情况。仅付费套餐域名可用。
    @inlinable
    public func describeSubdomainAnalytics(domain: String, startDate: String, endDate: String, subdomain: String, dnsFormat: String? = nil, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubdomainAnalyticsResponse> {
        self.describeSubdomainAnalytics(.init(domain: domain, startDate: startDate, endDate: endDate, subdomain: subdomain, dnsFormat: dnsFormat, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 子域名解析量统计
    ///
    /// 统计子域名的解析量，帮助您了解流量情况、时间段分布。支持查看近 3 个月内的统计情况。仅付费套餐域名可用。
    @inlinable
    public func describeSubdomainAnalytics(domain: String, startDate: String, endDate: String, subdomain: String, dnsFormat: String? = nil, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubdomainAnalyticsResponse {
        try await self.describeSubdomainAnalytics(.init(domain: domain, startDate: startDate, endDate: endDate, subdomain: subdomain, dnsFormat: dnsFormat, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
