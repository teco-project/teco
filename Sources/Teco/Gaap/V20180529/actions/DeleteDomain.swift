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
    /// DeleteDomain请求参数结构体
    public struct DeleteDomainRequest: TCRequest {
        /// 监听器ID
        public let listenerId: String

        /// 需要删除的域名
        public let domain: String

        /// 是否强制删除已绑定源站的转发规则，0非强制，1强制。
        /// 当采用非强制删除时，如果域名下已有规则绑定了源站，则无法删除。
        public let force: UInt64

        public init(listenerId: String, domain: String, force: UInt64) {
            self.listenerId = listenerId
            self.domain = domain
            self.force = force
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case domain = "Domain"
            case force = "Force"
        }
    }

    /// DeleteDomain返回参数结构体
    public struct DeleteDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 根据域名删除转发规则
    ///
    /// 本接口（DeleteDomain）仅适用于7层监听器，用于删除该监听器下对应域名及域名下的所有规则，所有已绑定源站的规则将自动解绑。
    @inlinable @discardableResult
    public func deleteDomain(_ input: DeleteDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResponse> {
        self.client.execute(action: "DeleteDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据域名删除转发规则
    ///
    /// 本接口（DeleteDomain）仅适用于7层监听器，用于删除该监听器下对应域名及域名下的所有规则，所有已绑定源站的规则将自动解绑。
    @inlinable @discardableResult
    public func deleteDomain(_ input: DeleteDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        try await self.client.execute(action: "DeleteDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据域名删除转发规则
    ///
    /// 本接口（DeleteDomain）仅适用于7层监听器，用于删除该监听器下对应域名及域名下的所有规则，所有已绑定源站的规则将自动解绑。
    @inlinable @discardableResult
    public func deleteDomain(listenerId: String, domain: String, force: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResponse> {
        self.deleteDomain(.init(listenerId: listenerId, domain: domain, force: force), region: region, logger: logger, on: eventLoop)
    }

    /// 根据域名删除转发规则
    ///
    /// 本接口（DeleteDomain）仅适用于7层监听器，用于删除该监听器下对应域名及域名下的所有规则，所有已绑定源站的规则将自动解绑。
    @inlinable @discardableResult
    public func deleteDomain(listenerId: String, domain: String, force: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        try await self.deleteDomain(.init(listenerId: listenerId, domain: domain, force: force), region: region, logger: logger, on: eventLoop)
    }
}
