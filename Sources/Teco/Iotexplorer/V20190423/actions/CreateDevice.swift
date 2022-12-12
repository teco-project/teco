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
    /// CreateDevice请求参数结构体
    public struct CreateDeviceRequest: TCRequestModel {
        /// 产品ID。
        public let productId: String
        
        /// 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        public let deviceName: String
        
        /// LoRaWAN 设备地址
        public let devAddr: String?
        
        /// LoRaWAN 应用密钥
        public let appKey: String?
        
        /// LoRaWAN 设备唯一标识
        public let devEUI: String?
        
        /// LoRaWAN 应用会话密钥
        public let appSKey: String?
        
        /// LoRaWAN 网络会话密钥
        public let nwkSKey: String?
        
        /// 手动指定设备的PSK密钥
        public let definedPsk: String?
        
        public init (productId: String, deviceName: String, devAddr: String? = nil, appKey: String? = nil, devEUI: String? = nil, appSKey: String? = nil, nwkSKey: String? = nil, definedPsk: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.devAddr = devAddr
            self.appKey = appKey
            self.devEUI = devEUI
            self.appSKey = appSKey
            self.nwkSKey = nwkSKey
            self.definedPsk = definedPsk
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case devAddr = "DevAddr"
            case appKey = "AppKey"
            case devEUI = "DevEUI"
            case appSKey = "AppSKey"
            case nwkSKey = "NwkSKey"
            case definedPsk = "DefinedPsk"
        }
    }
    
    /// CreateDevice返回参数结构体
    public struct CreateDeviceResponse: TCResponseModel {
        /// 设备参数描述。
        public let data: DeviceData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 创建设备
    @inlinable
    public func createDevice(_ input: CreateDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDeviceResponse > {
        self.client.execute(action: "CreateDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建设备
    @inlinable
    public func createDevice(_ input: CreateDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceResponse {
        try await self.client.execute(action: "CreateDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
