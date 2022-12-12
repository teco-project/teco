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
    /// UpdateDeviceLogLevel请求参数结构体
    public struct UpdateDeviceLogLevelRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 日志级别，0：关闭，1：错误，2：告警，3：信息，4：调试
        public let logLevel: UInt64
        
        public init (productId: String, deviceName: String, logLevel: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.logLevel = logLevel
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case logLevel = "LogLevel"
        }
    }
    
    /// UpdateDeviceLogLevel返回参数结构体
    public struct UpdateDeviceLogLevelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新设备日志级别
    ///
    /// 设置设备上报的日志级别  
    @inlinable
    public func updateDeviceLogLevel(_ input: UpdateDeviceLogLevelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateDeviceLogLevelResponse > {
        self.client.execute(action: "UpdateDeviceLogLevel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新设备日志级别
    ///
    /// 设置设备上报的日志级别  
    @inlinable
    public func updateDeviceLogLevel(_ input: UpdateDeviceLogLevelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceLogLevelResponse {
        try await self.client.execute(action: "UpdateDeviceLogLevel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
