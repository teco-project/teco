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

extension Iotcloud {
    /// UnbindDevices请求参数结构体
    public struct UnbindDevicesRequest: TCRequestModel {
        /// 网关设备的产品ID
        public let gatewayProductId: String
        
        /// 网关设备的设备名
        public let gatewayDeviceName: String
        
        /// 产品ID
        public let productId: String
        
        /// 多个设备名
        public let deviceNames: [String]
        
        /// 中兴CLAA设备的解绑需要Skey，普通设备不需要
        public let skey: String?
        
        public init (gatewayProductId: String, gatewayDeviceName: String, productId: String, deviceNames: [String], skey: String? = nil) {
            self.gatewayProductId = gatewayProductId
            self.gatewayDeviceName = gatewayDeviceName
            self.productId = productId
            self.deviceNames = deviceNames
            self.skey = skey
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case gatewayDeviceName = "GatewayDeviceName"
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
            case skey = "Skey"
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
    ///
    /// 本接口（UnbindDevices）用于网关设备批量解绑子设备 
    @inlinable
    public func unbindDevices(_ input: UnbindDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindDevicesResponse > {
        self.client.execute(action: "UnbindDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量解绑子设备
    ///
    /// 本接口（UnbindDevices）用于网关设备批量解绑子设备 
    @inlinable
    public func unbindDevices(_ input: UnbindDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindDevicesResponse {
        try await self.client.execute(action: "UnbindDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
