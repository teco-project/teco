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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dnspod {
    /// DeleteShareDomain请求参数结构体
    public struct DeleteShareDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 域名共享的账号
        public let account: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, account: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.account = account
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case account = "Account"
            case domainId = "DomainId"
        }
    }

    /// DeleteShareDomain返回参数结构体
    public struct DeleteShareDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除域名共享
    @inlinable @discardableResult
    public func deleteShareDomain(_ input: DeleteShareDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteShareDomainResponse> {
        self.client.execute(action: "DeleteShareDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名共享
    @inlinable @discardableResult
    public func deleteShareDomain(_ input: DeleteShareDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteShareDomainResponse {
        try await self.client.execute(action: "DeleteShareDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除域名共享
    @inlinable @discardableResult
    public func deleteShareDomain(domain: String, account: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteShareDomainResponse> {
        self.deleteShareDomain(.init(domain: domain, account: account, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除域名共享
    @inlinable @discardableResult
    public func deleteShareDomain(domain: String, account: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteShareDomainResponse {
        try await self.deleteShareDomain(.init(domain: domain, account: account, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
