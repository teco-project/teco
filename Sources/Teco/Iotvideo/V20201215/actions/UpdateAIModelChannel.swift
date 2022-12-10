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

extension Iotvideo {
    /// 更新AI推理结果推送配置
    @inlinable
    public func updateAIModelChannel(_ input: UpdateAIModelChannelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateAIModelChannelResponse > {
        self.client.execute(action: "UpdateAIModelChannel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新AI推理结果推送配置
    @inlinable
    public func updateAIModelChannel(_ input: UpdateAIModelChannelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAIModelChannelResponse {
        try await self.client.execute(action: "UpdateAIModelChannel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateAIModelChannel请求参数结构体
    public struct UpdateAIModelChannelRequest: TCRequestModel {
        /// 模型ID
        public let modelId: String
        
        /// 产品ID
        public let productId: String
        
        /// 推送类型。ckafka：消息队列；forward：http/https推送
        public let type: String
        
        /// 第三方推送地址
        public let forwardAddress: String?
        
        /// 第三方推送密钥，不填写则腾讯云自动生成。
        public let forwardKey: String?
        
        /// ckafka地域
        public let cKafkaRegion: String?
        
        /// ckafka实例
        public let cKafkaInstance: String?
        
        /// ckafka订阅主题
        public let cKafkaTopic: String?
        
        public init (modelId: String, productId: String, type: String, forwardAddress: String?, forwardKey: String?, cKafkaRegion: String?, cKafkaInstance: String?, cKafkaTopic: String?) {
            self.modelId = modelId
            self.productId = productId
            self.type = type
            self.forwardAddress = forwardAddress
            self.forwardKey = forwardKey
            self.cKafkaRegion = cKafkaRegion
            self.cKafkaInstance = cKafkaInstance
            self.cKafkaTopic = cKafkaTopic
        }
        
        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case productId = "ProductId"
            case type = "Type"
            case forwardAddress = "ForwardAddress"
            case forwardKey = "ForwardKey"
            case cKafkaRegion = "CKafkaRegion"
            case cKafkaInstance = "CKafkaInstance"
            case cKafkaTopic = "CKafkaTopic"
        }
    }
    
    /// UpdateAIModelChannel返回参数结构体
    public struct UpdateAIModelChannelResponse: TCResponseModel {
        /// 第三方推送密钥，如果选择自动生成则会返回此字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let forwardKey: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case forwardKey = "ForwardKey"
            case requestId = "RequestId"
        }
    }
}
