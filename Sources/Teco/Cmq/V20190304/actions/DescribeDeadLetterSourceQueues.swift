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

extension Cmq {
    /// DescribeDeadLetterSourceQueues请求参数结构体
    public struct DescribeDeadLetterSourceQueuesRequest: TCRequestModel {
        /// 死信队列名称
        public let deadLetterQueueName: String
        
        /// 分页时本页获取主题列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0。
        public let limit: UInt64?
        
        /// 分页时本页获取主题的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let offset: UInt64?
        
        /// 过滤死信队列源队列名称，目前仅支持SourceQueueName过滤
        public let filters: [Filter]?
        
        public init (deadLetterQueueName: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.deadLetterQueueName = deadLetterQueueName
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case deadLetterQueueName = "DeadLetterQueueName"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeDeadLetterSourceQueues返回参数结构体
    public struct DescribeDeadLetterSourceQueuesResponse: TCResponseModel {
        /// 满足本次条件的队列个数
        public let totalCount: UInt64
        
        /// 死信队列源队列
        public let queueSet: [DeadLetterSource]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queueSet = "QueueSet"
            case requestId = "RequestId"
        }
    }
    
    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueues(_ input: DescribeDeadLetterSourceQueuesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeadLetterSourceQueuesResponse > {
        self.client.execute(action: "DescribeDeadLetterSourceQueues", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 枚举死信队列源队列
    @inlinable
    public func describeDeadLetterSourceQueues(_ input: DescribeDeadLetterSourceQueuesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeadLetterSourceQueuesResponse {
        try await self.client.execute(action: "DescribeDeadLetterSourceQueues", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
