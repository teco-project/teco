//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tms {
    /// TextModeration请求参数结构体
    public struct TextModerationRequest: TCRequestModel {
        /// 文本内容Base64编码。限制原文长度不能超过10000个unicode字符
        public let content: String

        /// 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略
        public let bizType: String?

        /// 数据ID，英文字母、下划线、-组成，不超过64个字符
        public let dataId: String?

        /// 账号相关信息字段，填入后可识别违规风险账号
        public let user: User?

        /// 设备相关信息字段，填入后可识别违规风险设备
        public let device: Device?

        public init(content: String, bizType: String? = nil, dataId: String? = nil, user: User? = nil, device: Device? = nil) {
            self.content = content
            self.bizType = bizType
            self.dataId = dataId
            self.user = user
            self.device = device
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case bizType = "BizType"
            case dataId = "DataId"
            case user = "User"
            case device = "Device"
        }
    }

    /// TextModeration返回参数结构体
    public struct TextModerationResponse: TCResponseModel {
        /// 您在入参时所填入的Biztype参数
        public let bizType: String

        /// 数据是否属于恶意类型，0：正常 1：可疑
        public let evilFlag: Int64

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库，以及令人反感、不安全或不适宜的内容类型
        public let label: String

        /// 建议您拿到判断结果后的执行操作
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 文本命中的关键词信息，用于提示您文本违规的具体原因，可能会返回多个命中的关键词。（如：加我微信）
        /// 如返回值为空，Score不为空，即识别结果（Label）是来自于语义模型判断的返回值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?

        /// 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        /// （如：色情 99.99，则该样本属于色情的置信度非常高。）
        public let score: Int64

        /// 接口识别样本后返回的详细结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailResults: [DetailResults]?

        /// 接口识别样本中存在违规账号风险的检测结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskDetails: [RiskDetails]?

        /// 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 请求参数中的DataId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case evilFlag = "EvilFlag"
            case label = "Label"
            case suggestion = "Suggestion"
            case keywords = "Keywords"
            case score = "Score"
            case detailResults = "DetailResults"
            case riskDetails = "RiskDetails"
            case extra = "Extra"
            case dataId = "DataId"
            case requestId = "RequestId"
        }
    }

    /// 文本内容安全
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别可能令人反感、不安全或不适宜的文本内容，同时支持用户配置词库黑白名单，打击自定义识别类型的图片。
    @inlinable
    public func textModeration(_ input: TextModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextModerationResponse> {
        self.client.execute(action: "TextModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本内容安全
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别可能令人反感、不安全或不适宜的文本内容，同时支持用户配置词库黑白名单，打击自定义识别类型的图片。
    @inlinable
    public func textModeration(_ input: TextModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextModerationResponse {
        try await self.client.execute(action: "TextModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本内容安全
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别可能令人反感、不安全或不适宜的文本内容，同时支持用户配置词库黑白名单，打击自定义识别类型的图片。
    @inlinable
    public func textModeration(content: String, bizType: String? = nil, dataId: String? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextModerationResponse> {
        self.textModeration(TextModerationRequest(content: content, bizType: bizType, dataId: dataId, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }

    /// 文本内容安全
    ///
    /// 文本内容检测（Text Moderation）服务使用了深度学习技术，识别可能令人反感、不安全或不适宜的文本内容，同时支持用户配置词库黑白名单，打击自定义识别类型的图片。
    @inlinable
    public func textModeration(content: String, bizType: String? = nil, dataId: String? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextModerationResponse {
        try await self.textModeration(TextModerationRequest(content: content, bizType: bizType, dataId: dataId, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }
}
