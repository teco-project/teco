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
    /// ModifyClusterAsGroupAttribute请求参数结构体
    public struct ModifyClusterAsGroupAttributeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 集群关联的伸缩组属性
        public let clusterAsGroupAttribute: ClusterAsGroupAttribute?
        
        public init (clusterId: String, clusterAsGroupAttribute: ClusterAsGroupAttribute? = nil) {
            self.clusterId = clusterId
            self.clusterAsGroupAttribute = clusterAsGroupAttribute
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterAsGroupAttribute = "ClusterAsGroupAttribute"
        }
    }
    
    /// ModifyClusterAsGroupAttribute返回参数结构体
    public struct ModifyClusterAsGroupAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改集群伸缩组属性
    @inlinable
    public func modifyClusterAsGroupAttribute(_ input: ModifyClusterAsGroupAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClusterAsGroupAttributeResponse > {
        self.client.execute(action: "ModifyClusterAsGroupAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改集群伸缩组属性
    @inlinable
    public func modifyClusterAsGroupAttribute(_ input: ModifyClusterAsGroupAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterAsGroupAttributeResponse {
        try await self.client.execute(action: "ModifyClusterAsGroupAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
