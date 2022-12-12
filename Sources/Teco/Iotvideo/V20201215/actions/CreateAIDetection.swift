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
    /// CreateAIDetection请求参数结构体
    public struct CreateAIDetectionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// AI模型ID
        public let modelId: String
        
        /// 图片上传的开始时间
        public let startTime: UInt64
        
        /// 图片上传的结束时间
        public let endTime: UInt64
        
        public init (productId: String, deviceName: String, modelId: String, startTime: UInt64, endTime: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.modelId = modelId
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case modelId = "ModelId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// CreateAIDetection返回参数结构体
    public struct CreateAIDetectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 发起AI推理请求
    @inlinable
    public func createAIDetection(_ input: CreateAIDetectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAIDetectionResponse > {
        self.client.execute(action: "CreateAIDetection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发起AI推理请求
    @inlinable
    public func createAIDetection(_ input: CreateAIDetectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAIDetectionResponse {
        try await self.client.execute(action: "CreateAIDetection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
