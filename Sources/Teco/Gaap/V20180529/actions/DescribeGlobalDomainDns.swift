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

extension Gaap {
    /// DescribeGlobalDomainDns请求参数结构体
    public struct DescribeGlobalDomainDnsRequest: TCRequestModel {
        /// 域名ID
        public let domainId: String

        public init(domainId: String) {
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
        }
    }

    /// DescribeGlobalDomainDns返回参数结构体
    public struct DescribeGlobalDomainDnsResponse: TCResponseModel {
        /// DNS解析记录详细信息列表
        public let globalDnsList: [GlobalDns]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case globalDnsList = "GlobalDnsList"
            case requestId = "RequestId"
        }
    }

    /// 查询域名解析列表
    @inlinable
    public func describeGlobalDomainDns(_ input: DescribeGlobalDomainDnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalDomainDnsResponse> {
        self.client.execute(action: "DescribeGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名解析列表
    @inlinable
    public func describeGlobalDomainDns(_ input: DescribeGlobalDomainDnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGlobalDomainDnsResponse {
        try await self.client.execute(action: "DescribeGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名解析列表
    @inlinable
    public func describeGlobalDomainDns(domainId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalDomainDnsResponse> {
        self.describeGlobalDomainDns(DescribeGlobalDomainDnsRequest(domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名解析列表
    @inlinable
    public func describeGlobalDomainDns(domainId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGlobalDomainDnsResponse {
        try await self.describeGlobalDomainDns(DescribeGlobalDomainDnsRequest(domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
