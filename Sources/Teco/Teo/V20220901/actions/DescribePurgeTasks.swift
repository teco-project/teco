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

@_exported import struct Foundation.Date

extension Teo {
    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePurgeTasksResponse > {
        self.client.execute(action: "DescribePurgeTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询清除缓存历史记录
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.client.execute(action: "DescribePurgeTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePurgeTasks请求参数结构体
    public struct DescribePurgeTasksRequest: TCRequestModel {
        /// 字段已废弃，请使用Filters中的zone-id。
        public let zoneId: String?
        
        /// 查询起始时间。
        public let startTime: Date?
        
        /// 查询结束时间。
        public let endTime: Date?
        
        /// 分页查询偏移量，默认为0。
        public let offset: Int64?
        
        /// 分页查限制数目，默认值：20，最大值：1000。
        public let limit: Int64?
        
        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：<li>zone-id<br>   按照【<strong>站点 ID</strong>】进行过滤。zone-id形如：zone-xxx，暂不支持多值<br>   类型：String<br>   必选：否<br>   模糊查询：不支持</li><li>job-id<br>   按照【<strong>任务ID</strong>】进行过滤。job-id形如：1379afjk91u32h，暂不支持多值。<br>   类型：String<br>   必选：否<br>   模糊查询：不支持</li><li>target<br>   按照【<strong>目标资源信息</strong>】进行过滤，target形如：http://www.qq.com/1.txt或者tag1，暂不支持多值<br>   类型：String<br>   必选：否<br>   模糊查询：不支持</li><li>domains<br>   按照【<strong>域名</strong>】进行过滤，domains形如：www.qq.com<br>   类型：String<br>   必选：否<br>   模糊查询：不支持。</li><li>statuses<br>   按照【<strong>任务状态</strong>】进行过滤<br>   必选：否<br>   模糊查询：不支持。<br>   可选项：<br>   processing：处理中<br>   success：成功<br>   failed：失败<br>   timeout：超时</li><li>type<br>   按照【<strong>清除缓存类型</strong>】进行过滤，暂不支持多值。<br>   类型：String<br>   必选：否<br>   模糊查询：不支持<br>   可选项：<br>   purge_url：URL<br>   purge_prefix：前缀<br>   purge_all：全部缓存内容<br>   purge_host：Hostname<br>   purge_cache_tag：CacheTag</li>
        public let filters: [AdvancedFilter]?
        
        public init (zoneId: String?, startTime: Date?, endTime: Date?, offset: Int64?, limit: Int64?, filters: [AdvancedFilter]?) {
            self.zoneId = zoneId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }
    
    /// DescribePurgeTasks返回参数结构体
    public struct DescribePurgeTasksResponse: TCResponseModel {
        /// 该查询条件总共条目数。
        public let totalCount: UInt64
        
        /// 任务结果列表。
        public let tasks: [Task]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }
    }
}
