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
    /// ModifyHTTPListenerAttribute请求参数结构体
    public struct ModifyHTTPListenerAttributeRequest: TCRequest {
        /// 需要修改的监听器ID
        public let listenerId: String

        /// 新的监听器名称
        public let listenerName: String

        /// 通道ID
        public let proxyId: String?

        public init(listenerId: String, listenerName: String, proxyId: String? = nil) {
            self.listenerId = listenerId
            self.listenerName = listenerName
            self.proxyId = proxyId
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case proxyId = "ProxyId"
        }
    }

    /// ModifyHTTPListenerAttribute返回参数结构体
    public struct ModifyHTTPListenerAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改HTTP监听器配置
    ///
    /// 该接口（ModifyHTTPListenerAttribute）用于修改通道的HTTP监听器配置信息，目前仅支持修改监听器的名称。
    /// 注意：通道组通道暂时不支持HTTP/HTTPS监听器。
    @inlinable @discardableResult
    public func modifyHTTPListenerAttribute(_ input: ModifyHTTPListenerAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHTTPListenerAttributeResponse> {
        self.client.execute(action: "ModifyHTTPListenerAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改HTTP监听器配置
    ///
    /// 该接口（ModifyHTTPListenerAttribute）用于修改通道的HTTP监听器配置信息，目前仅支持修改监听器的名称。
    /// 注意：通道组通道暂时不支持HTTP/HTTPS监听器。
    @inlinable @discardableResult
    public func modifyHTTPListenerAttribute(_ input: ModifyHTTPListenerAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHTTPListenerAttributeResponse {
        try await self.client.execute(action: "ModifyHTTPListenerAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改HTTP监听器配置
    ///
    /// 该接口（ModifyHTTPListenerAttribute）用于修改通道的HTTP监听器配置信息，目前仅支持修改监听器的名称。
    /// 注意：通道组通道暂时不支持HTTP/HTTPS监听器。
    @inlinable @discardableResult
    public func modifyHTTPListenerAttribute(listenerId: String, listenerName: String, proxyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHTTPListenerAttributeResponse> {
        self.modifyHTTPListenerAttribute(.init(listenerId: listenerId, listenerName: listenerName, proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改HTTP监听器配置
    ///
    /// 该接口（ModifyHTTPListenerAttribute）用于修改通道的HTTP监听器配置信息，目前仅支持修改监听器的名称。
    /// 注意：通道组通道暂时不支持HTTP/HTTPS监听器。
    @inlinable @discardableResult
    public func modifyHTTPListenerAttribute(listenerId: String, listenerName: String, proxyId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHTTPListenerAttributeResponse {
        try await self.modifyHTTPListenerAttribute(.init(listenerId: listenerId, listenerName: listenerName, proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }
}
