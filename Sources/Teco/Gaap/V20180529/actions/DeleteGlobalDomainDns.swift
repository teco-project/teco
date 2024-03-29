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

extension Gaap {
    /// DeleteGlobalDomainDns请求参数结构体
    public struct DeleteGlobalDomainDnsRequest: TCRequest {
        /// 解析记录的ID
        public let dnsRecordId: UInt64

        public init(dnsRecordId: UInt64) {
            self.dnsRecordId = dnsRecordId
        }

        enum CodingKeys: String, CodingKey {
            case dnsRecordId = "DnsRecordId"
        }
    }

    /// DeleteGlobalDomainDns返回参数结构体
    public struct DeleteGlobalDomainDnsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除域名解析记录
    ///
    /// 删除域名的某条解析记录
    @inlinable @discardableResult
    public func deleteGlobalDomainDns(_ input: DeleteGlobalDomainDnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGlobalDomainDnsResponse> {
        self.client.execute(action: "DeleteGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名解析记录
    ///
    /// 删除域名的某条解析记录
    @inlinable @discardableResult
    public func deleteGlobalDomainDns(_ input: DeleteGlobalDomainDnsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGlobalDomainDnsResponse {
        try await self.client.execute(action: "DeleteGlobalDomainDns", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除域名解析记录
    ///
    /// 删除域名的某条解析记录
    @inlinable @discardableResult
    public func deleteGlobalDomainDns(dnsRecordId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGlobalDomainDnsResponse> {
        self.deleteGlobalDomainDns(.init(dnsRecordId: dnsRecordId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除域名解析记录
    ///
    /// 删除域名的某条解析记录
    @inlinable @discardableResult
    public func deleteGlobalDomainDns(dnsRecordId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGlobalDomainDnsResponse {
        try await self.deleteGlobalDomainDns(.init(dnsRecordId: dnsRecordId), region: region, logger: logger, on: eventLoop)
    }
}
