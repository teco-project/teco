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

extension Cdb {
    /// 查询云数据库实例任务列表
    ///
    /// 本接口(DescribeTasks)用于查询云数据库实例任务列表。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTasksResponse > {
        self.client.execute(action: "DescribeTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询云数据库实例任务列表
    ///
    /// 本接口(DescribeTasks)用于查询云数据库实例任务列表。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String?
        
        /// 异步任务请求 ID，执行云数据库相关操作返回的 AsyncRequestId。
        public let asyncRequestId: String?
        
        /// 任务类型，不传值则查询所有任务类型，支持的值包括：
        /// 1 - 数据库回档；
        /// 2 - SQL操作；
        /// 3 - 数据导入；
        /// 5 - 参数设置；
        /// 6 - 初始化云数据库实例；
        /// 7 - 重启云数据库实例；
        /// 8 - 开启云数据库实例GTID；
        /// 9 - 只读实例升级；
        /// 10 - 数据库批量回档；
        /// 11 - 主实例升级；
        /// 12 - 删除云数据库库表；
        /// 13 - 灾备实例提升为主。
        public let taskTypes: [Int64]?
        
        /// 任务状态，不传值则查询所有任务状态，支持的值包括：
        /// -1 - 未定义；
        /// 0 - 初始化；
        /// 1 - 运行中；
        /// 2 - 执行成功；
        /// 3 - 执行失败；
        /// 4 - 已终止；
        /// 5 - 已删除；
        /// 6 - 已暂停。
        public let taskStatus: [Int64]?
        
        /// 第一个任务的开始时间，用于范围查询，时间格式如：2017-12-31 10:40:01。
        public let startTimeBegin: String?
        
        /// 最后一个任务的开始时间，用于范围查询，时间格式如：2017-12-31 10:40:01。
        public let startTimeEnd: String?
        
        /// 记录偏移量，默认值为0。
        public let offset: Int64?
        
        /// 单次请求返回的数量，默认值为20，最大值为100。
        public let limit: Int64?
        
        public init (instanceId: String?, asyncRequestId: String?, taskTypes: [Int64]?, taskStatus: [Int64]?, startTimeBegin: String?, startTimeEnd: String?, offset: Int64?, limit: Int64?) {
            self.instanceId = instanceId
            self.asyncRequestId = asyncRequestId
            self.taskTypes = taskTypes
            self.taskStatus = taskStatus
            self.startTimeBegin = startTimeBegin
            self.startTimeEnd = startTimeEnd
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case asyncRequestId = "AsyncRequestId"
            case taskTypes = "TaskTypes"
            case taskStatus = "TaskStatus"
            case startTimeBegin = "StartTimeBegin"
            case startTimeEnd = "StartTimeEnd"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCResponseModel {
        /// 符合查询条件的实例总数。
        public let totalCount: Int64
        
        /// 返回的实例任务信息。
        public let items: [TaskDetail]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}
