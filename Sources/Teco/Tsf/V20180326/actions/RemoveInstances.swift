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

extension Tsf {
    /// RemoveInstances请求参数结构体
    public struct RemoveInstancesRequest: TCRequestModel {
        /// 集群 ID
        public let clusterId: String
        
        /// 云主机 ID 列表
        public let instanceIdList: [String]
        
        public init (clusterId: String, instanceIdList: [String]) {
            self.clusterId = clusterId
            self.instanceIdList = instanceIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdList = "InstanceIdList"
        }
    }
    
    /// RemoveInstances返回参数结构体
    public struct RemoveInstancesResponse: TCResponseModel {
        /// 集群移除机器是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 移除云主机
    ///
    /// 从 TSF 集群中批量移除云主机节点
    @inlinable
    public func removeInstances(_ input: RemoveInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveInstancesResponse > {
        self.client.execute(action: "RemoveInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 移除云主机
    ///
    /// 从 TSF 集群中批量移除云主机节点
    @inlinable
    public func removeInstances(_ input: RemoveInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveInstancesResponse {
        try await self.client.execute(action: "RemoveInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
