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

extension Cynosdb {
    /// 下线集群
    @inlinable
    public func offlineCluster(_ input: OfflineClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < OfflineClusterResponse > {
        self.client.execute(action: "OfflineCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下线集群
    @inlinable
    public func offlineCluster(_ input: OfflineClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineClusterResponse {
        try await self.client.execute(action: "OfflineCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// OfflineCluster请求参数结构体
    public struct OfflineClusterRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// OfflineCluster返回参数结构体
    public struct OfflineClusterResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}
