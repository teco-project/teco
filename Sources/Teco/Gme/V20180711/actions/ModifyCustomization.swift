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

extension Gme {
    /// ModifyCustomization请求参数结构体
    public struct ModifyCustomizationRequest: TCRequestModel {
        /// 应用 ID，登录控制台创建应用得到的AppID
        public let bizId: Int64

        /// 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        public let textUrl: String

        /// 修改的模型ID
        public let modelId: String

        public init(bizId: Int64, textUrl: String, modelId: String) {
            self.bizId = bizId
            self.textUrl = textUrl
            self.modelId = modelId
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case textUrl = "TextUrl"
            case modelId = "ModelId"
        }
    }

    /// ModifyCustomization返回参数结构体
    public struct ModifyCustomizationResponse: TCResponseModel {
        /// 返回值。0为成功，非0为失败。
        public let errorCode: Int64

        /// 模型ID
        public let modelId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case modelId = "ModelId"
            case requestId = "RequestId"
        }
    }

    /// 更新语音消息转文本热句模型
    ///
    /// 用户通过该接口可以更新语音消息转文本热句模型。
    @inlinable
    public func modifyCustomization(_ input: ModifyCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizationResponse> {
        self.client.execute(action: "ModifyCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新语音消息转文本热句模型
    ///
    /// 用户通过该接口可以更新语音消息转文本热句模型。
    @inlinable
    public func modifyCustomization(_ input: ModifyCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizationResponse {
        try await self.client.execute(action: "ModifyCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新语音消息转文本热句模型
    ///
    /// 用户通过该接口可以更新语音消息转文本热句模型。
    @inlinable
    public func modifyCustomization(bizId: Int64, textUrl: String, modelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizationResponse> {
        self.modifyCustomization(.init(bizId: bizId, textUrl: textUrl, modelId: modelId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新语音消息转文本热句模型
    ///
    /// 用户通过该接口可以更新语音消息转文本热句模型。
    @inlinable
    public func modifyCustomization(bizId: Int64, textUrl: String, modelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizationResponse {
        try await self.modifyCustomization(.init(bizId: bizId, textUrl: textUrl, modelId: modelId), region: region, logger: logger, on: eventLoop)
    }
}
