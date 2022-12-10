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

extension Yunjing {
    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReports(_ input: DescribeWeeklyReportsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWeeklyReportsResponse > {
        self.client.execute(action: "DescribeWeeklyReports", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取周报列表
    ///
    /// 本接口 (DescribeWeeklyReports) 用于获取周报列表数据。
    @inlinable
    public func describeWeeklyReports(_ input: DescribeWeeklyReportsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportsResponse {
        try await self.client.execute(action: "DescribeWeeklyReports", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWeeklyReports请求参数结构体
    public struct DescribeWeeklyReportsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        public init (limit: UInt64?, offset: UInt64?) {
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeWeeklyReports返回参数结构体
    public struct DescribeWeeklyReportsResponse: TCResponseModel {
        /// 专业周报列表数组。
        public let weeklyReports: [WeeklyReport]
        
        /// 记录总数。
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case weeklyReports = "WeeklyReports"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
