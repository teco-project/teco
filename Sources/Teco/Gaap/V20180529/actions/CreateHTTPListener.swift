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

extension Gaap {
    /// CreateHTTPListener请求参数结构体
    public struct CreateHTTPListenerRequest: TCRequestModel {
        /// 监听器名称
        public let listenerName: String

        /// 监听器端口，基于同种传输层协议（TCP 或 UDP）的监听器，端口不可重复
        public let port: UInt64

        /// 通道ID，与GroupId不能同时设置，对应为通道创建监听器
        public let proxyId: String?

        /// 通道组ID，与ProxyId不能同时设置，对应为通道组创建监听器
        public let groupId: String?

        public init(listenerName: String, port: UInt64, proxyId: String? = nil, groupId: String? = nil) {
            self.listenerName = listenerName
            self.port = port
            self.proxyId = proxyId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case listenerName = "ListenerName"
            case port = "Port"
            case proxyId = "ProxyId"
            case groupId = "GroupId"
        }
    }

    /// CreateHTTPListener返回参数结构体
    public struct CreateHTTPListenerResponse: TCResponseModel {
        /// 创建的监听器ID
        public let listenerId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case requestId = "RequestId"
        }
    }

    /// 创建HTTP监听器
    ///
    /// 该接口（CreateHTTPListener）用于在通道实例下创建HTTP协议类型的监听器。
    @inlinable
    public func createHTTPListener(_ input: CreateHTTPListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHTTPListenerResponse> {
        self.client.execute(action: "CreateHTTPListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建HTTP监听器
    ///
    /// 该接口（CreateHTTPListener）用于在通道实例下创建HTTP协议类型的监听器。
    @inlinable
    public func createHTTPListener(_ input: CreateHTTPListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHTTPListenerResponse {
        try await self.client.execute(action: "CreateHTTPListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建HTTP监听器
    ///
    /// 该接口（CreateHTTPListener）用于在通道实例下创建HTTP协议类型的监听器。
    @inlinable
    public func createHTTPListener(listenerName: String, port: UInt64, proxyId: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHTTPListenerResponse> {
        let input = CreateHTTPListenerRequest(listenerName: listenerName, port: port, proxyId: proxyId, groupId: groupId)
        return self.client.execute(action: "CreateHTTPListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建HTTP监听器
    ///
    /// 该接口（CreateHTTPListener）用于在通道实例下创建HTTP协议类型的监听器。
    @inlinable
    public func createHTTPListener(listenerName: String, port: UInt64, proxyId: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHTTPListenerResponse {
        let input = CreateHTTPListenerRequest(listenerName: listenerName, port: port, proxyId: proxyId, groupId: groupId)
        return try await self.client.execute(action: "CreateHTTPListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
