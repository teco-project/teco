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

@_exported import struct Foundation.Date

extension Yunjing {
    /// DescribeWeeklyReportVuls请求参数结构体
    public struct DescribeWeeklyReportVulsRequest: TCRequestModel {
        /// 专业版周报开始时间。
        // FIXME: Codable support not implemented for date yet.
        public let beginDate: Date
        
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        public init (beginDate: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.beginDate = beginDate
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeWeeklyReportVuls返回参数结构体
    public struct DescribeWeeklyReportVulsResponse: TCResponseModel {
        /// 专业周报漏洞数据数组。
        public let weeklyReportVuls: [WeeklyReportVul]
        
        /// 记录总数。
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case weeklyReportVuls = "WeeklyReportVuls"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取专业版周报漏洞数据
    ///
    /// 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。
    @inlinable
    public func describeWeeklyReportVuls(_ input: DescribeWeeklyReportVulsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWeeklyReportVulsResponse > {
        self.client.execute(action: "DescribeWeeklyReportVuls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取专业版周报漏洞数据
    ///
    /// 本接口 (DescribeWeeklyReportVuls) 用于专业版周报漏洞数据。
    @inlinable
    public func describeWeeklyReportVuls(_ input: DescribeWeeklyReportVulsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportVulsResponse {
        try await self.client.execute(action: "DescribeWeeklyReportVuls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
