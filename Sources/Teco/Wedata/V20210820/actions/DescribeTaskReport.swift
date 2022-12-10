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

extension Wedata {
    /// 离线任务周期统计总览
    ///
    /// 按起止日期统计离线任务的所有实例的运行指标总和
    @inlinable
    public func describeTaskReport(_ input: DescribeTaskReportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskReportResponse > {
        self.client.execute(action: "DescribeTaskReport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 离线任务周期统计总览
    ///
    /// 按起止日期统计离线任务的所有实例的运行指标总和
    @inlinable
    public func describeTaskReport(_ input: DescribeTaskReportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskReportResponse {
        try await self.client.execute(action: "DescribeTaskReport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskReport请求参数结构体
    public struct DescribeTaskReportRequest: TCRequestModel {
        /// 任务Id
        public let taskId: String
        
        /// 统计周期的开始日期，格式为 yyyy-MM-dd
        // FIXME: Codable support not implemented for date yet.
        public let beginDate: Date
        
        /// 统计周期的结束日期，格式为 yyyy-MM-dd
        // FIXME: Codable support not implemented for date yet.
        public let endDate: Date
        
        /// WeData项目id
        public let projectId: String
        
        public init (taskId: String, beginDate: Date, endDate: Date, projectId: String) {
            self.taskId = taskId
            self.beginDate = beginDate
            self.endDate = endDate
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case projectId = "ProjectId"
        }
    }
    
    /// DescribeTaskReport返回参数结构体
    public struct DescribeTaskReportResponse: TCResponseModel {
        /// 总读取条数
        public let totalReadRecords: UInt64
        
        /// 总读取字节数，单位为Byte
        public let totalReadBytes: UInt64
        
        /// 总写入条数
        public let totalWriteRecords: UInt64
        
        /// 总写入字节数，单位为Byte
        public let totalWriteBytes: UInt64
        
        /// 总脏数据条数
        public let totalErrorRecords: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalReadRecords = "TotalReadRecords"
            case totalReadBytes = "TotalReadBytes"
            case totalWriteRecords = "TotalWriteRecords"
            case totalWriteBytes = "TotalWriteBytes"
            case totalErrorRecords = "TotalErrorRecords"
            case requestId = "RequestId"
        }
    }
}
