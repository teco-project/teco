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

extension Cwp {
    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventList(_ input: DescribeWebPageEventListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWebPageEventListResponse > {
        self.client.execute(action: "DescribeWebPageEventList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询篡改事件列表
    @inlinable
    public func describeWebPageEventList(_ input: DescribeWebPageEventListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageEventListResponse {
        try await self.client.execute(action: "DescribeWebPageEventList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWebPageEventList请求参数结构体
    public struct DescribeWebPageEventListRequest: TCRequestModel {
        /// 过滤条件
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>EventType - String - 是否必填：否 - 事件类型</li>
        /// <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        public let filters: [AssetFilters]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        public let by: String?
        
        /// 排序方式，0降序，1升序，默认为0
        public let order: UInt64?
        
        public init (filters: [AssetFilters]?, offset: UInt64?, limit: UInt64?, by: String?, order: UInt64?) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.by = by
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case by = "By"
            case order = "Order"
        }
    }
    
    /// DescribeWebPageEventList返回参数结构体
    public struct DescribeWebPageEventListResponse: TCResponseModel {
        /// 防护事件列表信息
        public let list: [ProtectEventLists]
        
        /// 总数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
