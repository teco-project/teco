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

extension Tcss {
    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteLists(_ input: DescribeRiskSyscallWhiteListsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRiskSyscallWhiteListsResponse > {
        self.client.execute(action: "DescribeRiskSyscallWhiteLists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时高危系统调用白名单列表
    ///
    /// 查询运行时高危系统调用白名单列表信息
    @inlinable
    public func describeRiskSyscallWhiteLists(_ input: DescribeRiskSyscallWhiteListsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallWhiteListsResponse {
        try await self.client.execute(action: "DescribeRiskSyscallWhiteLists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRiskSyscallWhiteLists请求参数结构体
    public struct DescribeRiskSyscallWhiteListsRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let filters: [RunTimeFilters]?
        
        /// 升序降序,asc desc
        public let order: String?
        
        /// 排序字段
        public let by: String?
        
        public init (limit: UInt64?, offset: UInt64?, filters: [RunTimeFilters]?, order: String?, by: String?) {
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
    
    /// DescribeRiskSyscallWhiteLists返回参数结构体
    public struct DescribeRiskSyscallWhiteListsResponse: TCResponseModel {
        /// 事件总数量
        public let totalCount: UInt64
        
        /// 白名单信息列表
        public let whiteListSet: [RiskSyscallWhiteListBaseInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case whiteListSet = "WhiteListSet"
            case requestId = "RequestId"
        }
    }
}
