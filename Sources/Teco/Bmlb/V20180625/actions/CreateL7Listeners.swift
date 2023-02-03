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

extension Bmlb {
    /// CreateL7Listeners请求参数结构体
    public struct CreateL7ListenersRequest: TCRequestModel {
        /// 负载均衡实例ID
        public let loadBalancerId: String

        /// 七层监听器信息数组，可以创建多个七层监听器。目前一个负载均衡下面最多允许创建50个七层监听器。
        public let listenerSet: [CreateL7Listener]

        public init(loadBalancerId: String, listenerSet: [CreateL7Listener]) {
            self.loadBalancerId = loadBalancerId
            self.listenerSet = listenerSet
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerSet = "ListenerSet"
        }
    }

    /// CreateL7Listeners返回参数结构体
    public struct CreateL7ListenersResponse: TCResponseModel {
        /// 新建的负载均衡七层监听器的唯一ID列表。
        public let listenerIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerIds = "ListenerIds"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石负载均衡七层监听器
    ///
    /// 创建黑石负载均衡七层监听器功能。负载均衡七层监听器提供了转发用户请求的具体规则，包括端口、协议等参数。
    @inlinable
    public func createL7Listeners(_ input: CreateL7ListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7ListenersResponse> {
        self.client.execute(action: "CreateL7Listeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石负载均衡七层监听器
    ///
    /// 创建黑石负载均衡七层监听器功能。负载均衡七层监听器提供了转发用户请求的具体规则，包括端口、协议等参数。
    @inlinable
    public func createL7Listeners(_ input: CreateL7ListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7ListenersResponse {
        try await self.client.execute(action: "CreateL7Listeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石负载均衡七层监听器
    ///
    /// 创建黑石负载均衡七层监听器功能。负载均衡七层监听器提供了转发用户请求的具体规则，包括端口、协议等参数。
    @inlinable
    public func createL7Listeners(loadBalancerId: String, listenerSet: [CreateL7Listener], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7ListenersResponse> {
        let input = CreateL7ListenersRequest(loadBalancerId: loadBalancerId, listenerSet: listenerSet)
        return self.client.execute(action: "CreateL7Listeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石负载均衡七层监听器
    ///
    /// 创建黑石负载均衡七层监听器功能。负载均衡七层监听器提供了转发用户请求的具体规则，包括端口、协议等参数。
    @inlinable
    public func createL7Listeners(loadBalancerId: String, listenerSet: [CreateL7Listener], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7ListenersResponse {
        let input = CreateL7ListenersRequest(loadBalancerId: loadBalancerId, listenerSet: listenerSet)
        return try await self.client.execute(action: "CreateL7Listeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
