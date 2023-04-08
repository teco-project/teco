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

extension Iotvideo {
    /// DescribeAIModelChannel请求参数结构体
    public struct DescribeAIModelChannelRequest: TCRequestModel {
        /// 模型ID
        public let modelId: String

        /// 产品ID
        public let productId: String

        public init(modelId: String, productId: String) {
            self.modelId = modelId
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case productId = "ProductId"
        }
    }

    /// DescribeAIModelChannel返回参数结构体
    public struct DescribeAIModelChannelResponse: TCResponseModel {
        /// 推送类型。ckafka：消息队列；forward：http/https推送
        public let type: String

        /// 第三方推送地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let forwardAddress: String?

        /// 第三方推送密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let forwardKey: String?

        /// ckafka地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cKafkaRegion: String?

        /// ckafka实例
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cKafkaInstance: String?

        /// ckafka订阅主题
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cKafkaTopic: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case forwardAddress = "ForwardAddress"
            case forwardKey = "ForwardKey"
            case cKafkaRegion = "CKafkaRegion"
            case cKafkaInstance = "CKafkaInstance"
            case cKafkaTopic = "CKafkaTopic"
            case requestId = "RequestId"
        }
    }

    /// 查看AI推理结果推送配置
    @inlinable
    public func describeAIModelChannel(_ input: DescribeAIModelChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelChannelResponse> {
        self.client.execute(action: "DescribeAIModelChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看AI推理结果推送配置
    @inlinable
    public func describeAIModelChannel(_ input: DescribeAIModelChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelChannelResponse {
        try await self.client.execute(action: "DescribeAIModelChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看AI推理结果推送配置
    @inlinable
    public func describeAIModelChannel(modelId: String, productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAIModelChannelResponse> {
        self.describeAIModelChannel(.init(modelId: modelId, productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看AI推理结果推送配置
    @inlinable
    public func describeAIModelChannel(modelId: String, productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelChannelResponse {
        try await self.describeAIModelChannel(.init(modelId: modelId, productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
