//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iecp {
    /// 修改设备信息
    ///
    /// 修改设备信息
    @inlinable
    public func modifyIotDevice(_ input: ModifyIotDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyIotDeviceResponse > {
        self.client.execute(action: "ModifyIotDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改设备信息
    ///
    /// 修改设备信息
    @inlinable
    public func modifyIotDevice(_ input: ModifyIotDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyIotDeviceResponse {
        try await self.client.execute(action: "ModifyIotDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyIotDevice请求参数结构体
    public struct ModifyIotDeviceRequest: TCRequestModel {
        /// 设备id
        public let deviceId: Int64
        
        /// 描述
        public let description: String?
        
        /// 设备是否开启
        public let disabled: Bool?
        
        /// 日志设置
        public let logSetting: Int64?
        
        /// 日志级别
        public let logLevel: Int64?
        
        public init (deviceId: Int64, description: String?, disabled: Bool?, logSetting: Int64?, logLevel: Int64?) {
            self.deviceId = deviceId
            self.description = description
            self.disabled = disabled
            self.logSetting = logSetting
            self.logLevel = logLevel
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case description = "Description"
            case disabled = "Disabled"
            case logSetting = "LogSetting"
            case logLevel = "LogLevel"
        }
    }
    
    /// ModifyIotDevice返回参数结构体
    public struct ModifyIotDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}