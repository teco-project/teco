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

extension Mongodb {
    /// DescribeSlowLogs请求参数结构体
    public struct DescribeSlowLogsRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceId: String
        
        /// 慢日志起始时间，格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 慢日志终止时间，格式：yyyy-mm-dd hh:mm:ss，如：2019-06-02 12:00:00。查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 慢日志执行时间阈值，返回执行时间超过该阈值的慢日志，单位为毫秒(ms)，最小为100毫秒。
        public let slowMS: UInt64
        
        /// 偏移量，最小值为0，最大值为10000，默认值为0。
        public let offset: UInt64?
        
        /// 分页大小，最小值为1，最大值为100，默认值为20。
        public let limit: UInt64?
        
        /// 慢日志返回格式，可设置为json，不传默认返回原生慢日志格式。
        public let format: String?
        
        public init (instanceId: String, startTime: Date, endTime: Date, slowMS: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, format: String? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.slowMS = slowMS
            self.offset = offset
            self.limit = limit
            self.format = format
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case slowMS = "SlowMS"
            case offset = "Offset"
            case limit = "Limit"
            case format = "Format"
        }
    }
    
    /// DescribeSlowLogs返回参数结构体
    public struct DescribeSlowLogsResponse: TCResponseModel {
        /// 慢日志总数
        public let count: UInt64
        
        /// 慢日志详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slowLogs: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case slowLogs = "SlowLogs"
            case requestId = "RequestId"
        }
    }
    
    /// 获取慢日志信息
    ///
    /// 本接口（DescribeSlowLogs）用于获取云数据库慢日志信息。接口只支持查询最近7天内慢日志。
    @inlinable
    public func describeSlowLogs(_ input: DescribeSlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSlowLogsResponse > {
        self.client.execute(action: "DescribeSlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取慢日志信息
    ///
    /// 本接口（DescribeSlowLogs）用于获取云数据库慢日志信息。接口只支持查询最近7天内慢日志。
    @inlinable
    public func describeSlowLogs(_ input: DescribeSlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogsResponse {
        try await self.client.execute(action: "DescribeSlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
