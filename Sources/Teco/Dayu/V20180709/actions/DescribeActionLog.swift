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

@_exported import struct Foundation.Date

extension Dayu {
    /// 获取操作日志
    ///
    /// 获取操作日志
    @inlinable
    public func describeActionLog(_ input: DescribeActionLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeActionLogResponse > {
        self.client.execute(action: "DescribeActionLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取操作日志
    ///
    /// 获取操作日志
    @inlinable
    public func describeActionLog(_ input: DescribeActionLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActionLogResponse {
        try await self.client.execute(action: "DescribeActionLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeActionLog请求参数结构体
    public struct DescribeActionLogRequest: TCRequestModel {
        /// 开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String?
        
        /// 搜索值，只支持资源ID或用户UIN
        public let filter: String?
        
        /// 一页条数，填0表示不分页
        public let limit: UInt64?
        
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?
        
        public init (startTime: Date, endTime: Date, business: String?, filter: String?, limit: UInt64?, offset: UInt64?) {
            self.startTime = startTime
            self.endTime = endTime
            self.business = business
            self.filter = filter
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case business = "Business"
            case filter = "Filter"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeActionLog返回参数结构体
    public struct DescribeActionLogResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: UInt64
        
        /// 记录数组
        public let data: [KeyValueRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}