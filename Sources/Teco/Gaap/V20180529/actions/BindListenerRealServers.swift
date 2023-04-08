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

import TecoCore

extension Gaap {
    /// BindListenerRealServers请求参数结构体
    public struct BindListenerRealServersRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String

        /// 待绑定源站列表。如果该监听器的源站调度策略是加权轮询，需要填写源站权重 RealServerWeight, 不填或者其他调度类型默认源站权重为1。
        public let realServerBindSet: [RealServerBindSetReq]?

        public init(listenerId: String, realServerBindSet: [RealServerBindSetReq]? = nil) {
            self.listenerId = listenerId
            self.realServerBindSet = realServerBindSet
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case realServerBindSet = "RealServerBindSet"
        }
    }

    /// BindListenerRealServers返回参数结构体
    public struct BindListenerRealServersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 监听器绑定源站
    ///
    /// 本接口（BindListenerRealServers）用于TCP/UDP监听器绑定解绑源站。
    /// 注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。例如：原来绑定的源站为A，B，C，本次调用的选择绑定的源站为C，D，E，那么调用后所绑定的源站为C，D，E。
    @inlinable @discardableResult
    public func bindListenerRealServers(_ input: BindListenerRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindListenerRealServersResponse> {
        self.client.execute(action: "BindListenerRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 监听器绑定源站
    ///
    /// 本接口（BindListenerRealServers）用于TCP/UDP监听器绑定解绑源站。
    /// 注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。例如：原来绑定的源站为A，B，C，本次调用的选择绑定的源站为C，D，E，那么调用后所绑定的源站为C，D，E。
    @inlinable @discardableResult
    public func bindListenerRealServers(_ input: BindListenerRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindListenerRealServersResponse {
        try await self.client.execute(action: "BindListenerRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 监听器绑定源站
    ///
    /// 本接口（BindListenerRealServers）用于TCP/UDP监听器绑定解绑源站。
    /// 注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。例如：原来绑定的源站为A，B，C，本次调用的选择绑定的源站为C，D，E，那么调用后所绑定的源站为C，D，E。
    @inlinable @discardableResult
    public func bindListenerRealServers(listenerId: String, realServerBindSet: [RealServerBindSetReq]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindListenerRealServersResponse> {
        self.bindListenerRealServers(.init(listenerId: listenerId, realServerBindSet: realServerBindSet), region: region, logger: logger, on: eventLoop)
    }

    /// 监听器绑定源站
    ///
    /// 本接口（BindListenerRealServers）用于TCP/UDP监听器绑定解绑源站。
    /// 注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。例如：原来绑定的源站为A，B，C，本次调用的选择绑定的源站为C，D，E，那么调用后所绑定的源站为C，D，E。
    @inlinable @discardableResult
    public func bindListenerRealServers(listenerId: String, realServerBindSet: [RealServerBindSetReq]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindListenerRealServersResponse {
        try await self.bindListenerRealServers(.init(listenerId: listenerId, realServerBindSet: realServerBindSet), region: region, logger: logger, on: eventLoop)
    }
}
