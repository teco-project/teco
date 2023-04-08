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

extension Dasb {
    /// BindDeviceAccountPassword请求参数结构体
    public struct BindDeviceAccountPasswordRequest: TCRequestModel {
        /// 主机账号ID
        public let id: UInt64

        /// 主机账号密码
        public let password: String

        public init(id: UInt64, password: String) {
            self.id = id
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case password = "Password"
        }
    }

    /// BindDeviceAccountPassword返回参数结构体
    public struct BindDeviceAccountPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定主机账号密码
    @inlinable @discardableResult
    public func bindDeviceAccountPassword(_ input: BindDeviceAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindDeviceAccountPasswordResponse> {
        self.client.execute(action: "BindDeviceAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定主机账号密码
    @inlinable @discardableResult
    public func bindDeviceAccountPassword(_ input: BindDeviceAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindDeviceAccountPasswordResponse {
        try await self.client.execute(action: "BindDeviceAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定主机账号密码
    @inlinable @discardableResult
    public func bindDeviceAccountPassword(id: UInt64, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindDeviceAccountPasswordResponse> {
        self.bindDeviceAccountPassword(.init(id: id, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定主机账号密码
    @inlinable @discardableResult
    public func bindDeviceAccountPassword(id: UInt64, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindDeviceAccountPasswordResponse {
        try await self.bindDeviceAccountPassword(.init(id: id, password: password), region: region, logger: logger, on: eventLoop)
    }
}
