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
    /// OfflineInstance请求参数结构体
    public struct OfflineInstanceRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 实例ID数组
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
    
    /// OfflineInstance返回参数结构体
    public struct OfflineInstanceResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
    
    /// 下线实例
    @inlinable
    public func offlineInstance(_ input: OfflineInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < OfflineInstanceResponse > {
        self.client.execute(action: "OfflineInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下线实例
    @inlinable
    public func offlineInstance(_ input: OfflineInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OfflineInstanceResponse {
        try await self.client.execute(action: "OfflineInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
