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

extension Teo {
    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasks(_ input: DescribeLogTopicTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLogTopicTasksResponse > {
        self.client.execute(action: "DescribeLogTopicTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取推送任务列表
    ///
    /// 本接口（DescribeLogTopicTasks）用于获取日志推送任务列表。
    @inlinable
    public func describeLogTopicTasks(_ input: DescribeLogTopicTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogTopicTasksResponse {
        try await self.client.execute(action: "DescribeLogTopicTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLogTopicTasks请求参数结构体
    public struct DescribeLogTopicTasksRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String
        
        /// 分页查询的限制数目，默认值为20，最大查询条目为1000。
        public let limit: UInt64?
        
        /// 分页的偏移量，默认值为0。
        public let offset: Int64?
        
        public init (zoneId: String, limit: UInt64?, offset: Int64?) {
            self.zoneId = zoneId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeLogTopicTasks返回参数结构体
    public struct DescribeLogTopicTasksResponse: TCResponseModel {
        /// 推送任务列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicList: [ClsLogTopicInfo]?
        
        /// 查询结果的总条数。
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topicList = "TopicList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
