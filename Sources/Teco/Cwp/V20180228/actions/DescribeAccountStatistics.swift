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
    /// DescribeAccountStatistics请求参数结构体
    public struct DescribeAccountStatisticsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Username - String - 是否必填：否 - 帐号用户名</li>
        public let filters: [Filter]?
        
        public init (limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeAccountStatistics返回参数结构体
    public struct DescribeAccountStatisticsResponse: TCResponseModel {
        /// 帐号统计列表记录总数。
        public let totalCount: UInt64
        
        /// 帐号统计列表。
        public let accountStatistics: [AccountStatistics]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case accountStatistics = "AccountStatistics"
            case requestId = "RequestId"
        }
    }
    
    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatistics(_ input: DescribeAccountStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountStatisticsResponse > {
        self.client.execute(action: "DescribeAccountStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取帐号统计列表数据
    ///
    /// 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。
    @inlinable
    public func describeAccountStatistics(_ input: DescribeAccountStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountStatisticsResponse {
        try await self.client.execute(action: "DescribeAccountStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
