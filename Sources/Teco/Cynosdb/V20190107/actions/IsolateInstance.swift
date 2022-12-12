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
    /// IsolateInstance请求参数结构体
    public struct IsolateInstanceRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 实例ID数组
        public let instanceIdList: [String]
        
        /// 该参数已废弃
        public let dbType: String?
        
        public init (clusterId: String, instanceIdList: [String], dbType: String? = nil) {
            self.clusterId = clusterId
            self.instanceIdList = instanceIdList
            self.dbType = dbType
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdList = "InstanceIdList"
            case dbType = "DbType"
        }
    }
    
    /// IsolateInstance返回参数结构体
    public struct IsolateInstanceResponse: TCResponseModel {
        /// 任务流id
        public let flowId: Int64
        
        /// 隔离实例的订单id（预付费实例）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealNames: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case dealNames = "DealNames"
            case requestId = "RequestId"
        }
    }
    
    /// 隔离实例
    ///
    /// 本接口(IsolateInstance)用于隔离实例。
    @inlinable
    public func isolateInstance(_ input: IsolateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < IsolateInstanceResponse > {
        self.client.execute(action: "IsolateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 隔离实例
    ///
    /// 本接口(IsolateInstance)用于隔离实例。
    @inlinable
    public func isolateInstance(_ input: IsolateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateInstanceResponse {
        try await self.client.execute(action: "IsolateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
