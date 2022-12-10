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

extension Tione {
    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasks(_ input: DescribeBatchTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBatchTasksResponse > {
        self.client.execute(action: "DescribeBatchTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 跑批任务列表
    ///
    /// 批量预测任务列表信息
    @inlinable
    public func describeBatchTasks(_ input: DescribeBatchTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTasksResponse {
        try await self.client.execute(action: "DescribeBatchTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBatchTasks请求参数结构体
    public struct DescribeBatchTasksRequest: TCRequestModel {
        /// 过滤器，eg：[{ "Name": "Id", "Values": ["train-23091792777383936"] }]
        /// 取值范围：
        /// Name（名称）：task1
        /// Id（task ID）：train-23091792777383936
        /// Status（状态）：STARTING / RUNNING / STOPPING / STOPPED / FAILED / SUCCEED / SUBMIT_FAILED
        /// ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
        /// CHARGE_STATUS（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ ARREARS_STOP（欠费停止）
        public let filters: [Filter]?
        
        /// 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        public let tagFilters: [TagFilter]?
        
        /// 偏移量，默认为0
        public let offset: UInt64?
        
        /// 返回数量，默认为10，最大为50
        public let limit: UInt64?
        
        /// 输出列表的排列顺序。取值范围：ASC（升序排列）/ DESC（降序排列），默认为DESC
        public let order: String?
        
        /// 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        public let orderField: String?
        
        public init (filters: [Filter]?, tagFilters: [TagFilter]?, offset: UInt64?, limit: UInt64?, order: String?, orderField: String?) {
            self.filters = filters
            self.tagFilters = tagFilters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case tagFilters = "TagFilters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
        }
    }
    
    /// DescribeBatchTasks返回参数结构体
    public struct DescribeBatchTasksResponse: TCResponseModel {
        /// 数量
        public let totalCount: UInt64
        
        /// 任务集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchTaskSet: [BatchTaskSetItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case batchTaskSet = "BatchTaskSet"
            case requestId = "RequestId"
        }
    }
}
