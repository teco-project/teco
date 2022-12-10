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

extension Cwp {
    /// 获取高危命令列表
    ///
    /// 获取高危命令列表
    @inlinable
    public func describeBashEvents(_ input: DescribeBashEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBashEventsResponse > {
        self.client.execute(action: "DescribeBashEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取高危命令列表
    ///
    /// 获取高危命令列表
    @inlinable
    public func describeBashEvents(_ input: DescribeBashEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBashEventsResponse {
        try await self.client.execute(action: "DescribeBashEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBashEvents请求参数结构体
    public struct DescribeBashEventsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 关键词(主机内网IP)</li>
        public let filters: [Filter]?
        
        /// 排序方式：根据请求次数排序：asc-升序/desc-降序
        public let order: String?
        
        /// 排序字段：CreateTime-发生时间。ModifyTime-处理时间
        public let by: String?
        
        public init (limit: UInt64?, offset: UInt64?, filters: [Filter]?, order: String?, by: String?) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeBashEvents返回参数结构体
    public struct DescribeBashEventsResponse: TCResponseModel {
        /// 总条数
        public let totalCount: UInt64
        
        /// 高危命令事件列表
        public let list: [BashEvent]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }
}