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

extension Iotvideoindustry {
    /// ModifyBindSceneDevice请求参数结构体
    public struct ModifyBindSceneDeviceRequest: TCRequestModel {
        /// 场景ID
        public let sceneId: Int64

        /// 1: 绑定 2: 解绑
        public let type: Int64

        /// 设备列表
        public let devices: [DeviceItem]

        public init(sceneId: Int64, type: Int64, devices: [DeviceItem]) {
            self.sceneId = sceneId
            self.type = type
            self.devices = devices
        }

        enum CodingKeys: String, CodingKey {
            case sceneId = "SceneId"
            case type = "Type"
            case devices = "Devices"
        }
    }

    /// ModifyBindSceneDevice返回参数结构体
    public struct ModifyBindSceneDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 场景绑定解绑通道接口(旧)
    ///
    /// 场景绑定/解绑通道接口
    @inlinable @discardableResult
    public func modifyBindSceneDevice(_ input: ModifyBindSceneDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBindSceneDeviceResponse> {
        self.client.execute(action: "ModifyBindSceneDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 场景绑定解绑通道接口(旧)
    ///
    /// 场景绑定/解绑通道接口
    @inlinable @discardableResult
    public func modifyBindSceneDevice(_ input: ModifyBindSceneDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBindSceneDeviceResponse {
        try await self.client.execute(action: "ModifyBindSceneDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 场景绑定解绑通道接口(旧)
    ///
    /// 场景绑定/解绑通道接口
    @inlinable @discardableResult
    public func modifyBindSceneDevice(sceneId: Int64, type: Int64, devices: [DeviceItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBindSceneDeviceResponse> {
        self.modifyBindSceneDevice(ModifyBindSceneDeviceRequest(sceneId: sceneId, type: type, devices: devices), region: region, logger: logger, on: eventLoop)
    }

    /// 场景绑定解绑通道接口(旧)
    ///
    /// 场景绑定/解绑通道接口
    @inlinable @discardableResult
    public func modifyBindSceneDevice(sceneId: Int64, type: Int64, devices: [DeviceItem], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBindSceneDeviceResponse {
        try await self.modifyBindSceneDevice(ModifyBindSceneDeviceRequest(sceneId: sceneId, type: type, devices: devices), region: region, logger: logger, on: eventLoop)
    }
}
