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

extension Dbbrain {
    /// DescribeDBDiagEvents请求参数结构体
    public struct DescribeDBDiagEventsRequest: TCRequestModel {
        /// 开始时间，如“2021-05-27 00:00:00”，支持的最早查询时间为当前时间的前30天。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date
        
        /// 结束时间，如“2021-05-27 01:00:00”，结束时间与开始时间的间隔最大可为7天。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date
        
        /// 风险等级列表，取值按影响程度从高至低分别为：1 - 致命、2 -严重、3 - 告警、4 - 提示、5 -健康。
        public let severities: [Int64]?
        
        /// 实例ID列表。
        public let instanceIds: [String]?
        
        /// 偏移量，默认0。
        public let offset: Int64?
        
        /// 返回数量，默认20，最大值为50。
        public let limit: Int64?
        
        public init (startTime: Date, endTime: Date, severities: [Int64]? = nil, instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.severities = severities
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case severities = "Severities"
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDBDiagEvents返回参数结构体
    public struct DescribeDBDiagEventsResponse: TCResponseModel {
        /// 诊断事件的总数目。
        public let totalCount: Int64
        
        /// 诊断事件的列表。
        public let items: [DiagHistoryEventItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
    
    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(_ input: DescribeDBDiagEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBDiagEventsResponse > {
        self.client.execute(action: "DescribeDBDiagEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(_ input: DescribeDBDiagEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagEventsResponse {
        try await self.client.execute(action: "DescribeDBDiagEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(startTime: Date, endTime: Date, severities: [Int64]? = nil, instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBDiagEventsResponse > {
        self.describeDBDiagEvents(DescribeDBDiagEventsRequest(startTime: startTime, endTime: endTime, severities: severities, instanceIds: instanceIds, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
    
    /// 获取诊断事件列表
    ///
    /// 获取指定时间段内的诊断事件列表，支持依据风险等级、实例ID等条件过滤。
    @inlinable
    public func describeDBDiagEvents(startTime: Date, endTime: Date, severities: [Int64]? = nil, instanceIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBDiagEventsResponse {
        try await self.describeDBDiagEvents(DescribeDBDiagEventsRequest(startTime: startTime, endTime: endTime, severities: severities, instanceIds: instanceIds, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
