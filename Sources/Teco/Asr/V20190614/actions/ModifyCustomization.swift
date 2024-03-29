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

extension Asr {
    /// ModifyCustomization请求参数结构体
    public struct ModifyCustomizationRequest: TCRequest {
        /// 要修改的模型ID
        public let modelId: String

        /// 要修改的模型名称，长度需在1-20个字符之间
        public let modelName: String?

        /// 要修改的模型类型，为8k或者16k
        public let modelType: String?

        /// 要修改的模型语料的下载地址，目前仅支持腾讯云cos
        public let textUrl: String?

        public init(modelId: String, modelName: String? = nil, modelType: String? = nil, textUrl: String? = nil) {
            self.modelId = modelId
            self.modelName = modelName
            self.modelType = modelType
            self.textUrl = textUrl
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case modelName = "ModelName"
            case modelType = "ModelType"
            case textUrl = "TextUrl"
        }
    }

    /// ModifyCustomization返回参数结构体
    public struct ModifyCustomizationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新自学习模型
    ///
    /// 用户通过该接口可以更新自学习模型，如模型名称、模型类型、模型语料。
    @inlinable @discardableResult
    public func modifyCustomization(_ input: ModifyCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizationResponse> {
        self.client.execute(action: "ModifyCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新自学习模型
    ///
    /// 用户通过该接口可以更新自学习模型，如模型名称、模型类型、模型语料。
    @inlinable @discardableResult
    public func modifyCustomization(_ input: ModifyCustomizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizationResponse {
        try await self.client.execute(action: "ModifyCustomization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新自学习模型
    ///
    /// 用户通过该接口可以更新自学习模型，如模型名称、模型类型、模型语料。
    @inlinable @discardableResult
    public func modifyCustomization(modelId: String, modelName: String? = nil, modelType: String? = nil, textUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomizationResponse> {
        self.modifyCustomization(.init(modelId: modelId, modelName: modelName, modelType: modelType, textUrl: textUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 更新自学习模型
    ///
    /// 用户通过该接口可以更新自学习模型，如模型名称、模型类型、模型语料。
    @inlinable @discardableResult
    public func modifyCustomization(modelId: String, modelName: String? = nil, modelType: String? = nil, textUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizationResponse {
        try await self.modifyCustomization(.init(modelId: modelId, modelName: modelName, modelType: modelType, textUrl: textUrl), region: region, logger: logger, on: eventLoop)
    }
}
