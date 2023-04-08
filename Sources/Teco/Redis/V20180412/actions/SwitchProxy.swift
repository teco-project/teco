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

extension Redis {
    /// SwitchProxy请求参数结构体
    public struct SwitchProxyRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 实例ProxyID
        public let proxyID: String?

        public init(instanceId: String, proxyID: String? = nil) {
            self.instanceId = instanceId
            self.proxyID = proxyID
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case proxyID = "ProxyID"
        }
    }

    /// SwitchProxy返回参数结构体
    public struct SwitchProxyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// Proxy模拟故障接口
    @inlinable @discardableResult
    public func switchProxy(_ input: SwitchProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchProxyResponse> {
        self.client.execute(action: "SwitchProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Proxy模拟故障接口
    @inlinable @discardableResult
    public func switchProxy(_ input: SwitchProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchProxyResponse {
        try await self.client.execute(action: "SwitchProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Proxy模拟故障接口
    @inlinable @discardableResult
    public func switchProxy(instanceId: String, proxyID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchProxyResponse> {
        self.switchProxy(.init(instanceId: instanceId, proxyID: proxyID), region: region, logger: logger, on: eventLoop)
    }

    /// Proxy模拟故障接口
    @inlinable @discardableResult
    public func switchProxy(instanceId: String, proxyID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchProxyResponse {
        try await self.switchProxy(.init(instanceId: instanceId, proxyID: proxyID), region: region, logger: logger, on: eventLoop)
    }
}
