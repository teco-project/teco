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

extension Wedata {
    /// DescribeTaskAlarmRegulations请求参数结构体
    public struct DescribeTaskAlarmRegulationsRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String
        
        /// 项目ID
        public let projectId: String
        
        /// 任务类型(201代表实时任务，202代表离线任务)
        public let taskType: Int64
        
        /// 当前页
        public let pageNumber: Int64
        
        /// 每页记录数
        public let pageSize: Int64
        
        /// 过滤条件(name有RegularStatus、AlarmLevel、AlarmIndicator、RegularName)
        public let filters: [Filter]?
        
        /// 排序条件(RegularId)
        public let orderFields: [OrderField]?
        
        public init (taskId: String, projectId: String, taskType: Int64, pageNumber: Int64, pageSize: Int64, filters: [Filter]? = nil, orderFields: [OrderField]? = nil) {
            self.taskId = taskId
            self.projectId = projectId
            self.taskType = taskType
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
            self.orderFields = orderFields
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
            case taskType = "TaskType"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
            case orderFields = "OrderFields"
        }
    }
    
    /// DescribeTaskAlarmRegulations返回参数结构体
    public struct DescribeTaskAlarmRegulationsResponse: TCResponseModel {
        /// 任务告警规则信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskAlarmInfos: [TaskAlarmInfo]?
        
        /// 总记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskAlarmInfos = "TaskAlarmInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulations(_ input: DescribeTaskAlarmRegulationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskAlarmRegulationsResponse > {
        self.client.execute(action: "DescribeTaskAlarmRegulations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务告警规则列表
    @inlinable
    public func describeTaskAlarmRegulations(_ input: DescribeTaskAlarmRegulationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskAlarmRegulationsResponse {
        try await self.client.execute(action: "DescribeTaskAlarmRegulations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
