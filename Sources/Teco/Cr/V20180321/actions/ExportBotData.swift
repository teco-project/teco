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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cr {
    /// ExportBotData请求参数结构体
    public struct ExportBotDataRequest: TCRequestModel {
        /// 模块名。默认值（固定）：AiApi
        public let module: String

        /// 操作名。默认值（固定）：ExportBotData
        public let operation: String

        /// 业务日期。YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var bizDate: Date

        /// 任务ID，二者必填一个
        public let botId: String?

        /// 任务名称，二者必填一个
        public let botName: String?

        public init(module: String, operation: String, bizDate: Date, botId: String? = nil, botName: String? = nil) {
            self.module = module
            self.operation = operation
            self._bizDate = .init(wrappedValue: bizDate)
            self.botId = botId
            self.botName = botName
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case bizDate = "BizDate"
            case botId = "BotId"
            case botName = "BotName"
        }
    }

    /// ExportBotData返回参数结构体
    public struct ExportBotDataResponse: TCResponseModel {
        /// 导出文件列表
        public let data: [BotFileData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 导出机器人数据
    @inlinable
    public func exportBotData(_ input: ExportBotDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBotDataResponse> {
        self.client.execute(action: "ExportBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出机器人数据
    @inlinable
    public func exportBotData(_ input: ExportBotDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBotDataResponse {
        try await self.client.execute(action: "ExportBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出机器人数据
    @inlinable
    public func exportBotData(module: String, operation: String, bizDate: Date, botId: String? = nil, botName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBotDataResponse> {
        let input = ExportBotDataRequest(module: module, operation: operation, bizDate: bizDate, botId: botId, botName: botName)
        return self.client.execute(action: "ExportBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出机器人数据
    @inlinable
    public func exportBotData(module: String, operation: String, bizDate: Date, botId: String? = nil, botName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBotDataResponse {
        let input = ExportBotDataRequest(module: module, operation: operation, bizDate: bizDate, botId: botId, botName: botName)
        return try await self.client.execute(action: "ExportBotData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
