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
import TecoDateHelpers

extension Cdn {
    /// DescribeReportData请求参数结构体
    public struct DescribeReportDataRequest: TCRequestModel {
        /// 查询起始时间：yyyy-MM-dd
        /// 当报表类型为daily，起始时间和结束时间必须为同一天
        /// 当报表类型为weekly，起始时间须为周一，结束时间须为同一周的周日
        /// 当报表类型为monthly，起始时间须为自然月第一天，即1号，结束时间须为该自然月最后一天
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startTime: Date
        
        /// 查询结束时间：yyyy-MM-dd
        /// 当报表类型为daily，起始时间和结束时间必须为同一天
        /// 当报表类型为weekly，起始时间须为周一，结束时间须为同一周的周日
        /// 当报表类型为monthly，起始时间须为自然月第一天，即1号，结束时间须为该自然月最后一天
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endTime: Date
        
        /// 报表类型
        /// daily：日报表
        /// weekly：周报表（周一至周日）
        /// monthly：月报表（自然月）
        public let reportType: String
        
        /// 域名加速区域
        /// mainland：中国境内
        /// overseas：中国境外
        public let area: String
        
        /// 偏移量，默认0。
        public let offset: Int64?
        
        /// 数据个数，默认1000。
        public let limit: Int64?
        
        /// 按项目ID筛选
        public let project: Int64?
        
        public init (startTime: Date, endTime: Date, reportType: String, area: String, offset: Int64? = nil, limit: Int64? = nil, project: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.reportType = reportType
            self.area = area
            self.offset = offset
            self.limit = limit
            self.project = project
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case reportType = "ReportType"
            case area = "Area"
            case offset = "Offset"
            case limit = "Limit"
            case project = "Project"
        }
    }
    
    /// DescribeReportData返回参数结构体
    public struct DescribeReportDataResponse: TCResponseModel {
        /// 域名维度数据详情
        public let domainReport: [ReportData]
        
        /// 项目维度数据详情
        public let projectReport: [ReportData]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case domainReport = "DomainReport"
            case projectReport = "ProjectReport"
            case requestId = "RequestId"
        }
    }
    
    /// 查询报表数据
    ///
    /// DescribeReportData 用于查询域名/项目维度的日/周/月报表数据。
    @inlinable
    public func describeReportData(_ input: DescribeReportDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReportDataResponse > {
        self.client.execute(action: "DescribeReportData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询报表数据
    ///
    /// DescribeReportData 用于查询域名/项目维度的日/周/月报表数据。
    @inlinable
    public func describeReportData(_ input: DescribeReportDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReportDataResponse {
        try await self.client.execute(action: "DescribeReportData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 查询报表数据
    ///
    /// DescribeReportData 用于查询域名/项目维度的日/周/月报表数据。
    @inlinable
    public func describeReportData(startTime: Date, endTime: Date, reportType: String, area: String, offset: Int64? = nil, limit: Int64? = nil, project: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReportDataResponse > {
        self.describeReportData(DescribeReportDataRequest(startTime: startTime, endTime: endTime, reportType: reportType, area: area, offset: offset, limit: limit, project: project), logger: logger, on: eventLoop)
    }
    
    /// 查询报表数据
    ///
    /// DescribeReportData 用于查询域名/项目维度的日/周/月报表数据。
    @inlinable
    public func describeReportData(startTime: Date, endTime: Date, reportType: String, area: String, offset: Int64? = nil, limit: Int64? = nil, project: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReportDataResponse {
        try await self.describeReportData(DescribeReportDataRequest(startTime: startTime, endTime: endTime, reportType: reportType, area: area, offset: offset, limit: limit, project: project), logger: logger, on: eventLoop)
    }
}
