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

extension Ms {
    /// UpdateClientState请求参数结构体
    public struct UpdateClientStateRequest: TCRequest {
        /// Client Id
        public let clientId: String

        /// Ip addr
        public let ip: String

        /// 内部分组
        public let `internal`: Int64

        /// Client  Version
        public let serverVersion: String

        /// 主机
        public let hostname: String

        /// 系统
        public let os: String

        public init(clientId: String, ip: String, internal: Int64, serverVersion: String, hostname: String, os: String) {
            self.clientId = clientId
            self.ip = ip
            self.internal = `internal`
            self.serverVersion = serverVersion
            self.hostname = hostname
            self.os = os
        }

        enum CodingKeys: String, CodingKey {
            case clientId = "ClientId"
            case ip = "Ip"
            case `internal` = "Internal"
            case serverVersion = "ServerVersion"
            case hostname = "Hostname"
            case os = "Os"
        }
    }

    /// UpdateClientState返回参数结构体
    public struct UpdateClientStateResponse: TCResponse {
        /// 返回值
        public let resultCode: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultCode = "ResultCode"
            case requestId = "RequestId"
        }
    }

    /// 更新client状态
    ///
    /// 更新client状态，需要白名单
    @inlinable
    public func updateClientState(_ input: UpdateClientStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClientStateResponse> {
        self.client.execute(action: "UpdateClientState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新client状态
    ///
    /// 更新client状态，需要白名单
    @inlinable
    public func updateClientState(_ input: UpdateClientStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClientStateResponse {
        try await self.client.execute(action: "UpdateClientState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新client状态
    ///
    /// 更新client状态，需要白名单
    @inlinable
    public func updateClientState(clientId: String, ip: String, internal: Int64, serverVersion: String, hostname: String, os: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClientStateResponse> {
        self.updateClientState(.init(clientId: clientId, ip: ip, internal: `internal`, serverVersion: serverVersion, hostname: hostname, os: os), region: region, logger: logger, on: eventLoop)
    }

    /// 更新client状态
    ///
    /// 更新client状态，需要白名单
    @inlinable
    public func updateClientState(clientId: String, ip: String, internal: Int64, serverVersion: String, hostname: String, os: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClientStateResponse {
        try await self.updateClientState(.init(clientId: clientId, ip: ip, internal: `internal`, serverVersion: serverVersion, hostname: hostname, os: os), region: region, logger: logger, on: eventLoop)
    }
}
