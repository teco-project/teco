//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dc {
    /// EnableInternetAddress请求参数结构体
    public struct EnableInternetAddressRequest: TCRequestModel {
        /// 互联网公网地址ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// EnableInternetAddress返回参数结构体
    public struct EnableInternetAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用互联网公网地址
    ///
    /// 启用已停用的互联网公网地址
    @inlinable
    public func enableInternetAddress(_ input: EnableInternetAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableInternetAddressResponse > {
        self.client.execute(action: "EnableInternetAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用互联网公网地址
    ///
    /// 启用已停用的互联网公网地址
    @inlinable
    public func enableInternetAddress(_ input: EnableInternetAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableInternetAddressResponse {
        try await self.client.execute(action: "EnableInternetAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用互联网公网地址
    ///
    /// 启用已停用的互联网公网地址
    @inlinable
    public func enableInternetAddress(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableInternetAddressResponse > {
        self.enableInternetAddress(EnableInternetAddressRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }

    /// 启用互联网公网地址
    ///
    /// 启用已停用的互联网公网地址
    @inlinable
    public func enableInternetAddress(instanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableInternetAddressResponse {
        try await self.enableInternetAddress(EnableInternetAddressRequest(instanceId: instanceId), logger: logger, on: eventLoop)
    }
}
