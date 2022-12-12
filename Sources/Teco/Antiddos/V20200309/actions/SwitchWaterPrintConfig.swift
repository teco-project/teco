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
    /// SwitchWaterPrintConfig请求参数结构体
    public struct SwitchWaterPrintConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String
        
        /// 水印开启/关闭状态，1表示开启；0表示关闭
        public let openStatus: Int64
        
        public init (instanceId: String, openStatus: Int64) {
            self.instanceId = instanceId
            self.openStatus = openStatus
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case openStatus = "OpenStatus"
        }
    }
    
    /// SwitchWaterPrintConfig返回参数结构体
    public struct SwitchWaterPrintConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 开启或关闭DDoS防护的水印防护配置
    @inlinable
    public func switchWaterPrintConfig(_ input: SwitchWaterPrintConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SwitchWaterPrintConfigResponse > {
        self.client.execute(action: "SwitchWaterPrintConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 开启或关闭DDoS防护的水印防护配置
    @inlinable
    public func switchWaterPrintConfig(_ input: SwitchWaterPrintConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchWaterPrintConfigResponse {
        try await self.client.execute(action: "SwitchWaterPrintConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
