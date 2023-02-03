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
    /// CreateDevice请求参数结构体
    public struct CreateDeviceRequest: TCRequestModel {
        /// 产品 ID 。创建产品时腾讯云为用户分配全局唯一的 ID
        public let productId: String

        /// 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        public let deviceName: String

        /// 设备属性
        public let attribute: Attribute?

        /// 是否使用自定义PSK，默认不使用
        public let definedPsk: String?

        /// 运营商类型，当产品是NB-IoT产品时，此字段必填。1表示中国电信，2表示中国移动，3表示中国联通
        public let isp: UInt64?

        /// IMEI，当产品是NB-IoT产品时，此字段必填
        public let imei: String?

        /// LoRa设备的DevEui，当创建LoRa时，此字段必填
        public let loraDevEui: String?

        /// LoRa设备的MoteType
        public let loraMoteType: UInt64?

        /// 创建LoRa设备需要skey
        public let skey: String?

        /// LoRa设备的AppKey
        public let loraAppKey: String?

        /// 私有CA创建的设备证书
        public let tlsCrt: String?

        public init(productId: String, deviceName: String, attribute: Attribute? = nil, definedPsk: String? = nil, isp: UInt64? = nil, imei: String? = nil, loraDevEui: String? = nil, loraMoteType: UInt64? = nil, skey: String? = nil, loraAppKey: String? = nil, tlsCrt: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.attribute = attribute
            self.definedPsk = definedPsk
            self.isp = isp
            self.imei = imei
            self.loraDevEui = loraDevEui
            self.loraMoteType = loraMoteType
            self.skey = skey
            self.loraAppKey = loraAppKey
            self.tlsCrt = tlsCrt
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case attribute = "Attribute"
            case definedPsk = "DefinedPsk"
            case isp = "Isp"
            case imei = "Imei"
            case loraDevEui = "LoraDevEui"
            case loraMoteType = "LoraMoteType"
            case skey = "Skey"
            case loraAppKey = "LoraAppKey"
            case tlsCrt = "TlsCrt"
        }
    }

    /// CreateDevice返回参数结构体
    public struct CreateDeviceResponse: TCResponseModel {
        /// 设备名称
        public let deviceName: String

        /// 对称加密密钥，base64编码。采用对称加密时返回该参数
        public let devicePsk: String

        /// 设备证书，用于 TLS 建立链接时校验客户端身份。采用非对称加密时返回该参数
        public let deviceCert: String

        /// 设备私钥，用于 TLS 建立链接时校验客户端身份，腾讯云后台不保存，请妥善保管。采用非对称加密时返回该参数
        public let devicePrivateKey: String

        /// LoRa设备的DevEui，当设备是LoRa设备时，会返回该字段
        public let loraDevEui: String

        /// LoRa设备的MoteType，当设备是LoRa设备时，会返回该字段
        public let loraMoteType: UInt64

        /// LoRa设备的AppKey，当设备是LoRa设备时，会返回该字段
        public let loraAppKey: String

        /// LoRa设备的NwkKey，当设备是LoRa设备时，会返回该字段
        public let loraNwkKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case devicePsk = "DevicePsk"
            case deviceCert = "DeviceCert"
            case devicePrivateKey = "DevicePrivateKey"
            case loraDevEui = "LoraDevEui"
            case loraMoteType = "LoraMoteType"
            case loraAppKey = "LoraAppKey"
            case loraNwkKey = "LoraNwkKey"
            case requestId = "RequestId"
        }
    }

    /// 创建设备
    ///
    /// 本接口（CreateDevice）用于新建一个物联网通信设备。
    @inlinable
    public func createDevice(_ input: CreateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        self.client.execute(action: "CreateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建设备
    ///
    /// 本接口（CreateDevice）用于新建一个物联网通信设备。
    @inlinable
    public func createDevice(_ input: CreateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceResponse {
        try await self.client.execute(action: "CreateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建设备
    ///
    /// 本接口（CreateDevice）用于新建一个物联网通信设备。
    @inlinable
    public func createDevice(productId: String, deviceName: String, attribute: Attribute? = nil, definedPsk: String? = nil, isp: UInt64? = nil, imei: String? = nil, loraDevEui: String? = nil, loraMoteType: UInt64? = nil, skey: String? = nil, loraAppKey: String? = nil, tlsCrt: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        let input = CreateDeviceRequest(productId: productId, deviceName: deviceName, attribute: attribute, definedPsk: definedPsk, isp: isp, imei: imei, loraDevEui: loraDevEui, loraMoteType: loraMoteType, skey: skey, loraAppKey: loraAppKey, tlsCrt: tlsCrt)
        return self.client.execute(action: "CreateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建设备
    ///
    /// 本接口（CreateDevice）用于新建一个物联网通信设备。
    @inlinable
    public func createDevice(productId: String, deviceName: String, attribute: Attribute? = nil, definedPsk: String? = nil, isp: UInt64? = nil, imei: String? = nil, loraDevEui: String? = nil, loraMoteType: UInt64? = nil, skey: String? = nil, loraAppKey: String? = nil, tlsCrt: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceResponse {
        let input = CreateDeviceRequest(productId: productId, deviceName: deviceName, attribute: attribute, definedPsk: definedPsk, isp: isp, imei: imei, loraDevEui: loraDevEui, loraMoteType: loraMoteType, skey: skey, loraAppKey: loraAppKey, tlsCrt: tlsCrt)
        return try await self.client.execute(action: "CreateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
