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

extension Tdmq {
    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueues(_ input: DescribeCmqQueuesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCmqQueuesResponse > {
        self.client.execute(action: "DescribeCmqQueues", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询cmq全量队列
    @inlinable
    public func describeCmqQueues(_ input: DescribeCmqQueuesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCmqQueuesResponse {
        try await self.client.execute(action: "DescribeCmqQueues", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCmqQueues请求参数结构体
    public struct DescribeCmqQueuesRequest: TCRequestModel {
        /// 分页时本页获取队列列表的起始位置。如果填写了该值，必须也要填写 limit 。该值缺省时，后台取默认值 0
        public let offset: UInt64?
        
        /// 分页时本页获取队列的个数，如果不传递该参数，则该参数默认为20，最大值为50。
        public let limit: UInt64?
        
        /// 根据QueueName进行过滤
        public let queueName: String?
        
        /// CMQ 队列名称列表过滤
        public let queueNameList: [String]?
        
        /// 标签过滤查找时，需要设置为 true
        public let isTagFilter: Bool?
        
        /// 过滤器。目前支持按标签过滤，标签的Name需要加前缀“tag:”，例如：tag:负责人、tag:环境、tag:业务
        public let filters: [Filter]?
        
        public init (offset: UInt64?, limit: UInt64?, queueName: String?, queueNameList: [String]?, isTagFilter: Bool?, filters: [Filter]?) {
            self.offset = offset
            self.limit = limit
            self.queueName = queueName
            self.queueNameList = queueNameList
            self.isTagFilter = isTagFilter
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case queueName = "QueueName"
            case queueNameList = "QueueNameList"
            case isTagFilter = "IsTagFilter"
            case filters = "Filters"
        }
    }
    
    /// DescribeCmqQueues返回参数结构体
    public struct DescribeCmqQueuesResponse: TCResponseModel {
        /// 数量
        public let totalCount: UInt64
        
        /// 队列列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let queueList: [CmqQueue]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case queueList = "QueueList"
            case requestId = "RequestId"
        }
    }
}
