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
    /// UninstallEdgeLogAgent请求参数结构体
    public struct UninstallEdgeLogAgentRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// UninstallEdgeLogAgent返回参数结构体
    public struct UninstallEdgeLogAgentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 卸载边缘日志采集组件
    ///
    /// 从tke@edge集群边缘节点上卸载日志采集组件
    @inlinable
    public func uninstallEdgeLogAgent(_ input: UninstallEdgeLogAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UninstallEdgeLogAgentResponse > {
        self.client.execute(action: "UninstallEdgeLogAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 卸载边缘日志采集组件
    ///
    /// 从tke@edge集群边缘节点上卸载日志采集组件
    @inlinable
    public func uninstallEdgeLogAgent(_ input: UninstallEdgeLogAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UninstallEdgeLogAgentResponse {
        try await self.client.execute(action: "UninstallEdgeLogAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
