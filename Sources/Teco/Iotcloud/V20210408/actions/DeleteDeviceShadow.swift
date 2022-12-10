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
    /// 删除设备影子
    ///
    /// 本接口（DeleteDeviceShadow）用于删除设备影子 
    @inlinable
    public func deleteDeviceShadow(_ input: DeleteDeviceShadowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDeviceShadowResponse > {
        self.client.execute(action: "DeleteDeviceShadow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除设备影子
    ///
    /// 本接口（DeleteDeviceShadow）用于删除设备影子 
    @inlinable
    public func deleteDeviceShadow(_ input: DeleteDeviceShadowRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceShadowResponse {
        try await self.client.execute(action: "DeleteDeviceShadow", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteDeviceShadow请求参数结构体
    public struct DeleteDeviceShadowRequest: TCRequestModel {
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
    
    /// DeleteDeviceShadow返回参数结构体
    public struct DeleteDeviceShadowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
