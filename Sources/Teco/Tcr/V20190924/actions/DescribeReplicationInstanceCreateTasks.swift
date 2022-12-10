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

extension Tcr {
    /// 查询创建从实例任务状态
    ///
    /// 查询创建从实例任务状态
    @inlinable
    public func describeReplicationInstanceCreateTasks(_ input: DescribeReplicationInstanceCreateTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReplicationInstanceCreateTasksResponse > {
        self.client.execute(action: "DescribeReplicationInstanceCreateTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询创建从实例任务状态
    ///
    /// 查询创建从实例任务状态
    @inlinable
    public func describeReplicationInstanceCreateTasks(_ input: DescribeReplicationInstanceCreateTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationInstanceCreateTasksResponse {
        try await self.client.execute(action: "DescribeReplicationInstanceCreateTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeReplicationInstanceCreateTasks请求参数结构体
    public struct DescribeReplicationInstanceCreateTasksRequest: TCRequestModel {
        /// 同步实例Id，见实例返回列表中的同步实例ID
        public let replicationRegistryId: String
        
        /// 同步实例的地域ID，见实例返回列表中地域ID
        public let replicationRegionId: UInt64
        
        public init (replicationRegistryId: String, replicationRegionId: UInt64) {
            self.replicationRegistryId = replicationRegistryId
            self.replicationRegionId = replicationRegionId
        }
        
        enum CodingKeys: String, CodingKey {
            case replicationRegistryId = "ReplicationRegistryId"
            case replicationRegionId = "ReplicationRegionId"
        }
    }
    
    /// DescribeReplicationInstanceCreateTasks返回参数结构体
    public struct DescribeReplicationInstanceCreateTasksResponse: TCResponseModel {
        /// 任务详情
        public let taskDetail: [TaskDetail]
        
        /// 整体任务状态
        public let status: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskDetail = "TaskDetail"
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}