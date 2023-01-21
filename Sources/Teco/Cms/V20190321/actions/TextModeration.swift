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

extension Cms {
    /// TextModeration请求参数结构体
    public struct TextModerationRequest: TCRequestModel {
        /// 文本内容Base64编码。原文长度需小于15000字节，即5000个汉字以内。
        public let content: String

        /// 设备相关信息
        public let device: Device?

        /// 用户相关信息
        public let user: User?

        /// 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略
        public let bizType: UInt64?

        /// 数据ID，英文字母、下划线、-组成，不超过64个字符
        public let dataId: String?

        /// 业务应用ID
        public let sdkAppId: UInt64?

        public init(content: String, device: Device? = nil, user: User? = nil, bizType: UInt64? = nil, dataId: String? = nil, sdkAppId: UInt64? = nil) {
            self.content = content
            self.device = device
            self.user = user
            self.bizType = bizType
            self.dataId = dataId
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case device = "Device"
            case user = "User"
            case bizType = "BizType"
            case dataId = "DataId"
            case sdkAppId = "SdkAppId"
        }
    }

    /// TextModeration返回参数结构体
    public struct TextModerationResponse: TCResponseModel {
        /// 识别结果
        public let data: TextData

        /// 业务返回码
        public let businessCode: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case businessCode = "BusinessCode"
            case requestId = "RequestId"
        }
    }

    /// 文本内容检测
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别涉黄、涉政、涉恐等有害内容，同时支持用户配置词库，打击自定义的违规文本。
    @inlinable
    public func textModeration(_ input: TextModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextModerationResponse> {
        self.client.execute(action: "TextModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本内容检测
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别涉黄、涉政、涉恐等有害内容，同时支持用户配置词库，打击自定义的违规文本。
    @inlinable
    public func textModeration(_ input: TextModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextModerationResponse {
        try await self.client.execute(action: "TextModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本内容检测
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别涉黄、涉政、涉恐等有害内容，同时支持用户配置词库，打击自定义的违规文本。
    @inlinable
    public func textModeration(content: String, device: Device? = nil, user: User? = nil, bizType: UInt64? = nil, dataId: String? = nil, sdkAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextModerationResponse> {
        self.textModeration(TextModerationRequest(content: content, device: device, user: user, bizType: bizType, dataId: dataId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 文本内容检测
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别涉黄、涉政、涉恐等有害内容，同时支持用户配置词库，打击自定义的违规文本。
    @inlinable
    public func textModeration(content: String, device: Device? = nil, user: User? = nil, bizType: UInt64? = nil, dataId: String? = nil, sdkAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextModerationResponse {
        try await self.textModeration(TextModerationRequest(content: content, device: device, user: user, bizType: bizType, dataId: dataId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
