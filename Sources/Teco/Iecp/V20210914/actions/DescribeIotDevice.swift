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

extension Iecp {
    /// DescribeIotDevice请求参数结构体
    public struct DescribeIotDeviceRequest: TCRequestModel {
        /// 设备id，传0值表示此参数无效
        public let deviceId: Int64?
        
        /// 无
        public let productID: String?
        
        /// 无
        public let deviceName: String?
        
        public init (deviceId: Int64? = nil, productID: String? = nil, deviceName: String? = nil) {
            self.deviceId = deviceId
            self.productID = productID
            self.deviceName = deviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case productID = "ProductID"
            case deviceName = "DeviceName"
        }
    }
    
    /// DescribeIotDevice返回参数结构体
    public struct DescribeIotDeviceResponse: TCResponseModel {
        /// 设备id
        public let id: Int64
        
        /// 设备名称
        public let name: String
        
        /// 版本号
        public let version: String
        
        /// ssl证书
        public let cert: String
        
        /// ssl私钥
        public let privateKey: String
        
        /// psk认证密钥
        public let psk: String
        
        /// 设备是否打开
        public let disabled: Bool
        
        /// 设备日志
        public let logSetting: Int64
        
        /// 设备日志级别
        public let logLevel: Int64
        
        /// mqtt参数
        public let userName: String
        
        /// mqtt参数
        public let password: String
        
        /// mqtt参数
        public let clientID: String
        
        /// 16进制的psk格式
        public let pskHex: String
        
        /// 描述
        public let description: String
        
        /// 设备在线状态
        public let status: Int64
        
        /// 无
        public let region: String
        
        /// 无
        public let unitID: Int64
        
        /// 无
        public let unitName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case version = "Version"
            case cert = "Cert"
            case privateKey = "PrivateKey"
            case psk = "Psk"
            case disabled = "Disabled"
            case logSetting = "LogSetting"
            case logLevel = "LogLevel"
            case userName = "UserName"
            case password = "Password"
            case clientID = "ClientID"
            case pskHex = "PskHex"
            case description = "Description"
            case status = "Status"
            case region = "Region"
            case unitID = "UnitID"
            case unitName = "UnitName"
            case requestId = "RequestId"
        }
    }
    
    /// 获取设备信息
    @inlinable
    public func describeIotDevice(_ input: DescribeIotDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIotDeviceResponse > {
        self.client.execute(action: "DescribeIotDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备信息
    @inlinable
    public func describeIotDevice(_ input: DescribeIotDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotDeviceResponse {
        try await self.client.execute(action: "DescribeIotDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
