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

extension Vpc {
    /// DescribeIp6TranslatorQuota请求参数结构体
    public struct DescribeIp6TranslatorQuotaRequest: TCRequestModel {
        /// 待查询IPV6转换实例的唯一ID列表，形如ip6-xxxxxxxx
        public let ip6TranslatorIds: [String]?

        public init(ip6TranslatorIds: [String]? = nil) {
            self.ip6TranslatorIds = ip6TranslatorIds
        }

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorIds = "Ip6TranslatorIds"
        }
    }

    /// DescribeIp6TranslatorQuota返回参数结构体
    public struct DescribeIp6TranslatorQuotaResponse: TCResponseModel {
        /// 账户在指定地域的IPV6转换实例及规则配额信息
        /// QUOTAID属性是TOTAL_TRANSLATOR_QUOTA，表示账户在指定地域的IPV6转换实例配额信息；QUOTAID属性是IPV6转换实例唯一ID（形如ip6-xxxxxxxx），表示账户在该转换实例允许创建的转换规则配额
        public let quotaSet: [Quota]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case quotaSet = "QuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 查询账户在指定地域IPV6转换实例和规则的配额
    @inlinable
    public func describeIp6TranslatorQuota(_ input: DescribeIp6TranslatorQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIp6TranslatorQuotaResponse> {
        self.client.execute(action: "DescribeIp6TranslatorQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账户在指定地域IPV6转换实例和规则的配额
    @inlinable
    public func describeIp6TranslatorQuota(_ input: DescribeIp6TranslatorQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIp6TranslatorQuotaResponse {
        try await self.client.execute(action: "DescribeIp6TranslatorQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账户在指定地域IPV6转换实例和规则的配额
    @inlinable
    public func describeIp6TranslatorQuota(ip6TranslatorIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIp6TranslatorQuotaResponse> {
        self.describeIp6TranslatorQuota(DescribeIp6TranslatorQuotaRequest(ip6TranslatorIds: ip6TranslatorIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账户在指定地域IPV6转换实例和规则的配额
    @inlinable
    public func describeIp6TranslatorQuota(ip6TranslatorIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIp6TranslatorQuotaResponse {
        try await self.describeIp6TranslatorQuota(DescribeIp6TranslatorQuotaRequest(ip6TranslatorIds: ip6TranslatorIds), region: region, logger: logger, on: eventLoop)
    }
}
