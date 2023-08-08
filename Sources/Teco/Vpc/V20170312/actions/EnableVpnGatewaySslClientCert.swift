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

extension Vpc {
    /// EnableVpnGatewaySslClientCert请求参数结构体
    public struct EnableVpnGatewaySslClientCertRequest: TCRequestModel {
        /// SSL-VPN-CLIENT 实例ID。不可和SslVpnClientIds同时使用。
        public let sslVpnClientId: String?

        /// SSL-VPN-CLIENT 实例ID列表。批量启用时使用。不可和SslVpnClientId同时使用。
        public let sslVpnClientIds: [String]?

        public init(sslVpnClientId: String? = nil, sslVpnClientIds: [String]? = nil) {
            self.sslVpnClientId = sslVpnClientId
            self.sslVpnClientIds = sslVpnClientIds
        }

        enum CodingKeys: String, CodingKey {
            case sslVpnClientId = "SslVpnClientId"
            case sslVpnClientIds = "SslVpnClientIds"
        }
    }

    /// EnableVpnGatewaySslClientCert返回参数结构体
    public struct EnableVpnGatewaySslClientCertResponse: TCResponseModel {
        /// 异步任务实例ID。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 启用SSL-VPN-CLIENT 证书
    ///
    /// 本接口（EnableVpnGatewaySslClientCert）用于启用SSL-VPN-CLIENT 证书。
    @inlinable
    public func enableVpnGatewaySslClientCert(_ input: EnableVpnGatewaySslClientCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableVpnGatewaySslClientCertResponse> {
        self.client.execute(action: "EnableVpnGatewaySslClientCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用SSL-VPN-CLIENT 证书
    ///
    /// 本接口（EnableVpnGatewaySslClientCert）用于启用SSL-VPN-CLIENT 证书。
    @inlinable
    public func enableVpnGatewaySslClientCert(_ input: EnableVpnGatewaySslClientCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableVpnGatewaySslClientCertResponse {
        try await self.client.execute(action: "EnableVpnGatewaySslClientCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用SSL-VPN-CLIENT 证书
    ///
    /// 本接口（EnableVpnGatewaySslClientCert）用于启用SSL-VPN-CLIENT 证书。
    @inlinable
    public func enableVpnGatewaySslClientCert(sslVpnClientId: String? = nil, sslVpnClientIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableVpnGatewaySslClientCertResponse> {
        self.enableVpnGatewaySslClientCert(.init(sslVpnClientId: sslVpnClientId, sslVpnClientIds: sslVpnClientIds), region: region, logger: logger, on: eventLoop)
    }

    /// 启用SSL-VPN-CLIENT 证书
    ///
    /// 本接口（EnableVpnGatewaySslClientCert）用于启用SSL-VPN-CLIENT 证书。
    @inlinable
    public func enableVpnGatewaySslClientCert(sslVpnClientId: String? = nil, sslVpnClientIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableVpnGatewaySslClientCertResponse {
        try await self.enableVpnGatewaySslClientCert(.init(sslVpnClientId: sslVpnClientId, sslVpnClientIds: sslVpnClientIds), region: region, logger: logger, on: eventLoop)
    }
}
