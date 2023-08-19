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
    /// DescribeCrossBorderProxies请求参数结构体
    public struct DescribeCrossBorderProxiesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeCrossBorderProxies返回参数结构体
    public struct DescribeCrossBorderProxiesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询跨境通道实例列表
    ///
    /// 本接口（DescribeCrossBorderProxies）用于查询跨境通道实例列表。
    @inlinable @discardableResult
    public func describeCrossBorderProxies(_ input: DescribeCrossBorderProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderProxiesResponse> {
        self.client.execute(action: "DescribeCrossBorderProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询跨境通道实例列表
    ///
    /// 本接口（DescribeCrossBorderProxies）用于查询跨境通道实例列表。
    @inlinable @discardableResult
    public func describeCrossBorderProxies(_ input: DescribeCrossBorderProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderProxiesResponse {
        try await self.client.execute(action: "DescribeCrossBorderProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询跨境通道实例列表
    ///
    /// 本接口（DescribeCrossBorderProxies）用于查询跨境通道实例列表。
    @inlinable @discardableResult
    public func describeCrossBorderProxies(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossBorderProxiesResponse> {
        self.describeCrossBorderProxies(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询跨境通道实例列表
    ///
    /// 本接口（DescribeCrossBorderProxies）用于查询跨境通道实例列表。
    @inlinable @discardableResult
    public func describeCrossBorderProxies(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossBorderProxiesResponse {
        try await self.describeCrossBorderProxies(.init(), region: region, logger: logger, on: eventLoop)
    }
}
