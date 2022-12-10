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

extension Tdmq {
    /// 删除RocketMQ集群
    ///
    /// 删除RocketMQ集群
    @inlinable
    public func deleteRocketMQCluster(_ input: DeleteRocketMQClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRocketMQClusterResponse > {
        self.client.execute(action: "DeleteRocketMQCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除RocketMQ集群
    ///
    /// 删除RocketMQ集群
    @inlinable
    public func deleteRocketMQCluster(_ input: DeleteRocketMQClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQClusterResponse {
        try await self.client.execute(action: "DeleteRocketMQCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteRocketMQCluster请求参数结构体
    public struct DeleteRocketMQClusterRequest: TCRequestModel {
        /// 待删除的集群Id。
        public let clusterId: String
        
        public init (clusterId: String) {
            self.clusterId = clusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }
    
    /// DeleteRocketMQCluster返回参数结构体
    public struct DeleteRocketMQClusterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}