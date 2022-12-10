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

extension Es {
    /// 查询实例操作记录
    ///
    /// 查询实例指定条件下的操作记录
    @inlinable
    public func describeInstanceOperations(_ input: DescribeInstanceOperationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceOperationsResponse > {
        self.client.execute(action: "DescribeInstanceOperations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例操作记录
    ///
    /// 查询实例指定条件下的操作记录
    @inlinable
    public func describeInstanceOperations(_ input: DescribeInstanceOperationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceOperationsResponse {
        try await self.client.execute(action: "DescribeInstanceOperations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceOperations请求参数结构体
    public struct DescribeInstanceOperationsRequest: TCRequestModel {
        /// 集群实例ID
        public let instanceId: String
        
        /// 起始时间, e.g. "2019-03-07 16:30:39"
        public let startTime: String
        
        /// 结束时间, e.g. "2019-03-30 20:18:03"
        public let endTime: String
        
        /// 分页起始值
        public let offset: UInt64
        
        /// 分页大小
        public let limit: UInt64
        
        public init (instanceId: String, startTime: String, endTime: String, offset: UInt64, limit: UInt64) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeInstanceOperations返回参数结构体
    public struct DescribeInstanceOperationsResponse: TCResponseModel {
        /// 操作记录总数
        public let totalCount: UInt64
        
        /// 操作记录
        public let operations: [Operation]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case operations = "Operations"
            case requestId = "RequestId"
        }
    }
}
