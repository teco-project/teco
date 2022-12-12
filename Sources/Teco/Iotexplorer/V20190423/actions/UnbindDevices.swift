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

extension Iotexplorer {
    /// UnbindDevices请求参数结构体
    public struct UnbindDevicesRequest: TCRequestModel {
        /// 网关设备的产品ID
        public let gatewayProductId: String
        
        /// 网关设备的设备名
        public let gatewayDeviceName: String
        
        /// 产品ID
        public let productId: String
        
        /// 设备名列表
        public let deviceNames: [String]
        
        public init (gatewayProductId: String, gatewayDeviceName: String, productId: String, deviceNames: [String]) {
            self.gatewayProductId = gatewayProductId
            self.gatewayDeviceName = gatewayDeviceName
            self.productId = productId
            self.deviceNames = deviceNames
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case gatewayDeviceName = "GatewayDeviceName"
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
        }
    }
    
    /// UnbindDevices返回参数结构体
    public struct UnbindDevicesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 批量解绑子设备
    @inlinable
    public func unbindDevices(_ input: UnbindDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindDevicesResponse > {
        self.client.execute(action: "UnbindDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量解绑子设备
    @inlinable
    public func unbindDevices(_ input: UnbindDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindDevicesResponse {
        try await self.client.execute(action: "UnbindDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
