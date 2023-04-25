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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotcloud {
    /// DeleteDeviceResource请求参数结构体
    public struct DeleteDeviceResourceRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 资源名称
        public let name: String

        /// 设备名称
        public let deviceName: String

        public init(productID: String, name: String, deviceName: String) {
            self.productID = productID
            self.name = name
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case name = "Name"
            case deviceName = "DeviceName"
        }
    }

    /// DeleteDeviceResource返回参数结构体
    public struct DeleteDeviceResourceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除设备资源
    ///
    /// 本接口（DeleteDeviceResource）用于删除设备资源
    @inlinable @discardableResult
    public func deleteDeviceResource(_ input: DeleteDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResourceResponse> {
        self.client.execute(action: "DeleteDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除设备资源
    ///
    /// 本接口（DeleteDeviceResource）用于删除设备资源
    @inlinable @discardableResult
    public func deleteDeviceResource(_ input: DeleteDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResourceResponse {
        try await self.client.execute(action: "DeleteDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除设备资源
    ///
    /// 本接口（DeleteDeviceResource）用于删除设备资源
    @inlinable @discardableResult
    public func deleteDeviceResource(productID: String, name: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResourceResponse> {
        self.deleteDeviceResource(.init(productID: productID, name: name, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除设备资源
    ///
    /// 本接口（DeleteDeviceResource）用于删除设备资源
    @inlinable @discardableResult
    public func deleteDeviceResource(productID: String, name: String, deviceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResourceResponse {
        try await self.deleteDeviceResource(.init(productID: productID, name: name, deviceName: deviceName), region: region, logger: logger, on: eventLoop)
    }
}
