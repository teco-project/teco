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

extension Monitor {
    /// UpdateDNSConfig请求参数结构体
    public struct UpdateDNSConfigRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// DNS 数组
        public let nameServers: [String]
        
        public init (instanceId: String, nameServers: [String]) {
            self.instanceId = instanceId
            self.nameServers = nameServers
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case nameServers = "NameServers"
        }
    }
    
    /// UpdateDNSConfig返回参数结构体
    public struct UpdateDNSConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新 Grafana 的 DNS 配置
    @inlinable
    public func updateDNSConfig(_ input: UpdateDNSConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateDNSConfigResponse > {
        self.client.execute(action: "UpdateDNSConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新 Grafana 的 DNS 配置
    @inlinable
    public func updateDNSConfig(_ input: UpdateDNSConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDNSConfigResponse {
        try await self.client.execute(action: "UpdateDNSConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
