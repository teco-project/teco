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
    /// 获取lora设备详情
    ///
    /// 获取lora类型设备的详细信息 
    @inlinable
    public func describeLoraDevice(_ input: DescribeLoraDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLoraDeviceResponse > {
        self.client.execute(action: "DescribeLoraDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取lora设备详情
    ///
    /// 获取lora类型设备的详细信息 
    @inlinable
    public func describeLoraDevice(_ input: DescribeLoraDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoraDeviceResponse {
        try await self.client.execute(action: "DescribeLoraDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLoraDevice请求参数结构体
    public struct DescribeLoraDeviceRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        public init (productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }
    
    /// DescribeLoraDevice返回参数结构体
    public struct DescribeLoraDeviceResponse: TCResponseModel {
        /// 设备名称
        public let deviceName: String
        
        /// LoRa应用UUID
        public let appEui: String
        
        /// LoRa设备UUID
        public let deviceEui: String
        
        /// LoRa应用密钥
        public let appKey: String
        
        /// 设备类型,目前支持A、B、C三种
        public let classType: String
        
        /// 设备所属产品id
        public let productId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case appEui = "AppEui"
            case deviceEui = "DeviceEui"
            case appKey = "AppKey"
            case classType = "ClassType"
            case productId = "ProductId"
            case requestId = "RequestId"
        }
    }
}
