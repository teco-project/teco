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

extension Iot {
    /// DeleteDevice请求参数结构体
    public struct DeleteDeviceRequest: TCRequest {
        /// 产品Id
        public let productId: String

        /// 设备名称
        public let deviceName: String

        public init(productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }

    /// DeleteDevice返回参数结构体
    public struct DeleteDeviceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除设备
    ///
    /// 提供在指定的产品Id下删除一个设备的能力。
    @inlinable @discardableResult
    public func deleteDevice(_ input: DeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        self.client.execute(action: "DeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 提供在指定的产品Id下删除一个设备的能力。
    @inlinable @discardableResult
    public func deleteDevice(_ input: DeleteDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        try await self.client.execute(action: "DeleteDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除设备
    ///
    /// 提供在指定的产品Id下删除一个设备的能力。
    @inlinable @discardableResult
    public func deleteDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        self.deleteDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除设备
    ///
    /// 提供在指定的产品Id下删除一个设备的能力。
    @inlinable @discardableResult
    public func deleteDevice(productId: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        try await self.deleteDevice(.init(productId: productId, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
