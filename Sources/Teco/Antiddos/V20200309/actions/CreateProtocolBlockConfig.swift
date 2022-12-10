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
    /// 设置DDoS防护的协议封禁配置
    @inlinable
    public func createProtocolBlockConfig(_ input: CreateProtocolBlockConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateProtocolBlockConfigResponse > {
        self.client.execute(action: "CreateProtocolBlockConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置DDoS防护的协议封禁配置
    @inlinable
    public func createProtocolBlockConfig(_ input: CreateProtocolBlockConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProtocolBlockConfigResponse {
        try await self.client.execute(action: "CreateProtocolBlockConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateProtocolBlockConfig请求参数结构体
    public struct CreateProtocolBlockConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String
        
        /// 协议封禁配置
        public let protocolBlockConfig: ProtocolBlockConfig
        
        public init (instanceId: String, protocolBlockConfig: ProtocolBlockConfig) {
            self.instanceId = instanceId
            self.protocolBlockConfig = protocolBlockConfig
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case protocolBlockConfig = "ProtocolBlockConfig"
        }
    }
    
    /// CreateProtocolBlockConfig返回参数结构体
    public struct CreateProtocolBlockConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
