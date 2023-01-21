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

extension Tat {
    /// PreviewReplacedCommandContent请求参数结构体
    public struct PreviewReplacedCommandContentRequest: TCRequestModel {
        /// 本次预览采用的自定义参数。字段类型为 json encoded string，如：{\"varA\": \"222\"}。
        /// key 为自定义参数名称，value 为该参数的取值。kv 均为字符串型。
        /// 自定义参数最多 20 个。
        /// 自定义参数名称需符合以下规范：字符数目上限 64，可选范围【a-zA-Z0-9-_】。
        /// 如果将预览的 CommandId 设置过 DefaultParameters，本参数可以为空。
        public let parameters: String?

        /// 要进行替换预览的命令，如果有设置过 DefaultParameters，会与 Parameters 进行叠加，后者覆盖前者。
        /// CommandId 与 Content，必须且只能提供一个。
        public let commandId: String?

        /// 要预览的命令内容，经 Base64 编码，长度不可超过 64KB。
        /// CommandId 与 Content，必须且只能提供一个。
        public let content: String?

        public init(parameters: String? = nil, commandId: String? = nil, content: String? = nil) {
            self.parameters = parameters
            self.commandId = commandId
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case parameters = "Parameters"
            case commandId = "CommandId"
            case content = "Content"
        }
    }

    /// PreviewReplacedCommandContent返回参数结构体
    public struct PreviewReplacedCommandContentResponse: TCResponseModel {
        /// 自定义参数替换后的，经Base64编码的命令内容。
        public let replacedContent: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case replacedContent = "ReplacedContent"
            case requestId = "RequestId"
        }
    }

    /// 命令预览
    ///
    /// 此接口用于预览自定义参数替换后的命令内容。不会触发真实执行。
    @inlinable
    public func previewReplacedCommandContent(_ input: PreviewReplacedCommandContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PreviewReplacedCommandContentResponse> {
        self.client.execute(action: "PreviewReplacedCommandContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 命令预览
    ///
    /// 此接口用于预览自定义参数替换后的命令内容。不会触发真实执行。
    @inlinable
    public func previewReplacedCommandContent(_ input: PreviewReplacedCommandContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PreviewReplacedCommandContentResponse {
        try await self.client.execute(action: "PreviewReplacedCommandContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 命令预览
    ///
    /// 此接口用于预览自定义参数替换后的命令内容。不会触发真实执行。
    @inlinable
    public func previewReplacedCommandContent(parameters: String? = nil, commandId: String? = nil, content: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PreviewReplacedCommandContentResponse> {
        self.previewReplacedCommandContent(PreviewReplacedCommandContentRequest(parameters: parameters, commandId: commandId, content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 命令预览
    ///
    /// 此接口用于预览自定义参数替换后的命令内容。不会触发真实执行。
    @inlinable
    public func previewReplacedCommandContent(parameters: String? = nil, commandId: String? = nil, content: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PreviewReplacedCommandContentResponse {
        try await self.previewReplacedCommandContent(PreviewReplacedCommandContentRequest(parameters: parameters, commandId: commandId, content: content), region: region, logger: logger, on: eventLoop)
    }
}
