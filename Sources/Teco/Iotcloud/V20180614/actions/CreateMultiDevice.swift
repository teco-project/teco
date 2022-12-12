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
    /// CreateMultiDevice请求参数结构体
    public struct CreateMultiDeviceRequest: TCRequestModel {
        /// 产品 ID。创建产品时腾讯云为用户分配全局唯一的 ID
        public let productId: String
        
        /// 批量创建的设备名数组，单次最多创建 100 个设备。命名规则：[a-zA-Z0-9:_-]{1,48}
        public let deviceNames: [String]
        
        public init (productId: String, deviceNames: [String]) {
            self.productId = productId
            self.deviceNames = deviceNames
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
        }
    }
    
    /// CreateMultiDevice返回参数结构体
    public struct CreateMultiDeviceResponse: TCResponseModel {
        /// 任务ID，腾讯云生成全局唯一的任务 ID，有效期一个月，一个月之后任务失效。可以调用获取创建多设备任务状态接口获取该任务的执行状态，当状态为成功时，可以调用获取创建多设备任务结果接口获取该任务的结果
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建多个设备
    ///
    /// 本接口（CreateMultiDevice）用于批量创建物联云设备。
    @inlinable
    public func createMultiDevice(_ input: CreateMultiDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateMultiDeviceResponse > {
        self.client.execute(action: "CreateMultiDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建多个设备
    ///
    /// 本接口（CreateMultiDevice）用于批量创建物联云设备。
    @inlinable
    public func createMultiDevice(_ input: CreateMultiDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultiDeviceResponse {
        try await self.client.execute(action: "CreateMultiDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
