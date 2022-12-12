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

extension Cdwch {
    /// ModifyClusterConfigs请求参数结构体
    public struct ModifyClusterConfigsRequest: TCRequestModel {
        /// 集群ID，例如cdwch-xxxx
        public let instanceId: String
        
        /// 配置文件修改信息
        public let modifyConfContext: [ConfigSubmitContext]
        
        /// 修改原因
        public let remark: String?
        
        public init (instanceId: String, modifyConfContext: [ConfigSubmitContext], remark: String? = nil) {
            self.instanceId = instanceId
            self.modifyConfContext = modifyConfContext
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case modifyConfContext = "ModifyConfContext"
            case remark = "Remark"
        }
    }
    
    /// ModifyClusterConfigs返回参数结构体
    public struct ModifyClusterConfigsResponse: TCResponseModel {
        /// 流程相关信息
        public let flowId: Int64
        
        /// 错误信息
        public let errorMsg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case errorMsg = "ErrorMsg"
            case requestId = "RequestId"
        }
    }
    
    /// 修改集群配置文件接口
    ///
    /// 在集群配置页面修改集群配置文件接口，xml模式
    @inlinable
    public func modifyClusterConfigs(_ input: ModifyClusterConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClusterConfigsResponse > {
        self.client.execute(action: "ModifyClusterConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改集群配置文件接口
    ///
    /// 在集群配置页面修改集群配置文件接口，xml模式
    @inlinable
    public func modifyClusterConfigs(_ input: ModifyClusterConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterConfigsResponse {
        try await self.client.execute(action: "ModifyClusterConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
