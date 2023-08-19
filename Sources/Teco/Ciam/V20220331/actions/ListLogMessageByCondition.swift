//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Ciam {
    /// ListLogMessageByCondition请求参数结构体
    public struct ListLogMessageByConditionRequest: TCRequest {
        /// 用户池ID
        public let userStoreId: String

        /// 分页数据
        public let pageable: Pageable

        /// 开始时间，时间戳精确到毫秒
        public let startTime: Int64

        /// Key可选值为events
        ///
        /// - **events**
        /// 	Values为["SIGNUP", "USER_UPDATE", "USER_DELETE", "USER_CREATE", "ACCOUNT_LINKING"] 中的一个或多个
        public let filters: [Filter]?

        public init(userStoreId: String, pageable: Pageable, startTime: Int64, filters: [Filter]? = nil) {
            self.userStoreId = userStoreId
            self.pageable = pageable
            self.startTime = startTime
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case pageable = "Pageable"
            case startTime = "StartTime"
            case filters = "Filters"
        }
    }

    /// ListLogMessageByCondition返回参数结构体
    public struct ListLogMessageByConditionResponse: TCResponse {
        /// 总条数
        public let total: Int64

        /// 分页对象
        public let pageable: Pageable

        /// 日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [LogMessage]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case pageable = "Pageable"
            case content = "Content"
            case requestId = "RequestId"
        }
    }

    /// 查询日志信息
    @inlinable
    public func listLogMessageByCondition(_ input: ListLogMessageByConditionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogMessageByConditionResponse> {
        self.client.execute(action: "ListLogMessageByCondition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志信息
    @inlinable
    public func listLogMessageByCondition(_ input: ListLogMessageByConditionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogMessageByConditionResponse {
        try await self.client.execute(action: "ListLogMessageByCondition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志信息
    @inlinable
    public func listLogMessageByCondition(userStoreId: String, pageable: Pageable, startTime: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogMessageByConditionResponse> {
        self.listLogMessageByCondition(.init(userStoreId: userStoreId, pageable: pageable, startTime: startTime, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志信息
    @inlinable
    public func listLogMessageByCondition(userStoreId: String, pageable: Pageable, startTime: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogMessageByConditionResponse {
        try await self.listLogMessageByCondition(.init(userStoreId: userStoreId, pageable: pageable, startTime: startTime, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
