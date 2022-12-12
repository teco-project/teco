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

extension Redis {
    /// DescribeInstanceParamRecords请求参数结构体
    public struct DescribeInstanceParamRecordsRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        /// 分页大小
        public let limit: UInt64?
        
        /// 偏移量，取Limit整数倍
        public let offset: UInt64?
        
        public init (instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeInstanceParamRecords返回参数结构体
    public struct DescribeInstanceParamRecordsResponse: TCResponseModel {
        /// 总的修改历史记录数。
        public let totalCount: Int64
        
        /// 修改历史记录信息。
        public let instanceParamHistory: [InstanceParamHistory]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceParamHistory = "InstanceParamHistory"
            case requestId = "RequestId"
        }
    }
    
    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecords(_ input: DescribeInstanceParamRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceParamRecordsResponse > {
        self.client.execute(action: "DescribeInstanceParamRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecords(_ input: DescribeInstanceParamRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamRecordsResponse {
        try await self.client.execute(action: "DescribeInstanceParamRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
