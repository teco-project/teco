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
    /// StartScdnDomain请求参数结构体
    public struct StartScdnDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// StartScdnDomain返回参数结构体
    public struct StartScdnDomainResponse: TCResponseModel {
        /// 开启结果，Success表示成功
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 启动SCDN域名安全防护
    ///
    /// StartScdnDomain 用于开启域名的安全防护配置
    @inlinable
    public func startScdnDomain(_ input: StartScdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartScdnDomainResponse> {
        self.client.execute(action: "StartScdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动SCDN域名安全防护
    ///
    /// StartScdnDomain 用于开启域名的安全防护配置
    @inlinable
    public func startScdnDomain(_ input: StartScdnDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartScdnDomainResponse {
        try await self.client.execute(action: "StartScdnDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动SCDN域名安全防护
    ///
    /// StartScdnDomain 用于开启域名的安全防护配置
    @inlinable
    public func startScdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartScdnDomainResponse> {
        self.startScdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 启动SCDN域名安全防护
    ///
    /// StartScdnDomain 用于开启域名的安全防护配置
    @inlinable
    public func startScdnDomain(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartScdnDomainResponse {
        try await self.startScdnDomain(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
