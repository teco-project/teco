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

extension Tsf {
    /// 查询任务列表
    ///
    /// 翻页查询任务列表
    @inlinable
    public func describeTaskRecords(_ input: DescribeTaskRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskRecordsResponse > {
        self.client.execute(action: "DescribeTaskRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务列表
    ///
    /// 翻页查询任务列表
    @inlinable
    public func describeTaskRecords(_ input: DescribeTaskRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskRecordsResponse {
        try await self.client.execute(action: "DescribeTaskRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskRecords请求参数结构体
    public struct DescribeTaskRecordsRequest: TCRequestModel {
        /// 翻页偏移量。
        public let offset: UInt64?
        
        /// 翻页查询单页数量。
        public let limit: UInt64?
        
        /// 模糊查询关键字，支持任务ID和任务名称。
        public let searchWord: String?
        
        /// 任务启用状态。enabled/disabled
        public let taskState: String?
        
        /// 分组ID。
        public let groupId: String?
        
        /// 任务类型。
        public let taskType: String?
        
        /// 任务触发类型，UNICAST、BROADCAST。
        public let executeType: String?
        
        /// 无
        public let ids: [String]?
        
        public init (offset: UInt64?, limit: UInt64?, searchWord: String?, taskState: String?, groupId: String?, taskType: String?, executeType: String?, ids: [String]?) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.taskState = taskState
            self.groupId = groupId
            self.taskType = taskType
            self.executeType = executeType
            self.ids = ids
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case taskState = "TaskState"
            case groupId = "GroupId"
            case taskType = "TaskType"
            case executeType = "ExecuteType"
            case ids = "Ids"
        }
    }
    
    /// DescribeTaskRecords返回参数结构体
    public struct DescribeTaskRecordsResponse: TCResponseModel {
        /// 任务记录列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TaskRecordPage
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
