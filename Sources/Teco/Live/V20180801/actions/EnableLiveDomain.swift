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

extension Live {
    /// EnableLiveDomain请求参数结构体
    public struct EnableLiveDomainRequest: TCRequest {
        /// 待启用的直播域名。
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    /// EnableLiveDomain返回参数结构体
    public struct EnableLiveDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用域名
    ///
    /// 启用状态为停用的直播域名。
    @inlinable @discardableResult
    public func enableLiveDomain(_ input: EnableLiveDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableLiveDomainResponse> {
        self.client.execute(action: "EnableLiveDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用域名
    ///
    /// 启用状态为停用的直播域名。
    @inlinable @discardableResult
    public func enableLiveDomain(_ input: EnableLiveDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableLiveDomainResponse {
        try await self.client.execute(action: "EnableLiveDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用域名
    ///
    /// 启用状态为停用的直播域名。
    @inlinable @discardableResult
    public func enableLiveDomain(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableLiveDomainResponse> {
        self.enableLiveDomain(.init(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }

    /// 启用域名
    ///
    /// 启用状态为停用的直播域名。
    @inlinable @discardableResult
    public func enableLiveDomain(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableLiveDomainResponse {
        try await self.enableLiveDomain(.init(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }
}
