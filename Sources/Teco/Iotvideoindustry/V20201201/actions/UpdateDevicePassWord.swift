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

extension Iotvideoindustry {
    /// UpdateDevicePassWord请求参数结构体
    public struct UpdateDevicePassWordRequest: TCRequestModel {
        /// 设备密码
        public let passWord: String

        /// 设备唯一标识
        public let deviceId: String

        public init(passWord: String, deviceId: String) {
            self.passWord = passWord
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case passWord = "PassWord"
            case deviceId = "DeviceId"
        }
    }

    /// UpdateDevicePassWord返回参数结构体
    public struct UpdateDevicePassWordResponse: TCResponseModel {
        /// 操作结果，“OK”表示成功，其他表示失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 修改设备密码
    ///
    /// 本接口(UpdateDevicePassWord)用于修改设备密码。
    @inlinable
    public func updateDevicePassWord(_ input: UpdateDevicePassWordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicePassWordResponse> {
        self.client.execute(action: "UpdateDevicePassWord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改设备密码
    ///
    /// 本接口(UpdateDevicePassWord)用于修改设备密码。
    @inlinable
    public func updateDevicePassWord(_ input: UpdateDevicePassWordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicePassWordResponse {
        try await self.client.execute(action: "UpdateDevicePassWord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改设备密码
    ///
    /// 本接口(UpdateDevicePassWord)用于修改设备密码。
    @inlinable
    public func updateDevicePassWord(passWord: String, deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicePassWordResponse> {
        self.updateDevicePassWord(.init(passWord: passWord, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改设备密码
    ///
    /// 本接口(UpdateDevicePassWord)用于修改设备密码。
    @inlinable
    public func updateDevicePassWord(passWord: String, deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDevicePassWordResponse {
        try await self.updateDevicePassWord(.init(passWord: passWord, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
