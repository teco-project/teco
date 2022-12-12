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
    /// DescribeLogs请求参数结构体
    public struct DescribeLogsRequest: TCRequestModel {
        /// 查询哪个服务的事件（可选值为TRAIN, NOTEBOOK, INFER）
        public let service: String
        
        /// 查询哪个Pod的日志（支持结尾通配符*)
        public let podName: String
        
        /// 日志查询开始时间（RFC3339格式的时间字符串），默认值为当前时间的前一个小时
        public let startTime: String?
        
        /// 日志查询结束时间（RFC3339格式的时间字符串），默认值为当前时间
        public let endTime: String?
        
        /// 日志查询条数，默认值100，最大值100
        public let limit: UInt64?
        
        /// 排序方向（可选值为ASC, DESC ），默认为DESC
        public let order: String?
        
        /// 按哪个字段排序（可选值为Timestamp），默认值为Timestamp
        public let orderField: String?
        
        /// 日志查询上下文，查询下一页的时候需要回传这个字段，该字段来自本接口的返回
        public let context: String?
        
        /// 过滤条件
        /// 注意: 
        /// 1. Filter.Name：目前只支持Key（也就是按关键字过滤日志）
        /// 2. Filter.Values：表示过滤日志的关键字；Values为多个的时候表示同时满足
        /// 3. Filter. Negative和Filter. Fuzzy没有使用
        public let filters: [Filter]?
        
        public init (service: String, podName: String, startTime: String? = nil, endTime: String? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, context: String? = nil, filters: [Filter]? = nil) {
            self.service = service
            self.podName = podName
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.order = order
            self.orderField = orderField
            self.context = context
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case podName = "PodName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
            case context = "Context"
            case filters = "Filters"
        }
    }
    
    /// DescribeLogs返回参数结构体
    public struct DescribeLogsResponse: TCResponseModel {
        /// 分页的游标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?
        
        /// 日志数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [LogIdentity]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case content = "Content"
            case requestId = "RequestId"
        }
    }
    
    /// 获取日志
    ///
    /// 获取训练、推理、Notebook服务的日志
    @inlinable
    public func describeLogs(_ input: DescribeLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLogsResponse > {
        self.client.execute(action: "DescribeLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取日志
    ///
    /// 获取训练、推理、Notebook服务的日志
    @inlinable
    public func describeLogs(_ input: DescribeLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogsResponse {
        try await self.client.execute(action: "DescribeLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
