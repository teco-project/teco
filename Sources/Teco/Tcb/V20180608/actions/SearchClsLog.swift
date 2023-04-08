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

import TecoCore

extension Tcb {
    /// SearchClsLog请求参数结构体
    public struct SearchClsLogRequest: TCRequestModel {
        /// 环境唯一ID
        public let envId: String

        /// 查询起始时间条件
        public let startTime: String

        /// 查询结束时间条件
        public let endTime: String

        /// 查询语句，详情参考 https://cloud.tencent.com/document/product/614/47044
        public let queryString: String

        /// 单次要返回的日志条数，单次返回的最大条数为100
        public let limit: UInt64

        /// 加载更多使用，透传上次返回的 context 值，获取后续的日志内容，通过游标最多可获取10000条，请尽可能缩小时间范围
        public let context: String?

        /// 按时间排序 asc（升序）或者 desc（降序），默认为 desc
        public let sort: String?

        /// 是否使用Lucene语法，默认为false
        public let useLucene: Bool?

        public init(envId: String, startTime: String, endTime: String, queryString: String, limit: UInt64, context: String? = nil, sort: String? = nil, useLucene: Bool? = nil) {
            self.envId = envId
            self.startTime = startTime
            self.endTime = endTime
            self.queryString = queryString
            self.limit = limit
            self.context = context
            self.sort = sort
            self.useLucene = useLucene
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case queryString = "QueryString"
            case limit = "Limit"
            case context = "Context"
            case sort = "Sort"
            case useLucene = "UseLucene"
        }
    }

    /// SearchClsLog返回参数结构体
    public struct SearchClsLogResponse: TCResponseModel {
        /// 日志内容结果
        public let logResults: LogResObject

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logResults = "LogResults"
            case requestId = "RequestId"
        }
    }

    /// 搜索CLS日志
    ///
    /// 搜索CLS日志，TCB角色秘钥访问
    @inlinable
    public func searchClsLog(_ input: SearchClsLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClsLogResponse> {
        self.client.execute(action: "SearchClsLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索CLS日志
    ///
    /// 搜索CLS日志，TCB角色秘钥访问
    @inlinable
    public func searchClsLog(_ input: SearchClsLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClsLogResponse {
        try await self.client.execute(action: "SearchClsLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索CLS日志
    ///
    /// 搜索CLS日志，TCB角色秘钥访问
    @inlinable
    public func searchClsLog(envId: String, startTime: String, endTime: String, queryString: String, limit: UInt64, context: String? = nil, sort: String? = nil, useLucene: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchClsLogResponse> {
        self.searchClsLog(.init(envId: envId, startTime: startTime, endTime: endTime, queryString: queryString, limit: limit, context: context, sort: sort, useLucene: useLucene), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索CLS日志
    ///
    /// 搜索CLS日志，TCB角色秘钥访问
    @inlinable
    public func searchClsLog(envId: String, startTime: String, endTime: String, queryString: String, limit: UInt64, context: String? = nil, sort: String? = nil, useLucene: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchClsLogResponse {
        try await self.searchClsLog(.init(envId: envId, startTime: startTime, endTime: endTime, queryString: queryString, limit: limit, context: context, sort: sort, useLucene: useLucene), region: region, logger: logger, on: eventLoop)
    }
}
