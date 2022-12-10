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

extension Monitor {
    /// 更新 Grafana 配置
    ///
    /// 更新 Grafana 配置
    @inlinable
    public func updateGrafanaConfig(_ input: UpdateGrafanaConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateGrafanaConfigResponse > {
        self.client.execute(action: "UpdateGrafanaConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新 Grafana 配置
    ///
    /// 更新 Grafana 配置
    @inlinable
    public func updateGrafanaConfig(_ input: UpdateGrafanaConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaConfigResponse {
        try await self.client.execute(action: "UpdateGrafanaConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateGrafanaConfig请求参数结构体
    public struct UpdateGrafanaConfigRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// JSON 编码后的字符串
        public let config: String
        
        public init (instanceId: String, config: String) {
            self.instanceId = instanceId
            self.config = config
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case config = "Config"
        }
    }
    
    /// UpdateGrafanaConfig返回参数结构体
    public struct UpdateGrafanaConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}