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

extension Cr {
    /// QueryRecordList请求参数结构体
    public struct QueryRecordListRequest: TCRequestModel {
        /// 模块名。AiApi
        public let module: String

        /// 操作名。QueryRecordList
        public let operation: String

        /// 偏移值
        public let offset: Int64

        /// 偏移位移，最大20
        public let limit: Int64

        /// 任务ID，二者必填一个
        public let botId: String?

        /// 任务名称，二者必填一个
        public let botName: String?

        /// 被叫号码
        public let calledPhone: String?

        /// 开始日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startBizDate: Date?

        /// 结束日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endBizDate: Date?

        public init(module: String, operation: String, offset: Int64, limit: Int64, botId: String? = nil, botName: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil) {
            self.module = module
            self.operation = operation
            self.offset = offset
            self.limit = limit
            self.botId = botId
            self.botName = botName
            self.calledPhone = calledPhone
            self._startBizDate = .init(wrappedValue: startBizDate)
            self._endBizDate = .init(wrappedValue: endBizDate)
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case offset = "Offset"
            case limit = "Limit"
            case botId = "BotId"
            case botName = "BotName"
            case calledPhone = "CalledPhone"
            case startBizDate = "StartBizDate"
            case endBizDate = "EndBizDate"
        }
    }

    /// QueryRecordList返回参数结构体
    public struct QueryRecordListResponse: TCResponseModel {
        /// 录音列表。
        public let recordList: [RecordInfo]

        /// 总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case recordList = "RecordList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(_ input: QueryRecordListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryRecordListResponse> {
        self.client.execute(action: "QueryRecordList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(_ input: QueryRecordListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryRecordListResponse {
        try await self.client.execute(action: "QueryRecordList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(module: String, operation: String, offset: Int64, limit: Int64, botId: String? = nil, botName: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryRecordListResponse> {
        self.queryRecordList(QueryRecordListRequest(module: module, operation: operation, offset: offset, limit: limit, botId: botId, botName: botName, calledPhone: calledPhone, startBizDate: startBizDate, endBizDate: endBizDate), logger: logger, on: eventLoop)
    }

    /// 查询录音列表
    @inlinable
    public func queryRecordList(module: String, operation: String, offset: Int64, limit: Int64, botId: String? = nil, botName: String? = nil, calledPhone: String? = nil, startBizDate: Date? = nil, endBizDate: Date? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryRecordListResponse {
        try await self.queryRecordList(QueryRecordListRequest(module: module, operation: operation, offset: offset, limit: limit, botId: botId, botName: botName, calledPhone: calledPhone, startBizDate: startBizDate, endBizDate: endBizDate), logger: logger, on: eventLoop)
    }
}
