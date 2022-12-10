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
    /// 获取反弹Shell列表
    ///
    /// 获取反弹Shell列表
    @inlinable
    public func describeReverseShellEvents(_ input: DescribeReverseShellEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReverseShellEventsResponse > {
        self.client.execute(action: "DescribeReverseShellEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取反弹Shell列表
    ///
    /// 获取反弹Shell列表
    @inlinable
    public func describeReverseShellEvents(_ input: DescribeReverseShellEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventsResponse {
        try await self.client.execute(action: "DescribeReverseShellEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeReverseShellEvents请求参数结构体
    public struct DescribeReverseShellEventsRequest: TCRequestModel {
        /// 返回数量，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 关键字(主机内网IP|进程名)</li>
        public let filters: [Filter]?
        
        /// 排序方式：根据请求次数排序：asc-升序/desc-降序
        public let order: String?
        
        /// 排序字段：CreateTime-发生时间
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
    
    /// DescribeReverseShellEvents返回参数结构体
    public struct DescribeReverseShellEventsResponse: TCResponseModel {
        /// 列表内容
        public let list: [ReverseShell]
        
        /// 总条数
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