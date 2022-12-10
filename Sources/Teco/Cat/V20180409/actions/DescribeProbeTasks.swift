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

extension Cat {
    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasks(_ input: DescribeProbeTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProbeTasksResponse > {
        self.client.execute(action: "DescribeProbeTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasks(_ input: DescribeProbeTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeTasksResponse {
        try await self.client.execute(action: "DescribeProbeTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProbeTasks请求参数结构体
    public struct DescribeProbeTasksRequest: TCRequestModel {
        /// 任务 ID  列表
        public let taskIDs: [String]?
        
        /// 任务名
        public let taskName: String?
        
        /// 拨测目标
        public let targetAddress: String?
        
        /// 任务状态列表
        /// <li>1 = 创建中</li>
        /// <li> 2 = 运行中 </li>
        /// <li> 3 = 运行异常 </li>
        /// <li> 4 = 暂停中 </li>
        /// <li> 5 = 暂停异常 </li>
        /// <li> 6 = 任务暂停 </li>
        /// <li> 7 = 任务删除中 </li>
        /// <li> 8 = 任务删除异常 </li>
        /// <li> 9 = 任务删除</li>
        /// <li> 10 = 定时任务暂停中 </li>
        public let taskStatus: [Int64]?
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?
        
        /// 付费模式
        /// <li>1 = 试用版本</li>
        /// <li> 2 = 付费版本 </li>
        public let payMode: Int64?
        
        /// 订单状态
        /// <li>1 = 正常</li>
        /// <li> 2 = 欠费 </li>
        public let orderState: Int64?
        
        /// 拨测类型
        /// <li>1 = 页面浏览</li>
        /// <li> 2 =文件上传 </li>
        /// <li> 3 = 文件下载</li>
        /// <li> 4 = 端口性能 </li>
        /// <li> 5 = 网络质量 </li>
        /// <li> 6 =流媒体 </li>
        /// 即使拨测只支持页面浏览，网络质量，文件下载
        public let taskType: [Int64]?
        
        /// 节点类型
        public let taskCategory: [Int64]?
        
        /// 排序的列
        public let orderBy: String?
        
        /// 是否正序
        public let ascend: Bool?
        
        /// 资源标签值
        public let tagFilters: [KeyValuePair]?
        
        public init (taskIDs: [String]?, taskName: String?, targetAddress: String?, taskStatus: [Int64]?, offset: Int64?, limit: Int64?, payMode: Int64?, orderState: Int64?, taskType: [Int64]?, taskCategory: [Int64]?, orderBy: String?, ascend: Bool?, tagFilters: [KeyValuePair]?) {
            self.taskIDs = taskIDs
            self.taskName = taskName
            self.targetAddress = targetAddress
            self.taskStatus = taskStatus
            self.offset = offset
            self.limit = limit
            self.payMode = payMode
            self.orderState = orderState
            self.taskType = taskType
            self.taskCategory = taskCategory
            self.orderBy = orderBy
            self.ascend = ascend
            self.tagFilters = tagFilters
        }
        
        enum CodingKeys: String, CodingKey {
            case taskIDs = "TaskIDs"
            case taskName = "TaskName"
            case targetAddress = "TargetAddress"
            case taskStatus = "TaskStatus"
            case offset = "Offset"
            case limit = "Limit"
            case payMode = "PayMode"
            case orderState = "OrderState"
            case taskType = "TaskType"
            case taskCategory = "TaskCategory"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
            case tagFilters = "TagFilters"
        }
    }
    
    /// DescribeProbeTasks返回参数结构体
    public struct DescribeProbeTasksResponse: TCResponseModel {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskSet: [ProbeTask]?
        
        /// 任务总数
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskSet = "TaskSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}