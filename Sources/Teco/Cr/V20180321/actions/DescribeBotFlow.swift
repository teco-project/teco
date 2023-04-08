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

extension Cr {
    /// DescribeBotFlow请求参数结构体
    public struct DescribeBotFlowRequest: TCRequestModel {
        /// 模块名。默认值（固定）：AiApi
        public let module: String

        /// 操作名。默认值（固定）：GetFlow
        public let operation: String

        public init(module: String, operation: String) {
            self.module = module
            self.operation = operation
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
        }
    }

    /// DescribeBotFlow返回参数结构体
    public struct DescribeBotFlowResponse: TCResponseModel {
        /// 机器人对话流列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let botFlowList: [BotFlow]?

        /// 短信签名列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smsSignList: [SmsSign]?

        /// 短信模板列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smsTemplateList: [SmsTemplate]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case botFlowList = "BotFlowList"
            case smsSignList = "SmsSignList"
            case smsTemplateList = "SmsTemplateList"
            case requestId = "RequestId"
        }
    }

    /// 查询机器人对话流
    @inlinable
    public func describeBotFlow(_ input: DescribeBotFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotFlowResponse> {
        self.client.execute(action: "DescribeBotFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询机器人对话流
    @inlinable
    public func describeBotFlow(_ input: DescribeBotFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotFlowResponse {
        try await self.client.execute(action: "DescribeBotFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询机器人对话流
    @inlinable
    public func describeBotFlow(module: String, operation: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotFlowResponse> {
        self.describeBotFlow(.init(module: module, operation: operation), region: region, logger: logger, on: eventLoop)
    }

    /// 查询机器人对话流
    @inlinable
    public func describeBotFlow(module: String, operation: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBotFlowResponse {
        try await self.describeBotFlow(.init(module: module, operation: operation), region: region, logger: logger, on: eventLoop)
    }
}
