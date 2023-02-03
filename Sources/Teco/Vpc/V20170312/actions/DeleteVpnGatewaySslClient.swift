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

extension Vpc {
    /// DeleteVpnGatewaySslClient请求参数结构体
    public struct DeleteVpnGatewaySslClientRequest: TCRequestModel {
        /// SSL-VPN-CLIENT 实例ID。
        public let sslVpnClientId: String

        public init(sslVpnClientId: String) {
            self.sslVpnClientId = sslVpnClientId
        }

        enum CodingKeys: String, CodingKey {
            case sslVpnClientId = "SslVpnClientId"
        }
    }

    /// DeleteVpnGatewaySslClient返回参数结构体
    public struct DeleteVpnGatewaySslClientResponse: TCResponseModel {
        /// 异步任务ID。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除SSL-VPN-CLIENT
    @inlinable
    public func deleteVpnGatewaySslClient(_ input: DeleteVpnGatewaySslClientRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpnGatewaySslClientResponse> {
        self.client.execute(action: "DeleteVpnGatewaySslClient", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除SSL-VPN-CLIENT
    @inlinable
    public func deleteVpnGatewaySslClient(_ input: DeleteVpnGatewaySslClientRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpnGatewaySslClientResponse {
        try await self.client.execute(action: "DeleteVpnGatewaySslClient", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除SSL-VPN-CLIENT
    @inlinable
    public func deleteVpnGatewaySslClient(sslVpnClientId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVpnGatewaySslClientResponse> {
        let input = DeleteVpnGatewaySslClientRequest(sslVpnClientId: sslVpnClientId)
        return self.client.execute(action: "DeleteVpnGatewaySslClient", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除SSL-VPN-CLIENT
    @inlinable
    public func deleteVpnGatewaySslClient(sslVpnClientId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpnGatewaySslClientResponse {
        let input = DeleteVpnGatewaySslClientRequest(sslVpnClientId: sslVpnClientId)
        return try await self.client.execute(action: "DeleteVpnGatewaySslClient", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
