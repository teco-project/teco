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

extension Ims {
    /// ImageModeration请求参数结构体
    public struct ImageModerationRequest: TCRequestModel {
        /// 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略。 -- 该字段暂未开放。
        public let bizType: String?

        /// 数据ID，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        public let dataId: String?

        /// 数据Base64编码，图片检测接口为图片文件内容，大小不能超过5M
        public let fileContent: String?

        /// 图片资源访问链接，__与FileContent参数必须二选一输入__
        public let fileUrl: String?

        /// 截帧频率，GIF图/长图检测专用，默认值为0，表示只会检测GIF图/长图的第一帧
        public let interval: Int64?

        /// GIF图/长图检测专用，代表均匀最大截帧数量，默认值为1（即只取GIF第一张，或长图不做切分处理（可能会造成处理超时））。
        public let maxFrames: Int64?

        /// 账号相关信息字段，填入后可识别违规风险账号。
        public let user: User?

        /// 设备相关信息字段，填入后可识别违规风险设备。
        public let device: Device?

        public init(bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil) {
            self.bizType = bizType
            self.dataId = dataId
            self.fileContent = fileContent
            self.fileUrl = fileUrl
            self.interval = interval
            self.maxFrames = maxFrames
            self.user = user
            self.device = device
        }

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case dataId = "DataId"
            case fileContent = "FileContent"
            case fileUrl = "FileUrl"
            case interval = "Interval"
            case maxFrames = "MaxFrames"
            case user = "User"
            case device = "Device"
        }
    }

    /// ImageModeration返回参数结构体
    public struct ImageModerationResponse: TCResponseModel {
        /// 数据是否属于恶意类型。
        /// 0：正常，1：可疑；
        public let hitFlag: Int64

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        /// 以及令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 子标签名称，如色情--性行为；当未命中子标签时，返回空字符串；
        public let subLabel: String

        /// 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        /// （如：色情 99.99，则该样本属于色情的置信度非常高。）
        public let score: Int64

        /// 智能模型的识别结果，包括涉黄、广告等令人反感、不安全或不适宜的内容类型识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labelResults: [LabelResult]?

        /// 物体检测模型的审核结果，包括实体、广告台标/二维码等物体坐标信息与内容审核信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let objectResults: [ObjectResult]?

        /// OCR识别后的文本识别结果，包括文本所处图片的OCR坐标信息以及图片文本的识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrResults: [OcrResult]?

        /// 基于图片风险库识别的结果。
        /// 风险库包括不安全黑库与正常白库的结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libResults: [LibResult]?

        /// 请求参数中的DataId。
        public let dataId: String

        /// 您在入参时所填入的Biztype参数。 -- 该字段暂未开放。
        public let bizType: String

        /// 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hitFlag = "HitFlag"
            case suggestion = "Suggestion"
            case label = "Label"
            case subLabel = "SubLabel"
            case score = "Score"
            case labelResults = "LabelResults"
            case objectResults = "ObjectResults"
            case ocrResults = "OcrResults"
            case libResults = "LibResults"
            case dataId = "DataId"
            case bizType = "BizType"
            case extra = "Extra"
            case requestId = "RequestId"
        }
    }

    /// 图片内容检测
    ///
    /// 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别可能令人反感、不安全或不适宜的内容，同时支持用户配置图片黑名单，打击自定义识别类型的图片。
    ///
    /// <div class="rno-api-explorer" style="margin-bottom:20px">
    ///     <div class="rno-api-explorer-inner">
    ///         <div class="rno-api-explorer-hd">
    ///             <div class="rno-api-explorer-title">
    ///                 关于版本迭代的描述
    ///             </div>
    ///         </div>
    ///         <div class="rno-api-explorer-body">
    ///             <div class="rno-api-explorer-cont">
    ///                 <p>当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：<a href="https://cloud.tencent.com/document/product/1125/38206" target="_blank">图片内容安全-2019版本</a></p>
    ///                 <p>2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。</p>
    ///             </div>
    ///         </div>
    ///     </div>
    /// </div>
    @inlinable
    public func imageModeration(_ input: ImageModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageModerationResponse> {
        self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片内容检测
    ///
    /// 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别可能令人反感、不安全或不适宜的内容，同时支持用户配置图片黑名单，打击自定义识别类型的图片。
    ///
    /// <div class="rno-api-explorer" style="margin-bottom:20px">
    ///     <div class="rno-api-explorer-inner">
    ///         <div class="rno-api-explorer-hd">
    ///             <div class="rno-api-explorer-title">
    ///                 关于版本迭代的描述
    ///             </div>
    ///         </div>
    ///         <div class="rno-api-explorer-body">
    ///             <div class="rno-api-explorer-cont">
    ///                 <p>当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：<a href="https://cloud.tencent.com/document/product/1125/38206" target="_blank">图片内容安全-2019版本</a></p>
    ///                 <p>2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。</p>
    ///             </div>
    ///         </div>
    ///     </div>
    /// </div>
    @inlinable
    public func imageModeration(_ input: ImageModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageModerationResponse {
        try await self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片内容检测
    ///
    /// 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别可能令人反感、不安全或不适宜的内容，同时支持用户配置图片黑名单，打击自定义识别类型的图片。
    ///
    /// <div class="rno-api-explorer" style="margin-bottom:20px">
    ///     <div class="rno-api-explorer-inner">
    ///         <div class="rno-api-explorer-hd">
    ///             <div class="rno-api-explorer-title">
    ///                 关于版本迭代的描述
    ///             </div>
    ///         </div>
    ///         <div class="rno-api-explorer-body">
    ///             <div class="rno-api-explorer-cont">
    ///                 <p>当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：<a href="https://cloud.tencent.com/document/product/1125/38206" target="_blank">图片内容安全-2019版本</a></p>
    ///                 <p>2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。</p>
    ///             </div>
    ///         </div>
    ///     </div>
    /// </div>
    @inlinable
    public func imageModeration(bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageModerationResponse> {
        let input = ImageModerationRequest(bizType: bizType, dataId: dataId, fileContent: fileContent, fileUrl: fileUrl, interval: interval, maxFrames: maxFrames, user: user, device: device)
        return self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片内容检测
    ///
    /// 图片内容检测服务（Image Moderation, IM）能自动扫描图片，识别可能令人反感、不安全或不适宜的内容，同时支持用户配置图片黑名单，打击自定义识别类型的图片。
    ///
    /// <div class="rno-api-explorer" style="margin-bottom:20px">
    ///     <div class="rno-api-explorer-inner">
    ///         <div class="rno-api-explorer-hd">
    ///             <div class="rno-api-explorer-title">
    ///                 关于版本迭代的描述
    ///             </div>
    ///         </div>
    ///         <div class="rno-api-explorer-body">
    ///             <div class="rno-api-explorer-cont">
    ///                 <p>当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：<a href="https://cloud.tencent.com/document/product/1125/38206" target="_blank">图片内容安全-2019版本</a></p>
    ///                 <p>2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。</p>
    ///             </div>
    ///         </div>
    ///     </div>
    /// </div>
    @inlinable
    public func imageModeration(bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageModerationResponse {
        let input = ImageModerationRequest(bizType: bizType, dataId: dataId, fileContent: fileContent, fileUrl: fileUrl, interval: interval, maxFrames: maxFrames, user: user, device: device)
        return try await self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
