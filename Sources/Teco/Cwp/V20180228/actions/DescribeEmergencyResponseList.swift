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
    /// 应急响应列表
    ///
    /// 专家服务-应急响应列表
    @inlinable
    public func describeEmergencyResponseList(_ input: DescribeEmergencyResponseListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEmergencyResponseListResponse > {
        self.client.execute(action: "DescribeEmergencyResponseList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 应急响应列表
    ///
    /// 专家服务-应急响应列表
    @inlinable
    public func describeEmergencyResponseList(_ input: DescribeEmergencyResponseListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEmergencyResponseListResponse {
        try await self.client.execute(action: "DescribeEmergencyResponseList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEmergencyResponseList请求参数结构体
    public struct DescribeEmergencyResponseListRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>Keyword- String - 是否必填：否 - 关键词过滤，</li>
        /// <li>Uuids - String - 是否必填：否 - 主机id过滤</li>
        public let filters: [Filters]?
        
        /// 需要返回的数量，最大值为100
        public let limit: UInt64?
        
        /// 排序步长
        public let offset: UInt64?
        
        /// 排序方法
        public let order: String?
        
        /// 排序字段 StartTime，EndTime
        public let by: String?
        
        public init (filters: [Filters]?, limit: UInt64?, offset: UInt64?, order: String?, by: String?) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeEmergencyResponseList返回参数结构体
    public struct DescribeEmergencyResponseListResponse: TCResponseModel {
        /// 总条数
        public let totalCount: UInt64
        
        /// 应急响应列表
        public let list: [EmergencyResponseInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }
}
