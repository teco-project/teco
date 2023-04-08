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

extension Tms {
    /// TextModeration请求参数结构体
    public struct TextModerationRequest: TCRequestModel {
        /// 该字段表示待检测对象的文本内容，文本需要按utf-8格式编码，长度不能超过10000个字符（按unicode编码计算），并进行 Base64加密
        public let content: String

        /// 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。<br>备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype
        public let bizType: String?

        /// 该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**
        public let dataId: String?

        /// 该字段表示待检测对象对应的用户相关信息，传入后可便于甄别相应违规风险用户
        public let user: User?

        /// 该字段表示待检测对象对应的设备相关信息，传入后可便于甄别相应违规风险设备
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
        /// 该字段用于返回请求参数中的BizType参数
        public let bizType: String

        /// 该字段用于返回检测结果（DetailResults）中所对应的**优先级最高的恶意标签**，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型
        public let label: String

        /// 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        public let suggestion: String

        /// 该字段用于返回当前标签（Label）下被检测文本命中的关键词信息，用于标注文本违规的具体原因（如：*加我微信*）。该参数可能会有多个返回值，代表命中的多个关键词；如返回值为空且Score不为空，则代表识别结果所对应的恶意标签（Label）是来自于语义模型判断的返回值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?

        /// 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容
        public let score: Int64

        /// 该字段用于返回基于文本风险库审核的详细结果，返回值信息可参阅对应数据结构（DetailResults）的详细描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailResults: [DetailResults]?

        /// 该字段用于返回文本检测中存在违规风险的账号检测结果，主要包括违规风险类别和风险等级信息，具体内容可参阅对应数据结构（RiskDetails）的详细描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskDetails: [RiskDetails]?

        /// 该字段用于返回根据您的需求配置的额外附加信息（Extra），如未配置则默认返回值为空。<br>备注：不同客户或Biztype下返回信息不同，如需配置该字段请提交工单咨询或联系售后专员处理
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 该字段用于返回检测对象对应请求参数中的DataId，与输入的DataId字段中的内容对应
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?

        /// 该字段用于返回当前标签（Label）下的二级标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该字段用于返回上下文关联文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contextText: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case label = "Label"
            case suggestion = "Suggestion"
            case keywords = "Keywords"
            case score = "Score"
            case detailResults = "DetailResults"
            case riskDetails = "RiskDetails"
            case extra = "Extra"
            case dataId = "DataId"
            case subLabel = "SubLabel"
            case contextText = "ContextText"
            case requestId = "RequestId"
        }
    }

    /// 文本内容安全
    ///
    /// 本接口（Text Moderation）用于提交文本内容进行智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通文本内容安全服务](https://console.cloud.tencent.com/cms/text/package) 并调整好对应的业务配置。
    ///
    /// ### 接口使用说明
    /// - 前往“[内容安全控制台-文本内容安全](https://console.cloud.tencent.com/cms/text/package)”开启使用文本内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万条**文本识别额度，有效期为1个月。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云文本内容安全定价](https://cloud.tencent.com/product/tms/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对文本文件进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规文本内容；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略，可在控制台文本内容安全-策略管理中配置；
    /// - 支持用户自定义配置词库黑白名单，打击自定义识别类型的违规文本（目前仅支持黑名单配置）；
    /// - 支持在审核文本内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 文本内容大小支持：文本原文长度不能超过unicode编码长度10000个字符；
    /// - 文本审核语言支持：目前支持中文、英文、阿拉伯数字的检测；
    /// - 默认接口请求频率限制：**1000次/秒**，超过该频率限制则接口会报错。
    @inlinable
    public func textModeration(_ input: TextModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextModerationResponse> {
        self.client.execute(action: "TextModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本内容安全
    ///
    /// 本接口（Text Moderation）用于提交文本内容进行智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通文本内容安全服务](https://console.cloud.tencent.com/cms/text/package) 并调整好对应的业务配置。
    ///
    /// ### 接口使用说明
    /// - 前往“[内容安全控制台-文本内容安全](https://console.cloud.tencent.com/cms/text/package)”开启使用文本内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万条**文本识别额度，有效期为1个月。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云文本内容安全定价](https://cloud.tencent.com/product/tms/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对文本文件进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规文本内容；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略，可在控制台文本内容安全-策略管理中配置；
    /// - 支持用户自定义配置词库黑白名单，打击自定义识别类型的违规文本（目前仅支持黑名单配置）；
    /// - 支持在审核文本内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 文本内容大小支持：文本原文长度不能超过unicode编码长度10000个字符；
    /// - 文本审核语言支持：目前支持中文、英文、阿拉伯数字的检测；
    /// - 默认接口请求频率限制：**1000次/秒**，超过该频率限制则接口会报错。
    @inlinable
    public func textModeration(_ input: TextModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextModerationResponse {
        try await self.client.execute(action: "TextModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本内容安全
    ///
    /// 本接口（Text Moderation）用于提交文本内容进行智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通文本内容安全服务](https://console.cloud.tencent.com/cms/text/package) 并调整好对应的业务配置。
    ///
    /// ### 接口使用说明
    /// - 前往“[内容安全控制台-文本内容安全](https://console.cloud.tencent.com/cms/text/package)”开启使用文本内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万条**文本识别额度，有效期为1个月。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云文本内容安全定价](https://cloud.tencent.com/product/tms/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对文本文件进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规文本内容；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略，可在控制台文本内容安全-策略管理中配置；
    /// - 支持用户自定义配置词库黑白名单，打击自定义识别类型的违规文本（目前仅支持黑名单配置）；
    /// - 支持在审核文本内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 文本内容大小支持：文本原文长度不能超过unicode编码长度10000个字符；
    /// - 文本审核语言支持：目前支持中文、英文、阿拉伯数字的检测；
    /// - 默认接口请求频率限制：**1000次/秒**，超过该频率限制则接口会报错。
    @inlinable
    public func textModeration(content: String, bizType: String? = nil, dataId: String? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextModerationResponse> {
        self.textModeration(.init(content: content, bizType: bizType, dataId: dataId, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }

    /// 文本内容安全
    ///
    /// 本接口（Text Moderation）用于提交文本内容进行智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通文本内容安全服务](https://console.cloud.tencent.com/cms/text/package) 并调整好对应的业务配置。
    ///
    /// ### 接口使用说明
    /// - 前往“[内容安全控制台-文本内容安全](https://console.cloud.tencent.com/cms/text/package)”开启使用文本内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万条**文本识别额度，有效期为1个月。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云文本内容安全定价](https://cloud.tencent.com/product/tms/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对文本文件进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规文本内容；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略，可在控制台文本内容安全-策略管理中配置；
    /// - 支持用户自定义配置词库黑白名单，打击自定义识别类型的违规文本（目前仅支持黑名单配置）；
    /// - 支持在审核文本内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 文本内容大小支持：文本原文长度不能超过unicode编码长度10000个字符；
    /// - 文本审核语言支持：目前支持中文、英文、阿拉伯数字的检测；
    /// - 默认接口请求频率限制：**1000次/秒**，超过该频率限制则接口会报错。
    @inlinable
    public func textModeration(content: String, bizType: String? = nil, dataId: String? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextModerationResponse {
        try await self.textModeration(.init(content: content, bizType: bizType, dataId: dataId, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }
}
