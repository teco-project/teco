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

extension Iotcloud {
    /// UpdateDeviceShadow请求参数结构体
    public struct UpdateDeviceShadowRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 虚拟设备的状态，JSON字符串格式，由desired结构组成
        public let state: String

        /// 当前版本号，需要和后台的version保持一致，才能更新成功
        public let shadowVersion: UInt64

        public init(productId: String, deviceName: String, state: String, shadowVersion: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.state = state
            self.shadowVersion = shadowVersion
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case state = "State"
            case shadowVersion = "ShadowVersion"
        }
    }

    /// UpdateDeviceShadow返回参数结构体
    public struct UpdateDeviceShadowResponse: TCResponseModel {
        /// 设备影子数据，JSON字符串格式
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 更新设备影子
    ///
    /// 本接口（UpdateDeviceShadow）用于更新虚拟设备信息。
    @inlinable
    public func updateDeviceShadow(_ input: UpdateDeviceShadowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceShadowResponse> {
        self.client.execute(action: "UpdateDeviceShadow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新设备影子
    ///
    /// 本接口（UpdateDeviceShadow）用于更新虚拟设备信息。
    @inlinable
    public func updateDeviceShadow(_ input: UpdateDeviceShadowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceShadowResponse {
        try await self.client.execute(action: "UpdateDeviceShadow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新设备影子
    ///
    /// 本接口（UpdateDeviceShadow）用于更新虚拟设备信息。
    @inlinable
    public func updateDeviceShadow(productId: String, deviceName: String, state: String, shadowVersion: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceShadowResponse> {
        self.updateDeviceShadow(.init(productId: productId, deviceName: deviceName, state: state, shadowVersion: shadowVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 更新设备影子
    ///
    /// 本接口（UpdateDeviceShadow）用于更新虚拟设备信息。
    @inlinable
    public func updateDeviceShadow(productId: String, deviceName: String, state: String, shadowVersion: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceShadowResponse {
        try await self.updateDeviceShadow(.init(productId: productId, deviceName: deviceName, state: state, shadowVersion: shadowVersion), region: region, logger: logger, on: eventLoop)
    }
}
