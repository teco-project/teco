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

extension Tke {
    /// CreateEdgeLogConfig请求参数结构体
    public struct CreateEdgeLogConfigRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 日志采集配置的json表达
        public let logConfig: String
        
        /// CLS日志集ID
        public let logsetId: String?
        
        public init (clusterId: String, logConfig: String, logsetId: String? = nil) {
            self.clusterId = clusterId
            self.logConfig = logConfig
            self.logsetId = logsetId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case logConfig = "LogConfig"
            case logsetId = "LogsetId"
        }
    }
    
    /// CreateEdgeLogConfig返回参数结构体
    public struct CreateEdgeLogConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建边缘集群日志采集配置
    @inlinable
    public func createEdgeLogConfig(_ input: CreateEdgeLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEdgeLogConfigResponse > {
        self.client.execute(action: "CreateEdgeLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建边缘集群日志采集配置
    @inlinable
    public func createEdgeLogConfig(_ input: CreateEdgeLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeLogConfigResponse {
        try await self.client.execute(action: "CreateEdgeLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
