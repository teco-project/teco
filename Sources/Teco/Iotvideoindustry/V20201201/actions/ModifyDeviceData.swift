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

extension Iotvideoindustry {
    /// ModifyDeviceData请求参数结构体
    public struct ModifyDeviceDataRequest: TCRequest {
        /// 设备唯一标识
        public let deviceId: String

        /// 设备名称
        public let nickName: String

        public init(deviceId: String, nickName: String) {
            self.deviceId = deviceId
            self.nickName = nickName
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case nickName = "NickName"
        }
    }

    /// ModifyDeviceData返回参数结构体
    public struct ModifyDeviceDataResponse: TCResponse {
        /// 操作结果,“OK”表示成功，其他表示失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 编辑设备信息
    ///
    /// 本接口(ModifyDeviceData)用于编辑设备信息。
    @inlinable
    public func modifyDeviceData(_ input: ModifyDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDeviceDataResponse> {
        self.client.execute(action: "ModifyDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑设备信息
    ///
    /// 本接口(ModifyDeviceData)用于编辑设备信息。
    @inlinable
    public func modifyDeviceData(_ input: ModifyDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceDataResponse {
        try await self.client.execute(action: "ModifyDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑设备信息
    ///
    /// 本接口(ModifyDeviceData)用于编辑设备信息。
    @inlinable
    public func modifyDeviceData(deviceId: String, nickName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDeviceDataResponse> {
        self.modifyDeviceData(.init(deviceId: deviceId, nickName: nickName), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑设备信息
    ///
    /// 本接口(ModifyDeviceData)用于编辑设备信息。
    @inlinable
    public func modifyDeviceData(deviceId: String, nickName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceDataResponse {
        try await self.modifyDeviceData(.init(deviceId: deviceId, nickName: nickName), region: region, logger: logger, on: eventLoop)
    }
}
