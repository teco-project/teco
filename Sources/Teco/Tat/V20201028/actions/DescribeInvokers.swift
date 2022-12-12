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

extension Tat {
    /// DescribeInvokers请求参数结构体
    public struct DescribeInvokersRequest: TCRequestModel {
        /// 执行器ID列表。
        public let invokerIds: [String]?
        
        /// 过滤条件：
        /// <li> invoker-id - String - 是否必填：否 - （过滤条件）按执行器ID过滤。
        /// <li> command-id - String - 是否必填：否 - （过滤条件）按命令ID过滤。
        /// <li> type - String - 是否必填：否 - （过滤条件）按执行器类型过滤。
        public let filters: [Filter]?
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        public init (invokerIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.invokerIds = invokerIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case invokerIds = "InvokerIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeInvokers返回参数结构体
    public struct DescribeInvokersResponse: TCResponseModel {
        /// 满足条件的执行器数量。
        public let totalCount: UInt64
        
        /// 执行器信息。
        public let invokerSet: [Invoker]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case invokerSet = "InvokerSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokers(_ input: DescribeInvokersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInvokersResponse > {
        self.client.execute(action: "DescribeInvokers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询执行器
    ///
    /// 此接口用于查询执行器信息。
    @inlinable
    public func describeInvokers(_ input: DescribeInvokersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvokersResponse {
        try await self.client.execute(action: "DescribeInvokers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
