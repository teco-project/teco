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
    /// CloseProxies请求参数结构体
    public struct CloseProxiesRequest: TCRequest {
        /// （旧参数，请切换到ProxyIds）通道的实例ID。
        public let instanceIds: [String]?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        /// 更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?

        /// （新参数）通道的实例ID。
        public let proxyIds: [String]?

        public init(instanceIds: [String]? = nil, clientToken: String? = nil, proxyIds: [String]? = nil) {
            self.instanceIds = instanceIds
            self.clientToken = clientToken
            self.proxyIds = proxyIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case clientToken = "ClientToken"
            case proxyIds = "ProxyIds"
        }
    }

    /// CloseProxies返回参数结构体
    public struct CloseProxiesResponse: TCResponse {
        /// 非运行状态下的通道实例ID列表，不可开启。
        public let invalidStatusInstanceSet: [String]

        /// 开启操作失败的通道实例ID列表。
        public let operationFailedInstanceSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invalidStatusInstanceSet = "InvalidStatusInstanceSet"
            case operationFailedInstanceSet = "OperationFailedInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 关闭通道
    ///
    /// 本接口（CloseProxies）用于关闭通道。通道关闭后，不再产生流量，但每天仍然收取通道基础配置费用。
    @inlinable
    public func closeProxies(_ input: CloseProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseProxiesResponse> {
        self.client.execute(action: "CloseProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭通道
    ///
    /// 本接口（CloseProxies）用于关闭通道。通道关闭后，不再产生流量，但每天仍然收取通道基础配置费用。
    @inlinable
    public func closeProxies(_ input: CloseProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseProxiesResponse {
        try await self.client.execute(action: "CloseProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭通道
    ///
    /// 本接口（CloseProxies）用于关闭通道。通道关闭后，不再产生流量，但每天仍然收取通道基础配置费用。
    @inlinable
    public func closeProxies(instanceIds: [String]? = nil, clientToken: String? = nil, proxyIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseProxiesResponse> {
        self.closeProxies(.init(instanceIds: instanceIds, clientToken: clientToken, proxyIds: proxyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭通道
    ///
    /// 本接口（CloseProxies）用于关闭通道。通道关闭后，不再产生流量，但每天仍然收取通道基础配置费用。
    @inlinable
    public func closeProxies(instanceIds: [String]? = nil, clientToken: String? = nil, proxyIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseProxiesResponse {
        try await self.closeProxies(.init(instanceIds: instanceIds, clientToken: clientToken, proxyIds: proxyIds), region: region, logger: logger, on: eventLoop)
    }
}
