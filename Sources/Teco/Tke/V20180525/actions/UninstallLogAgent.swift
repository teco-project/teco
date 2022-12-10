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
    /// 卸载日志采集组件
    ///
    /// 从TKE集群中卸载CLS日志采集组件
    @inlinable
    public func uninstallLogAgent(_ input: UninstallLogAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UninstallLogAgentResponse > {
        self.client.execute(action: "UninstallLogAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 卸载日志采集组件
    ///
    /// 从TKE集群中卸载CLS日志采集组件
    @inlinable
    public func uninstallLogAgent(_ input: UninstallLogAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UninstallLogAgentResponse {
        try await self.client.execute(action: "UninstallLogAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UninstallLogAgent请求参数结构体
    public struct UninstallLogAgentRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// UninstallLogAgent返回参数结构体
    public struct UninstallLogAgentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
