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
    /// ResetDeviceAccountPassword请求参数结构体
    public struct ResetDeviceAccountPasswordRequest: TCRequestModel {
        /// ID集合
        public let idSet: [UInt64]

        public init(idSet: [UInt64]) {
            self.idSet = idSet
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
        }
    }

    /// ResetDeviceAccountPassword返回参数结构体
    public struct ResetDeviceAccountPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 清除设备账号绑定密码
    @inlinable @discardableResult
    public func resetDeviceAccountPassword(_ input: ResetDeviceAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDeviceAccountPasswordResponse> {
        self.client.execute(action: "ResetDeviceAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清除设备账号绑定密码
    @inlinable @discardableResult
    public func resetDeviceAccountPassword(_ input: ResetDeviceAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDeviceAccountPasswordResponse {
        try await self.client.execute(action: "ResetDeviceAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清除设备账号绑定密码
    @inlinable @discardableResult
    public func resetDeviceAccountPassword(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDeviceAccountPasswordResponse> {
        self.resetDeviceAccountPassword(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }

    /// 清除设备账号绑定密码
    @inlinable @discardableResult
    public func resetDeviceAccountPassword(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDeviceAccountPasswordResponse {
        try await self.resetDeviceAccountPassword(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }
}
