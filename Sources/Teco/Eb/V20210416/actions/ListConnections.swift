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
    /// 获取事件连接器列表
    ///
    /// 获取事件连接器列表
    @inlinable
    public func listConnections(_ input: ListConnectionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListConnectionsResponse > {
        self.client.execute(action: "ListConnections", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取事件连接器列表
    ///
    /// 获取事件连接器列表
    @inlinable
    public func listConnections(_ input: ListConnectionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectionsResponse {
        try await self.client.execute(action: "ListConnections", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListConnections请求参数结构体
    public struct ListConnectionsRequest: TCRequestModel {
        /// 事件集ID
        public let eventBusId: String
        
        /// 根据哪个字段进行返回结果排序，目前支持如下以下字段：AddTime, ModTime
        public let orderBy: String?
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?
        
        /// 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        public let order: String?
        
        /// 偏移量，默认为0。
        public let offset: Int64?
        
        public init (eventBusId: String, orderBy: String?, limit: Int64?, order: String?, offset: Int64?) {
            self.eventBusId = eventBusId
            self.orderBy = orderBy
            self.limit = limit
            self.order = order
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case eventBusId = "EventBusId"
            case orderBy = "OrderBy"
            case limit = "Limit"
            case order = "Order"
            case offset = "Offset"
        }
    }
    
    /// ListConnections返回参数结构体
    public struct ListConnectionsResponse: TCResponseModel {
        /// 连接器信息
        public let connections: [Connection]
        
        /// 连接器总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case connections = "Connections"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}