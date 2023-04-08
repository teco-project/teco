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

extension Live {
    /// CreateLiveCallbackTemplate请求参数结构体
    public struct CreateLiveCallbackTemplateRequest: TCRequestModel {
        /// 模板名称。
        /// 长度上限：255字节。
        /// 仅支持中文、英文、数字、_、-。
        public let templateName: String

        /// 描述信息。
        /// 长度上限：1024字节。
        /// 仅支持中文、英文、数字、_、-。
        public let description: String?

        /// 开播回调 URL，
        /// 相关协议文档：[事件消息通知](/document/product/267/32744)。
        public let streamBeginNotifyUrl: String?

        /// 断流回调 URL，
        /// 相关协议文档：[事件消息通知](/document/product/267/32744)。
        public let streamEndNotifyUrl: String?

        /// 录制回调 URL，
        /// 相关协议文档：[事件消息通知](/document/product/267/32744)。
        public let recordNotifyUrl: String?

        /// 截图回调 URL，
        /// 相关协议文档：[事件消息通知](/document/product/267/32744)。
        public let snapshotNotifyUrl: String?

        /// 鉴黄回调 URL，
        /// 相关协议文档：[事件消息通知](/document/product/267/32741)。
        public let pornCensorshipNotifyUrl: String?

        /// 回调 Key，回调 URL 公用，回调签名详见事件消息通知文档。
        /// [事件消息通知](/document/product/267/32744)。
        public let callbackKey: String?

        /// 参数已弃用。
        public let streamMixNotifyUrl: String?

        /// 推流异常回调 URL。
        public let pushExceptionNotifyUrl: String?

        public init(templateName: String, description: String? = nil, streamBeginNotifyUrl: String? = nil, streamEndNotifyUrl: String? = nil, recordNotifyUrl: String? = nil, snapshotNotifyUrl: String? = nil, pornCensorshipNotifyUrl: String? = nil, callbackKey: String? = nil, streamMixNotifyUrl: String? = nil, pushExceptionNotifyUrl: String? = nil) {
            self.templateName = templateName
            self.description = description
            self.streamBeginNotifyUrl = streamBeginNotifyUrl
            self.streamEndNotifyUrl = streamEndNotifyUrl
            self.recordNotifyUrl = recordNotifyUrl
            self.snapshotNotifyUrl = snapshotNotifyUrl
            self.pornCensorshipNotifyUrl = pornCensorshipNotifyUrl
            self.callbackKey = callbackKey
            self.streamMixNotifyUrl = streamMixNotifyUrl
            self.pushExceptionNotifyUrl = pushExceptionNotifyUrl
        }

        enum CodingKeys: String, CodingKey {
            case templateName = "TemplateName"
            case description = "Description"
            case streamBeginNotifyUrl = "StreamBeginNotifyUrl"
            case streamEndNotifyUrl = "StreamEndNotifyUrl"
            case recordNotifyUrl = "RecordNotifyUrl"
            case snapshotNotifyUrl = "SnapshotNotifyUrl"
            case pornCensorshipNotifyUrl = "PornCensorshipNotifyUrl"
            case callbackKey = "CallbackKey"
            case streamMixNotifyUrl = "StreamMixNotifyUrl"
            case pushExceptionNotifyUrl = "PushExceptionNotifyUrl"
        }
    }

    /// CreateLiveCallbackTemplate返回参数结构体
    public struct CreateLiveCallbackTemplateResponse: TCResponseModel {
        /// 模板ID。
        public let templateId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }

    /// 创建回调模板
    ///
    /// 创建回调模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveCallbackRule](/document/product/267/32638)接口将模板 ID 绑定到域名/路径使用。
    /// <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。
    /// 注意：至少填写一个回调 URL。
    @inlinable
    public func createLiveCallbackTemplate(_ input: CreateLiveCallbackTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveCallbackTemplateResponse> {
        self.client.execute(action: "CreateLiveCallbackTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建回调模板
    ///
    /// 创建回调模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveCallbackRule](/document/product/267/32638)接口将模板 ID 绑定到域名/路径使用。
    /// <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。
    /// 注意：至少填写一个回调 URL。
    @inlinable
    public func createLiveCallbackTemplate(_ input: CreateLiveCallbackTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveCallbackTemplateResponse {
        try await self.client.execute(action: "CreateLiveCallbackTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建回调模板
    ///
    /// 创建回调模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveCallbackRule](/document/product/267/32638)接口将模板 ID 绑定到域名/路径使用。
    /// <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。
    /// 注意：至少填写一个回调 URL。
    @inlinable
    public func createLiveCallbackTemplate(templateName: String, description: String? = nil, streamBeginNotifyUrl: String? = nil, streamEndNotifyUrl: String? = nil, recordNotifyUrl: String? = nil, snapshotNotifyUrl: String? = nil, pornCensorshipNotifyUrl: String? = nil, callbackKey: String? = nil, streamMixNotifyUrl: String? = nil, pushExceptionNotifyUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveCallbackTemplateResponse> {
        self.createLiveCallbackTemplate(.init(templateName: templateName, description: description, streamBeginNotifyUrl: streamBeginNotifyUrl, streamEndNotifyUrl: streamEndNotifyUrl, recordNotifyUrl: recordNotifyUrl, snapshotNotifyUrl: snapshotNotifyUrl, pornCensorshipNotifyUrl: pornCensorshipNotifyUrl, callbackKey: callbackKey, streamMixNotifyUrl: streamMixNotifyUrl, pushExceptionNotifyUrl: pushExceptionNotifyUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建回调模板
    ///
    /// 创建回调模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveCallbackRule](/document/product/267/32638)接口将模板 ID 绑定到域名/路径使用。
    /// <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。
    /// 注意：至少填写一个回调 URL。
    @inlinable
    public func createLiveCallbackTemplate(templateName: String, description: String? = nil, streamBeginNotifyUrl: String? = nil, streamEndNotifyUrl: String? = nil, recordNotifyUrl: String? = nil, snapshotNotifyUrl: String? = nil, pornCensorshipNotifyUrl: String? = nil, callbackKey: String? = nil, streamMixNotifyUrl: String? = nil, pushExceptionNotifyUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveCallbackTemplateResponse {
        try await self.createLiveCallbackTemplate(.init(templateName: templateName, description: description, streamBeginNotifyUrl: streamBeginNotifyUrl, streamEndNotifyUrl: streamEndNotifyUrl, recordNotifyUrl: recordNotifyUrl, snapshotNotifyUrl: snapshotNotifyUrl, pornCensorshipNotifyUrl: pornCensorshipNotifyUrl, callbackKey: callbackKey, streamMixNotifyUrl: streamMixNotifyUrl, pushExceptionNotifyUrl: pushExceptionNotifyUrl), region: region, logger: logger, on: eventLoop)
    }
}
