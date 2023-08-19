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

extension Cdn {
    /// DeleteCdnDomain请求参数结构体
    public struct DeleteCdnDomainRequest: TCRequest {
        /// 域名
        /// 域名状态需要为【已停用】
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// DeleteCdnDomain返回参数结构体
    public struct DeleteCdnDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除加速域名
    ///
    /// DeleteCdnDomain 用于删除指定加速域名
    @inlinable @discardableResult
    public func deleteCdnDomain(_ input: DeleteCdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCdnDomainResponse> {
        self.client.execute(action: "DeleteCdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除加速域名
    ///
    /// DeleteCdnDomain 用于删除指定加速域名
    @inlinable @discardableResult
    public func deleteCdnDomain(_ input: DeleteCdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCdnDomainResponse {
        try await self.client.execute(action: "DeleteCdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除加速域名
    ///
    /// DeleteCdnDomain 用于删除指定加速域名
    @inlinable @discardableResult
    public func deleteCdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCdnDomainResponse> {
        self.deleteCdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 删除加速域名
    ///
    /// DeleteCdnDomain 用于删除指定加速域名
    @inlinable @discardableResult
    public func deleteCdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCdnDomainResponse {
        try await self.deleteCdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
