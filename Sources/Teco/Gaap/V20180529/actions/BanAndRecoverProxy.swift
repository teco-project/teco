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

extension Gaap {
    /// BanAndRecoverProxy请求参数结构体
    public struct BanAndRecoverProxyRequest: TCRequestModel {
        public init() {
        }
    }

    /// BanAndRecoverProxy返回参数结构体
    public struct BanAndRecoverProxyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 封禁解封跨境通道实例
    ///
    /// 本接口（BanAndRecoverProxy）用于联通封禁解封GAAP跨境通道实例，支持按照客户UIN维度下发请求。被封禁的实例带宽上限将会被限制到0Mbps，无法正常处理客户端和源站之间的请求。
    @inlinable @discardableResult
    public func banAndRecoverProxy(_ input: BanAndRecoverProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BanAndRecoverProxyResponse> {
        self.client.execute(action: "BanAndRecoverProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 封禁解封跨境通道实例
    ///
    /// 本接口（BanAndRecoverProxy）用于联通封禁解封GAAP跨境通道实例，支持按照客户UIN维度下发请求。被封禁的实例带宽上限将会被限制到0Mbps，无法正常处理客户端和源站之间的请求。
    @inlinable @discardableResult
    public func banAndRecoverProxy(_ input: BanAndRecoverProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BanAndRecoverProxyResponse {
        try await self.client.execute(action: "BanAndRecoverProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 封禁解封跨境通道实例
    ///
    /// 本接口（BanAndRecoverProxy）用于联通封禁解封GAAP跨境通道实例，支持按照客户UIN维度下发请求。被封禁的实例带宽上限将会被限制到0Mbps，无法正常处理客户端和源站之间的请求。
    @inlinable @discardableResult
    public func banAndRecoverProxy(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BanAndRecoverProxyResponse> {
        self.banAndRecoverProxy(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 封禁解封跨境通道实例
    ///
    /// 本接口（BanAndRecoverProxy）用于联通封禁解封GAAP跨境通道实例，支持按照客户UIN维度下发请求。被封禁的实例带宽上限将会被限制到0Mbps，无法正常处理客户端和源站之间的请求。
    @inlinable @discardableResult
    public func banAndRecoverProxy(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BanAndRecoverProxyResponse {
        try await self.banAndRecoverProxy(.init(), region: region, logger: logger, on: eventLoop)
    }
}
