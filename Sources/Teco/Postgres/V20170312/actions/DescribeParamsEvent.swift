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

extension Postgres {
    /// DescribeParamsEvent请求参数结构体
    public struct DescribeParamsEventRequest: TCRequestModel {
        /// 实例DB ID
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// DescribeParamsEvent返回参数结构体
    public struct DescribeParamsEventResponse: TCResponseModel {
        /// 参数修改事件总数，以参数为统计粒度
        public let totalCount: Int64

        /// 实例参数修改事件详情
        public let eventItems: [EventItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eventItems = "EventItems"
            case requestId = "RequestId"
        }
    }

    /// 获取参数修改事件详情
    @inlinable
    public func describeParamsEvent(_ input: DescribeParamsEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeParamsEventResponse > {
        self.client.execute(action: "DescribeParamsEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取参数修改事件详情
    @inlinable
    public func describeParamsEvent(_ input: DescribeParamsEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamsEventResponse {
        try await self.client.execute(action: "DescribeParamsEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取参数修改事件详情
    @inlinable
    public func describeParamsEvent(dbInstanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeParamsEventResponse > {
        self.describeParamsEvent(DescribeParamsEventRequest(dbInstanceId: dbInstanceId), logger: logger, on: eventLoop)
    }

    /// 获取参数修改事件详情
    @inlinable
    public func describeParamsEvent(dbInstanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamsEventResponse {
        try await self.describeParamsEvent(DescribeParamsEventRequest(dbInstanceId: dbInstanceId), logger: logger, on: eventLoop)
    }
}
