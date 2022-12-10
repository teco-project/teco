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

extension Iecp {
    /// 获取消息路由列表
    ///
    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteList(_ input: DescribeMessageRouteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMessageRouteListResponse > {
        self.client.execute(action: "DescribeMessageRouteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取消息路由列表
    ///
    /// 获取消息路由列表
    @inlinable
    public func describeMessageRouteList(_ input: DescribeMessageRouteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageRouteListResponse {
        try await self.client.execute(action: "DescribeMessageRouteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMessageRouteList请求参数结构体
    public struct DescribeMessageRouteListRequest: TCRequestModel {
        /// 无
        public let limit: Int64
        
        /// 无
        public let offset: Int64
        
        /// 无
        public let filter: String?
        
        /// 无
        public let startTime: String?
        
        /// 无
        public let endTime: String?
        
        /// 无
        public let order: String?
        
        public init (limit: Int64, offset: Int64, filter: String?, startTime: String?, endTime: String?, order: String?) {
            self.limit = limit
            self.offset = offset
            self.filter = filter
            self.startTime = startTime
            self.endTime = endTime
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filter = "Filter"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case order = "Order"
        }
    }
    
    /// DescribeMessageRouteList返回参数结构体
    public struct DescribeMessageRouteListResponse: TCResponseModel {
        /// 无
        public let routeList: [RouteInfo]
        
        /// 无
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case routeList = "RouteList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}