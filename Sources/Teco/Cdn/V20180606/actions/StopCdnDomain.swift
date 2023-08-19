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
    /// StopCdnDomain请求参数结构体
    public struct StopCdnDomainRequest: TCRequest {
        /// 域名
        /// 域名需要为【已启动】状态
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// StopCdnDomain返回参数结构体
    public struct StopCdnDomainResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停用加速域名
    ///
    /// StopCdnDomain 用于停止域名的加速服务。
    /// 注意：停止加速服务后，访问至加速节点的请求将会直接返回 404。为避免对您的业务造成影响，请在停止加速服务前将解析切走。
    @inlinable @discardableResult
    public func stopCdnDomain(_ input: StopCdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopCdnDomainResponse> {
        self.client.execute(action: "StopCdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用加速域名
    ///
    /// StopCdnDomain 用于停止域名的加速服务。
    /// 注意：停止加速服务后，访问至加速节点的请求将会直接返回 404。为避免对您的业务造成影响，请在停止加速服务前将解析切走。
    @inlinable @discardableResult
    public func stopCdnDomain(_ input: StopCdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopCdnDomainResponse {
        try await self.client.execute(action: "StopCdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用加速域名
    ///
    /// StopCdnDomain 用于停止域名的加速服务。
    /// 注意：停止加速服务后，访问至加速节点的请求将会直接返回 404。为避免对您的业务造成影响，请在停止加速服务前将解析切走。
    @inlinable @discardableResult
    public func stopCdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopCdnDomainResponse> {
        self.stopCdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 停用加速域名
    ///
    /// StopCdnDomain 用于停止域名的加速服务。
    /// 注意：停止加速服务后，访问至加速节点的请求将会直接返回 404。为避免对您的业务造成影响，请在停止加速服务前将解析切走。
    @inlinable @discardableResult
    public func stopCdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopCdnDomainResponse {
        try await self.stopCdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
