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
    /// QueryCallList请求参数结构体
    public struct QueryCallListRequest: TCRequestModel {
        /// 模块名。默认值（固定）：AiApi
        public let module: String

        /// 操作名。默认值（固定）：QueryCallList
        public let operation: String

        /// 业务日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var bizDate: Date

        /// 任务ID，二者必填一个
        public let botId: String?

        /// 任务名称，二者必填一个
        public let botName: String?

        /// 通过API或平台上传的文件完整名称
        public let fileName: String?

        public init(module: String, operation: String, bizDate: Date, botId: String? = nil, botName: String? = nil, fileName: String? = nil) {
            self.module = module
            self.operation = operation
            self._bizDate = .init(wrappedValue: bizDate)
            self.botId = botId
            self.botName = botName
            self.fileName = fileName
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case bizDate = "BizDate"
            case botId = "BotId"
            case botName = "BotName"
            case fileName = "FileName"
        }
    }

    /// QueryCallList返回参数结构体
    public struct QueryCallListResponse: TCResponseModel {
        /// 任务作业状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callList: [CallInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case callList = "CallList"
            case requestId = "RequestId"
        }
    }

    /// 机器人任务查询
    @inlinable
    public func queryCallList(_ input: QueryCallListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCallListResponse> {
        self.client.execute(action: "QueryCallList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 机器人任务查询
    @inlinable
    public func queryCallList(_ input: QueryCallListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCallListResponse {
        try await self.client.execute(action: "QueryCallList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 机器人任务查询
    @inlinable
    public func queryCallList(module: String, operation: String, bizDate: Date, botId: String? = nil, botName: String? = nil, fileName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCallListResponse> {
        self.queryCallList(QueryCallListRequest(module: module, operation: operation, bizDate: bizDate, botId: botId, botName: botName, fileName: fileName), logger: logger, on: eventLoop)
    }

    /// 机器人任务查询
    @inlinable
    public func queryCallList(module: String, operation: String, bizDate: Date, botId: String? = nil, botName: String? = nil, fileName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCallListResponse {
        try await self.queryCallList(QueryCallListRequest(module: module, operation: operation, bizDate: bizDate, botId: botId, botName: botName, fileName: fileName), logger: logger, on: eventLoop)
    }
}
