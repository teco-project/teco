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

extension Iotvideo {
    /// DescribeDevice请求参数结构体
    public struct DescribeDeviceRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名
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
    
    /// DescribeDevice返回参数结构体
    public struct DescribeDeviceResponse: TCResponseModel {
        /// 设备名
        public let deviceName: String
        
        /// 设备是否在线，0不在线，1在线，2获取失败，3未激活
        public let online: UInt64
        
        /// 设备最后上线时间
        public let loginTime: UInt64
        
        /// 设备密钥
        public let devicePsk: String
        
        /// 设备启用状态
        public let enableState: UInt64
        
        /// 设备过期时间
        public let expireTime: UInt64
        
        /// 设备的sdk日志等级，0：关闭，1：错误，2：告警，3：信息，4：调试
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logLevel: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case online = "Online"
            case loginTime = "LoginTime"
            case devicePsk = "DevicePsk"
            case enableState = "EnableState"
            case expireTime = "ExpireTime"
            case logLevel = "LogLevel"
            case requestId = "RequestId"
        }
    }
    
    /// 查看设备详情
    @inlinable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceResponse > {
        self.client.execute(action: "DescribeDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看设备详情
    @inlinable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResponse {
        try await self.client.execute(action: "DescribeDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
