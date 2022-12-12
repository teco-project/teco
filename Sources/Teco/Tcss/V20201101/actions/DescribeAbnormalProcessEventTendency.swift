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

extension Tcss {
    /// DescribeAbnormalProcessEventTendency请求参数结构体
    public struct DescribeAbnormalProcessEventTendencyRequest: TCRequestModel {
        /// 开始时间
        // FIXME: Codable support not implemented for date yet.
        public let startTime: Date
        
        /// 结束时间
        // FIXME: Codable support not implemented for date yet.
        public let endTime: Date
        
        public init (startTime: Date, endTime: Date) {
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// DescribeAbnormalProcessEventTendency返回参数结构体
    public struct DescribeAbnormalProcessEventTendencyResponse: TCResponseModel {
        /// 待处理异常进程事件趋势
        public let list: [AbnormalProcessEventTendencyInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }
    
    /// 查询待处理异常进程事件趋势
    @inlinable
    public func describeAbnormalProcessEventTendency(_ input: DescribeAbnormalProcessEventTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAbnormalProcessEventTendencyResponse > {
        self.client.execute(action: "DescribeAbnormalProcessEventTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询待处理异常进程事件趋势
    @inlinable
    public func describeAbnormalProcessEventTendency(_ input: DescribeAbnormalProcessEventTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAbnormalProcessEventTendencyResponse {
        try await self.client.execute(action: "DescribeAbnormalProcessEventTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
