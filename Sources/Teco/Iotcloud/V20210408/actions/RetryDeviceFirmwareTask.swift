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
    /// RetryDeviceFirmwareTask请求参数结构体
    public struct RetryDeviceFirmwareTaskRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 固件版本号
        public let firmwareVersion: String
        
        /// 固件升级任务ID
        public let taskId: UInt64
        
        public init (productId: String, deviceName: String, firmwareVersion: String, taskId: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.firmwareVersion = firmwareVersion
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case firmwareVersion = "FirmwareVersion"
            case taskId = "TaskId"
        }
    }
    
    /// RetryDeviceFirmwareTask返回参数结构体
    public struct RetryDeviceFirmwareTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 重试设备升级任务
    @inlinable
    public func retryDeviceFirmwareTask(_ input: RetryDeviceFirmwareTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RetryDeviceFirmwareTaskResponse > {
        self.client.execute(action: "RetryDeviceFirmwareTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重试设备升级任务
    @inlinable
    public func retryDeviceFirmwareTask(_ input: RetryDeviceFirmwareTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryDeviceFirmwareTaskResponse {
        try await self.client.execute(action: "RetryDeviceFirmwareTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
