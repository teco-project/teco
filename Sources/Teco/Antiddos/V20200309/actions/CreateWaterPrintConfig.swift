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

extension Antiddos {
    /// 添加DDoS防护的水印防护配置
    @inlinable
    public func createWaterPrintConfig(_ input: CreateWaterPrintConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateWaterPrintConfigResponse > {
        self.client.execute(action: "CreateWaterPrintConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加DDoS防护的水印防护配置
    @inlinable
    public func createWaterPrintConfig(_ input: CreateWaterPrintConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWaterPrintConfigResponse {
        try await self.client.execute(action: "CreateWaterPrintConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateWaterPrintConfig请求参数结构体
    public struct CreateWaterPrintConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String
        
        /// 水印防护配置
        public let waterPrintConfig: WaterPrintConfig
        
        public init (instanceId: String, waterPrintConfig: WaterPrintConfig) {
            self.instanceId = instanceId
            self.waterPrintConfig = waterPrintConfig
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case waterPrintConfig = "WaterPrintConfig"
        }
    }
    
    /// CreateWaterPrintConfig返回参数结构体
    public struct CreateWaterPrintConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
