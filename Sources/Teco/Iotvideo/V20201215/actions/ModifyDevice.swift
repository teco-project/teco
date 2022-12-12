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
    /// ModifyDevice请求参数结构体
    public struct ModifyDeviceRequest: TCRequestModel {
        /// 设备所属产品id
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 要设置的设备状态，1为启用，0为禁用
        public let enableState: UInt64?
        
        public init (productId: String, deviceName: String, enableState: UInt64? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.enableState = enableState
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case enableState = "EnableState"
        }
    }
    
    /// ModifyDevice返回参数结构体
    public struct ModifyDeviceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改设备信息
    @inlinable
    public func modifyDevice(_ input: ModifyDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDeviceResponse > {
        self.client.execute(action: "ModifyDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改设备信息
    @inlinable
    public func modifyDevice(_ input: ModifyDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDeviceResponse {
        try await self.client.execute(action: "ModifyDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
