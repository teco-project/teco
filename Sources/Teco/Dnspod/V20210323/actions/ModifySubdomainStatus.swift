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
    /// ModifySubdomainStatus请求参数结构体
    public struct ModifySubdomainStatusRequest: TCRequest {
        /// 域名
        public let domain: String

        /// 记录类型。允许的值为A、CNAME、MX、TXT、NS、AAAA、SPF、SRV、CAA、URL、URL1。若要传多个，用英文逗号分隔，例如A,TXT,CNAME。
        public let recordType: String

        /// 记录状态。允许的值为disable。
        public let status: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        /// 主机记录，如 www，如果不传，默认为 @。
        public let subDomain: String?

        public init(domain: String, recordType: String, status: String, domainId: UInt64? = nil, subDomain: String? = nil) {
            self.domain = domain
            self.recordType = recordType
            self.status = status
            self.domainId = domainId
            self.subDomain = subDomain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case recordType = "RecordType"
            case status = "Status"
            case domainId = "DomainId"
            case subDomain = "SubDomain"
        }
    }

    /// ModifySubdomainStatus返回参数结构体
    public struct ModifySubdomainStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 暂停子域名的解析记录
    @inlinable @discardableResult
    public func modifySubdomainStatus(_ input: ModifySubdomainStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubdomainStatusResponse> {
        self.client.execute(action: "ModifySubdomainStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 暂停子域名的解析记录
    @inlinable @discardableResult
    public func modifySubdomainStatus(_ input: ModifySubdomainStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubdomainStatusResponse {
        try await self.client.execute(action: "ModifySubdomainStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 暂停子域名的解析记录
    @inlinable @discardableResult
    public func modifySubdomainStatus(domain: String, recordType: String, status: String, domainId: UInt64? = nil, subDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubdomainStatusResponse> {
        self.modifySubdomainStatus(.init(domain: domain, recordType: recordType, status: status, domainId: domainId, subDomain: subDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 暂停子域名的解析记录
    @inlinable @discardableResult
    public func modifySubdomainStatus(domain: String, recordType: String, status: String, domainId: UInt64? = nil, subDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubdomainStatusResponse {
        try await self.modifySubdomainStatus(.init(domain: domain, recordType: recordType, status: status, domainId: domainId, subDomain: subDomain), region: region, logger: logger, on: eventLoop)
    }
}
