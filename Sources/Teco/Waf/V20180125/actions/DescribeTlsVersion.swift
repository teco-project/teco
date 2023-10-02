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

extension Waf {
    /// DescribeTlsVersion请求参数结构体
    public struct DescribeTlsVersionRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeTlsVersion返回参数结构体
    public struct DescribeTlsVersionResponse: TCResponse {
        /// TLS key value
        public let tls: [TLSVersion]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tls = "TLS"
            case requestId = "RequestId"
        }
    }

    /// 查询用户TLS版本
    @inlinable
    public func describeTlsVersion(_ input: DescribeTlsVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTlsVersionResponse> {
        self.client.execute(action: "DescribeTlsVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户TLS版本
    @inlinable
    public func describeTlsVersion(_ input: DescribeTlsVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTlsVersionResponse {
        try await self.client.execute(action: "DescribeTlsVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户TLS版本
    @inlinable
    public func describeTlsVersion(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTlsVersionResponse> {
        self.describeTlsVersion(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户TLS版本
    @inlinable
    public func describeTlsVersion(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTlsVersionResponse {
        try await self.describeTlsVersion(.init(), region: region, logger: logger, on: eventLoop)
    }
}
