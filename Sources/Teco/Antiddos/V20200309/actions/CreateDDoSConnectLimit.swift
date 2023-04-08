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

extension Antiddos {
    /// CreateDDoSConnectLimit请求参数结构体
    public struct CreateDDoSConnectLimitRequest: TCRequestModel {
        /// 资源实例Id
        public let instanceId: String

        /// 连接抑制配置
        public let connectLimitConfig: ConnectLimitConfig

        public init(instanceId: String, connectLimitConfig: ConnectLimitConfig) {
            self.instanceId = instanceId
            self.connectLimitConfig = connectLimitConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case connectLimitConfig = "ConnectLimitConfig"
        }
    }

    /// CreateDDoSConnectLimit返回参数结构体
    public struct CreateDDoSConnectLimitResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置DDoS连接抑制选项
    @inlinable @discardableResult
    public func createDDoSConnectLimit(_ input: CreateDDoSConnectLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDDoSConnectLimitResponse> {
        self.client.execute(action: "CreateDDoSConnectLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置DDoS连接抑制选项
    @inlinable @discardableResult
    public func createDDoSConnectLimit(_ input: CreateDDoSConnectLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDDoSConnectLimitResponse {
        try await self.client.execute(action: "CreateDDoSConnectLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置DDoS连接抑制选项
    @inlinable @discardableResult
    public func createDDoSConnectLimit(instanceId: String, connectLimitConfig: ConnectLimitConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDDoSConnectLimitResponse> {
        self.createDDoSConnectLimit(.init(instanceId: instanceId, connectLimitConfig: connectLimitConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 配置DDoS连接抑制选项
    @inlinable @discardableResult
    public func createDDoSConnectLimit(instanceId: String, connectLimitConfig: ConnectLimitConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDDoSConnectLimitResponse {
        try await self.createDDoSConnectLimit(.init(instanceId: instanceId, connectLimitConfig: connectLimitConfig), region: region, logger: logger, on: eventLoop)
    }
}
