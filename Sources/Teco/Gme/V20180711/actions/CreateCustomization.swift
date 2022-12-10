//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gme {
    /// 创建语音消息转文本自学习模型
    ///
    /// 用户使用该接口可以创建语音消息转文本自学习模型，以供识别调用
    @inlinable
    public func createCustomization(_ input: CreateCustomizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCustomizationResponse > {
        self.client.execute(action: "CreateCustomization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建语音消息转文本自学习模型
    ///
    /// 用户使用该接口可以创建语音消息转文本自学习模型，以供识别调用
    @inlinable
    public func createCustomization(_ input: CreateCustomizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomizationResponse {
        try await self.client.execute(action: "CreateCustomization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCustomization请求参数结构体
    public struct CreateCustomizationRequest: TCRequestModel {
        /// 应用 ID，登录控制台创建应用得到的AppID
        public let bizId: Int64
        
        /// 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        public let textUrl: String
        
        /// 模型名称，名称长度不超过36，默认为BizId。
        public let modelName: String?
        
        public init (bizId: Int64, textUrl: String, modelName: String?) {
            self.bizId = bizId
            self.textUrl = textUrl
            self.modelName = modelName
        }
        
        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case textUrl = "TextUrl"
            case modelName = "ModelName"
        }
    }
    
    /// CreateCustomization返回参数结构体
    public struct CreateCustomizationResponse: TCResponseModel {
        /// 模型ID
        public let modelId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case requestId = "RequestId"
        }
    }
}