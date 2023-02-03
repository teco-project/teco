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

extension Gaap {
    /// ModifyGlobalDomainDns请求参数结构体
    public struct ModifyGlobalDomainDnsRequest: TCRequestModel {
        /// 解析记录ID
        public let dnsRecordId: UInt64

        /// 域名ID
        public let domainId: String

        /// 国家ID列表
        public let nationCountryInnerCodes: [String]

        /// 通道ID列表
        public let proxyIdList: [String]

        public init(dnsRecordId: UInt64, domainId: String, nationCountryInnerCodes: [String], proxyIdList: [String]) {
            self.dnsRecordId = dnsRecordId
            self.domainId = domainId
            self.nationCountryInnerCodes = nationCountryInnerCodes
            self.proxyIdList = proxyIdList
        }

        enum CodingKeys: String, CodingKey {
            case dnsRecordId = "DnsRecordId"
            case domainId = "DomainId"
            case nationCountryInnerCodes = "NationCountryInnerCodes"
            case proxyIdList = "ProxyIdList"
        }
    }

    /// ModifyGlobalDomainDns返回参数结构体
    public struct ModifyGlobalDomainDnsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改域名解析记录
    @inlinable @discardableResult
    public func modifyGlobalDomainDns(_ input: ModifyGlobalDomainDnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGlobalDomainDnsResponse> {
        self.client.execute(action: "ModifyGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名解析记录
    @inlinable @discardableResult
    public func modifyGlobalDomainDns(_ input: ModifyGlobalDomainDnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGlobalDomainDnsResponse {
        try await self.client.execute(action: "ModifyGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改域名解析记录
    @inlinable @discardableResult
    public func modifyGlobalDomainDns(dnsRecordId: UInt64, domainId: String, nationCountryInnerCodes: [String], proxyIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGlobalDomainDnsResponse> {
        let input = ModifyGlobalDomainDnsRequest(dnsRecordId: dnsRecordId, domainId: domainId, nationCountryInnerCodes: nationCountryInnerCodes, proxyIdList: proxyIdList)
        return self.client.execute(action: "ModifyGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名解析记录
    @inlinable @discardableResult
    public func modifyGlobalDomainDns(dnsRecordId: UInt64, domainId: String, nationCountryInnerCodes: [String], proxyIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGlobalDomainDnsResponse {
        let input = ModifyGlobalDomainDnsRequest(dnsRecordId: dnsRecordId, domainId: domainId, nationCountryInnerCodes: nationCountryInnerCodes, proxyIdList: proxyIdList)
        return try await self.client.execute(action: "ModifyGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
