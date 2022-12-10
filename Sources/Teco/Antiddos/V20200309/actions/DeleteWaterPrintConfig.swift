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

extension Antiddos {
    /// 删除DDoS防护的水印防护配置
    ///
    /// 删除DDoS防护的水印防护配置
    @inlinable
    public func deleteWaterPrintConfig(_ input: DeleteWaterPrintConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteWaterPrintConfigResponse > {
        self.client.execute(action: "DeleteWaterPrintConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除DDoS防护的水印防护配置
    ///
    /// 删除DDoS防护的水印防护配置
    @inlinable
    public func deleteWaterPrintConfig(_ input: DeleteWaterPrintConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWaterPrintConfigResponse {
        try await self.client.execute(action: "DeleteWaterPrintConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteWaterPrintConfig请求参数结构体
    public struct DeleteWaterPrintConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DeleteWaterPrintConfig返回参数结构体
    public struct DeleteWaterPrintConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}