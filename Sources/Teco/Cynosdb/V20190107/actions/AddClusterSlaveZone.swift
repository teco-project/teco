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
    /// 增加从可用区
    @inlinable
    public func addClusterSlaveZone(_ input: AddClusterSlaveZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddClusterSlaveZoneResponse > {
        self.client.execute(action: "AddClusterSlaveZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增加从可用区
    @inlinable
    public func addClusterSlaveZone(_ input: AddClusterSlaveZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddClusterSlaveZoneResponse {
        try await self.client.execute(action: "AddClusterSlaveZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AddClusterSlaveZone请求参数结构体
    public struct AddClusterSlaveZoneRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 从可用区
        public let slaveZone: String
        
        public init (clusterId: String, slaveZone: String) {
            self.clusterId = clusterId
            self.slaveZone = slaveZone
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case slaveZone = "SlaveZone"
        }
    }
    
    /// AddClusterSlaveZone返回参数结构体
    public struct AddClusterSlaveZoneResponse: TCResponseModel {
        /// 异步FlowId
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}
