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

extension Postgres {
    /// DescribeDBXlogs请求参数结构体
    public struct DescribeDBXlogsRequest: TCRequestModel {
        /// 实例ID，形如postgres-4wdeb0zv。
        public let dbInstanceId: String

        /// 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，形如2018-06-10 17:06:38
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date

        /// 分页返回，表示返回第几页的条目。从第0页开始计数。
        public let offset: Int64?

        /// 分页返回，表示每页有多少条目。取值为1-100。
        public let limit: Int64?

        public init(dbInstanceId: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeDBXlogs返回参数结构体
    public struct DescribeDBXlogsResponse: TCResponseModel {
        /// 表示此次返回结果有多少条数据。
        public let totalCount: Int64

        /// Xlog列表
        public let xlogList: [Xlog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case xlogList = "XlogList"
            case requestId = "RequestId"
        }
    }

    /// 获取实例Xlog列表
    ///
    /// 本接口（DescribeDBXlogs）用于获取实例Xlog列表。
    @inlinable
    public func describeDBXlogs(_ input: DescribeDBXlogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBXlogsResponse > {
        self.client.execute(action: "DescribeDBXlogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例Xlog列表
    ///
    /// 本接口（DescribeDBXlogs）用于获取实例Xlog列表。
    @inlinable
    public func describeDBXlogs(_ input: DescribeDBXlogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBXlogsResponse {
        try await self.client.execute(action: "DescribeDBXlogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例Xlog列表
    ///
    /// 本接口（DescribeDBXlogs）用于获取实例Xlog列表。
    @inlinable
    public func describeDBXlogs(dbInstanceId: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBXlogsResponse > {
        self.describeDBXlogs(DescribeDBXlogsRequest(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 获取实例Xlog列表
    ///
    /// 本接口（DescribeDBXlogs）用于获取实例Xlog列表。
    @inlinable
    public func describeDBXlogs(dbInstanceId: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBXlogsResponse {
        try await self.describeDBXlogs(DescribeDBXlogsRequest(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
