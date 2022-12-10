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

extension Eb {
    /// 获取事件集列表
    ///
    /// 获取事件集列表
    @inlinable
    public func listEventBuses(_ input: ListEventBusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListEventBusesResponse > {
        self.client.execute(action: "ListEventBuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取事件集列表
    ///
    /// 获取事件集列表
    @inlinable
    public func listEventBuses(_ input: ListEventBusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventBusesResponse {
        try await self.client.execute(action: "ListEventBuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListEventBuses请求参数结构体
    public struct ListEventBusesRequest: TCRequestModel {
        /// 根据哪个字段进行返回结果排序,支持以下字段：AddTime（创建时间）, ModTime（修改时间）
        public let orderBy: String?
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?
        
        /// 以升序还是降序的方式返回结果，可选值 ASC（升序） 和 DESC（降序）
        public let order: String?
        
        /// 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?
        
        /// 分页偏移量，默认为0。
        public let offset: Int64?
        
        public init (orderBy: String?, limit: Int64?, order: String?, filters: [Filter]?, offset: Int64?) {
            self.orderBy = orderBy
            self.limit = limit
            self.order = order
            self.filters = filters
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case orderBy = "OrderBy"
            case limit = "Limit"
            case order = "Order"
            case filters = "Filters"
            case offset = "Offset"
        }
    }
    
    /// ListEventBuses返回参数结构体
    public struct ListEventBusesResponse: TCResponseModel {
        /// 事件集信息
        public let eventBuses: [EventBus]
        
        /// 事件集总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eventBuses = "EventBuses"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}