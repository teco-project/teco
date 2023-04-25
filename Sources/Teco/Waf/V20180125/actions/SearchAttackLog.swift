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

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Waf {
    /// SearchAttackLog请求参数结构体
    public struct SearchAttackLogRequest: TCRequestModel {
        /// 查询的域名，所有域名使用all
        public let domain: String

        /// 查询起始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 查询的游标。第一次请求使用空字符串即可，后续请求使用上一次请求返回的最后一条记录的context的值即可。
        public let context: String

        /// Lucene语法
        public let queryString: String

        /// 查询的数量，默认10条，最多100条
        public let count: Int64?

        /// 默认为desc，可以取值desc和asc
        public let sort: String?

        public init(domain: String, startTime: Date, endTime: Date, context: String, queryString: String, count: Int64? = nil, sort: String? = nil) {
            self.domain = domain
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.context = context
            self.queryString = queryString
            self.count = count
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case context = "Context"
            case queryString = "QueryString"
            case count = "Count"
            case sort = "Sort"
        }
    }

    /// SearchAttackLog返回参数结构体
    public struct SearchAttackLogResponse: TCResponseModel {
        /// 当前返回的攻击日志条数
        public let count: UInt64

        /// 翻页游标，如果没有下一页了，这个参数为空""
        public let context: String

        /// 攻击日志数组条目内容
        public let data: [AttackLogInfo]

        /// CLS接口返回内容
        public let listOver: Bool

        /// CLS接口返回内容，标志是否启动新版本索引
        public let sqlFlag: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case context = "Context"
            case data = "Data"
            case listOver = "ListOver"
            case sqlFlag = "SqlFlag"
            case requestId = "RequestId"
        }
    }

    /// 搜索CLS新版本攻击日志
    ///
    /// 新版本CLS接口存在参数变化，query改成了query_string支持lucence语法接口搜索查询。
    @inlinable
    public func searchAttackLog(_ input: SearchAttackLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAttackLogResponse> {
        self.client.execute(action: "SearchAttackLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索CLS新版本攻击日志
    ///
    /// 新版本CLS接口存在参数变化，query改成了query_string支持lucence语法接口搜索查询。
    @inlinable
    public func searchAttackLog(_ input: SearchAttackLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchAttackLogResponse {
        try await self.client.execute(action: "SearchAttackLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索CLS新版本攻击日志
    ///
    /// 新版本CLS接口存在参数变化，query改成了query_string支持lucence语法接口搜索查询。
    @inlinable
    public func searchAttackLog(domain: String, startTime: Date, endTime: Date, context: String, queryString: String, count: Int64? = nil, sort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAttackLogResponse> {
        self.searchAttackLog(.init(domain: domain, startTime: startTime, endTime: endTime, context: context, queryString: queryString, count: count, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索CLS新版本攻击日志
    ///
    /// 新版本CLS接口存在参数变化，query改成了query_string支持lucence语法接口搜索查询。
    @inlinable
    public func searchAttackLog(domain: String, startTime: Date, endTime: Date, context: String, queryString: String, count: Int64? = nil, sort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchAttackLogResponse {
        try await self.searchAttackLog(.init(domain: domain, startTime: startTime, endTime: endTime, context: context, queryString: queryString, count: count, sort: sort), region: region, logger: logger, on: eventLoop)
    }
}
