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

extension Teo {
    /// DescribePrefetchTasks请求参数结构体
    public struct DescribePrefetchTasksRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String?

        /// 查询起始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 查询结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 查询起始偏移量
        public let offset: Int64?

        /// 查询最大返回的结果条数
        public let limit: Int64?

        /// 查询的状态
        /// 允许的值为：processing、success、failed、timeout、invalid
        public let statuses: [String]?

        /// zone id
        public let zoneId: String?

        /// 查询的域名列表
        public let domains: [String]?

        /// 查询的资源
        public let target: String?

        public init(jobId: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, statuses: [String]? = nil, zoneId: String? = nil, domains: [String]? = nil, target: String? = nil) {
            self.jobId = jobId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
            self.statuses = statuses
            self.zoneId = zoneId
            self.domains = domains
            self.target = target
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case statuses = "Statuses"
            case zoneId = "ZoneId"
            case domains = "Domains"
            case target = "Target"
        }
    }

    /// DescribePrefetchTasks返回参数结构体
    public struct DescribePrefetchTasksResponse: TCResponseModel {
        /// 该查询条件总共条目数
        public let totalCount: UInt64

        /// 任务结果列表
        public let tasks: [Task]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tasks = "Tasks"
            case requestId = "RequestId"
        }
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(_ input: DescribePrefetchTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrefetchTasksResponse > {
        self.client.execute(action: "DescribePrefetchTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(_ input: DescribePrefetchTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrefetchTasksResponse {
        try await self.client.execute(action: "DescribePrefetchTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(jobId: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, statuses: [String]? = nil, zoneId: String? = nil, domains: [String]? = nil, target: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePrefetchTasksResponse > {
        self.describePrefetchTasks(DescribePrefetchTasksRequest(jobId: jobId, startTime: startTime, endTime: endTime, offset: offset, limit: limit, statuses: statuses, zoneId: zoneId, domains: domains, target: target), logger: logger, on: eventLoop)
    }

    /// 查询预热任务状态
    @inlinable
    public func describePrefetchTasks(jobId: String? = nil, startTime: Date? = nil, endTime: Date? = nil, offset: Int64? = nil, limit: Int64? = nil, statuses: [String]? = nil, zoneId: String? = nil, domains: [String]? = nil, target: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrefetchTasksResponse {
        try await self.describePrefetchTasks(DescribePrefetchTasksRequest(jobId: jobId, startTime: startTime, endTime: endTime, offset: offset, limit: limit, statuses: statuses, zoneId: zoneId, domains: domains, target: target), logger: logger, on: eventLoop)
    }
}
