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

extension Ckafka {
    /// DescribeGroup请求参数结构体
    public struct DescribeGroupRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 搜索关键字
        public let searchWord: String?
        
        /// 偏移量
        public let offset: Int64?
        
        /// 最大返回数量
        public let limit: Int64?
        
        public init (instanceId: String, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeGroup返回参数结构体
    public struct DescribeGroupResponse: TCResponseModel {
        /// 返回结果集列表
        public let result: GroupResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupResponse > {
        self.client.execute(action: "DescribeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 枚举消费分组(精简版)
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        try await self.client.execute(action: "DescribeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
