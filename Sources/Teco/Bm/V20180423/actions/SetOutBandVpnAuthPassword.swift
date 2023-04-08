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

extension Bm {
    /// SetOutBandVpnAuthPassword请求参数结构体
    public struct SetOutBandVpnAuthPasswordRequest: TCRequestModel {
        /// 设置的Vpn认证密码
        public let password: String

        /// 操作字段，取值为：Create（创建）或Update（修改）
        public let operate: String

        public init(password: String, operate: String) {
            self.password = password
            self.operate = operate
        }

        enum CodingKeys: String, CodingKey {
            case password = "Password"
            case operate = "Operate"
        }
    }

    /// SetOutBandVpnAuthPassword返回参数结构体
    public struct SetOutBandVpnAuthPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置带外VPN认证用户密码
    @inlinable @discardableResult
    public func setOutBandVpnAuthPassword(_ input: SetOutBandVpnAuthPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetOutBandVpnAuthPasswordResponse> {
        self.client.execute(action: "SetOutBandVpnAuthPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置带外VPN认证用户密码
    @inlinable @discardableResult
    public func setOutBandVpnAuthPassword(_ input: SetOutBandVpnAuthPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetOutBandVpnAuthPasswordResponse {
        try await self.client.execute(action: "SetOutBandVpnAuthPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置带外VPN认证用户密码
    @inlinable @discardableResult
    public func setOutBandVpnAuthPassword(password: String, operate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetOutBandVpnAuthPasswordResponse> {
        self.setOutBandVpnAuthPassword(.init(password: password, operate: operate), region: region, logger: logger, on: eventLoop)
    }

    /// 设置带外VPN认证用户密码
    @inlinable @discardableResult
    public func setOutBandVpnAuthPassword(password: String, operate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetOutBandVpnAuthPasswordResponse {
        try await self.setOutBandVpnAuthPassword(.init(password: password, operate: operate), region: region, logger: logger, on: eventLoop)
    }
}
