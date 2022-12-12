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
    /// ModifyNodePoolInstanceTypes请求参数结构体
    public struct ModifyNodePoolInstanceTypesRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String
        
        /// 节点池id
        public let nodePoolId: String
        
        /// 机型列表
        public let instanceTypes: [String]
        
        public init (clusterId: String, nodePoolId: String, instanceTypes: [String]) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.instanceTypes = instanceTypes
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case instanceTypes = "InstanceTypes"
        }
    }
    
    /// ModifyNodePoolInstanceTypes返回参数结构体
    public struct ModifyNodePoolInstanceTypesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改节点池的机型配置
    @inlinable
    public func modifyNodePoolInstanceTypes(_ input: ModifyNodePoolInstanceTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyNodePoolInstanceTypesResponse > {
        self.client.execute(action: "ModifyNodePoolInstanceTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改节点池的机型配置
    @inlinable
    public func modifyNodePoolInstanceTypes(_ input: ModifyNodePoolInstanceTypesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNodePoolInstanceTypesResponse {
        try await self.client.execute(action: "ModifyNodePoolInstanceTypes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
