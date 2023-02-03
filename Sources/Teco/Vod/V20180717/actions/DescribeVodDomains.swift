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

extension Vod {
    /// DescribeVodDomains请求参数结构体
    public struct DescribeVodDomainsRequest: TCRequestModel {
        /// 域名列表。当该字段不填时，则默认列出所有域名信息。本字段字段限制如下：
        /// <li>域名个数度最大为 20。</li>
        public let domains: [String]?

        /// 分页拉取的最大返回结果数。默认值：20。
        public let limit: UInt64?

        /// 分页拉取的起始偏移量。默认值：0。
        public let offset: UInt64?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, subAppId: UInt64? = nil) {
            self.domains = domains
            self.limit = limit
            self.offset = offset
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case limit = "Limit"
            case offset = "Offset"
            case subAppId = "SubAppId"
        }
    }

    /// DescribeVodDomains返回参数结构体
    public struct DescribeVodDomainsResponse: TCResponseModel {
        /// 域名总数量。
        public let totalCount: UInt64

        /// 域名信息列表。
        public let domainSet: [DomainDetailInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case domainSet = "DomainSet"
            case requestId = "RequestId"
        }
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVodDomainsResponse> {
        self.client.execute(action: "DescribeVodDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVodDomainsResponse {
        try await self.client.execute(action: "DescribeVodDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVodDomainsResponse> {
        let input = DescribeVodDomainsRequest(domains: domains, limit: limit, offset: offset, subAppId: subAppId)
        return self.client.execute(action: "DescribeVodDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVodDomainsResponse {
        let input = DescribeVodDomainsRequest(domains: domains, limit: limit, offset: offset, subAppId: subAppId)
        return try await self.client.execute(action: "DescribeVodDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
