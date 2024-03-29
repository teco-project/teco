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

extension Ims {
    /// ImageModeration请求参数结构体
    public struct ImageModerationRequest: TCRequest {
        /// 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。
        ///
        /// 备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。
        public let bizType: String?

        /// 该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。
        ///
        /// 取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        public let dataId: String?

        /// 该字段表示待检测图片文件内容的Base64编码，图片**大小不超过5MB**，建议**分辨率不低于256x256**，否则可能会影响识别效果。
        ///
        /// 备注： **该字段与FileUrl必须选择输入其中一个**。
        public let fileContent: String?

        /// 该字段表示待检测图片文件的访问链接，图片支持PNG、JPG、JPEG、BMP、GIF、WEBP格式，**大小不超过5MB**，建议**分辨率不低于256x256**；图片下载时间限制为3秒，超过则会返回下载超时；由于网络安全策略，**送审带重定向的链接，可能引起下载失败**，请尽量避免，比如Http返回302状态码的链接，可能导致接口返回ResourceUnavailable.ImageDownloadError。
        ///
        /// 备注：**该字段与FileContent必须选择输入其中一个**。
        public let fileUrl: String?

        /// **GIF/长图检测专用**，用于表示GIF截帧频率（每隔多少张图片抽取一帧进行检测），长图则按照长边：短边取整计算要切割的总图数；默认值为0，此时只会检测GIF的第一帧或对长图不进行切分处理。
        ///
        /// 备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        public let interval: Int64?

        /// **GIF/长图检测专用**，用于标识最大截帧数量；默认值为1，此时只会检测输入GIF的第一帧或对长图不进行切分处理（可能会造成处理超时）。
        ///
        /// 备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        public let maxFrames: Int64?

        /// 该字段表示待检测对象对应的用户相关信息，若填入则可甄别相应违规风险用户。
        public let user: User?

        /// 该字段表示待检测对象对应的设备相关信息，若填入则可甄别相应违规风险设备。
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
    public struct ImageModerationResponse: TCResponse {
        /// 该字段用于返回Label标签下的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。
        ///
        /// 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        public let suggestion: String

        /// 该字段用于返回检测结果（LabelResults）中所对应的**优先级最高的恶意标签**，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。
        ///
        /// 返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        public let label: String

        /// 该字段用于返回检测结果所命中优先级最高的恶意标签下的子标签名称，如：*色情--性行为*；若未命中任何子标签则返回空字符串。
        public let subLabel: String

        /// 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表图片越有可能属于当前返回的标签；如：*色情 99*，则表明该图片非常有可能属于色情内容；*色情 0*，则表明该图片不属于色情内容。
        public let score: Int64

        /// 该字段用于返回分类模型命中的恶意标签的详细识别结果，包括涉黄、广告等令人反感、不安全或不适宜的内容类型识别结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labelResults: [LabelResult]?

        /// 该字段用于返回物体检测模型的详细检测结果；包括：实体、广告台标、二维码等内容命中的标签名称、标签分数、坐标信息、场景识别结果、建议操作等内容审核信息；详细返回值信息可参阅对应的数据结构（ObjectResults）描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let objectResults: [ObjectResult]?

        /// 该字段用于返回OCR文本识别的详细检测结果；包括：文本坐标信息、文本识别结果、建议操作等内容审核信息；详细返回值信息可参阅对应的数据结构（OcrResults）描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ocrResults: [OcrResult]?

        /// 该字段用于返回基于图片风险库（风险黑库与正常白库）识别的结果,详细返回值信息可参阅对应的数据结构（LibResults）描述。
        ///
        /// 备注：图片风险库目前**暂不支持自定义库**。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libResults: [LibResult]?

        /// 该字段用于返回检测对象对应请求参数中的DataId。
        public let dataId: String

        /// 该字段用于返回检测对象对应请求参数中的BizType。
        public let bizType: String

        /// 该字段用于返回根据您的需求配置的额外附加信息（Extra），如未配置则默认返回值为空。
        ///
        /// 备注：不同客户或Biztype下返回信息不同，如需配置该字段请提交工单咨询或联系售后专员处理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 该字段用于返回检测对象对应的MD5校验值，以方便校验文件完整性。
        public let fileMD5: String

        /// 该字段用于返回仅识别图片元素的模型结果；包括：场景模型命中的标签、置信度和位置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recognitionResults: [RecognitionResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
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
            case fileMD5 = "FileMD5"
            case recognitionResults = "RecognitionResults"
            case requestId = "RequestId"
        }
    }

    /// 图片同步检测
    ///
    /// 本接口（Image Moderation, IM）用于提交图片文件进行同步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**3000张图片**识别额度，有效期为15天。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云图片内容安全定价](https://cloud.tencent.com/product/ims/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对图片文件或链接进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规图片内容；
    /// - 支持对GIF图/长图进行截帧或拆分检测；
    /// - 支持识别多种违规场景，包括：低俗、违法违规、色情、广告等场景；
    /// - 支持多种物体检测（实体、广告台标、二维码等）及图片中文本的OCR文本识别；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义选择图片风险库，打击自定义识别类型的违规图片（目前仅支持黑名单配置）；
    /// - 支持在审核图片内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 图片文件大小支持：**文件 < 5M**
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<10000分辨率**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**100次/秒**，超过此调用频率则会报错。
    /// -审核列表中，排序是按照用户通过API接口上传调用的时间进行排序；
    ///
    /// 关于版本迭代的描述
    ///
    /// 当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：[图片内容安全-2019版本](https://cloud.tencent.com/document/product/1125/38206)
    ///
    /// 2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。
    @inlinable
    public func imageModeration(_ input: ImageModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageModerationResponse> {
        self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片同步检测
    ///
    /// 本接口（Image Moderation, IM）用于提交图片文件进行同步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**3000张图片**识别额度，有效期为15天。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云图片内容安全定价](https://cloud.tencent.com/product/ims/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对图片文件或链接进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规图片内容；
    /// - 支持对GIF图/长图进行截帧或拆分检测；
    /// - 支持识别多种违规场景，包括：低俗、违法违规、色情、广告等场景；
    /// - 支持多种物体检测（实体、广告台标、二维码等）及图片中文本的OCR文本识别；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义选择图片风险库，打击自定义识别类型的违规图片（目前仅支持黑名单配置）；
    /// - 支持在审核图片内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 图片文件大小支持：**文件 < 5M**
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<10000分辨率**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**100次/秒**，超过此调用频率则会报错。
    /// -审核列表中，排序是按照用户通过API接口上传调用的时间进行排序；
    ///
    /// 关于版本迭代的描述
    ///
    /// 当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：[图片内容安全-2019版本](https://cloud.tencent.com/document/product/1125/38206)
    ///
    /// 2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。
    @inlinable
    public func imageModeration(_ input: ImageModerationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageModerationResponse {
        try await self.client.execute(action: "ImageModeration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片同步检测
    ///
    /// 本接口（Image Moderation, IM）用于提交图片文件进行同步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**3000张图片**识别额度，有效期为15天。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云图片内容安全定价](https://cloud.tencent.com/product/ims/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对图片文件或链接进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规图片内容；
    /// - 支持对GIF图/长图进行截帧或拆分检测；
    /// - 支持识别多种违规场景，包括：低俗、违法违规、色情、广告等场景；
    /// - 支持多种物体检测（实体、广告台标、二维码等）及图片中文本的OCR文本识别；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义选择图片风险库，打击自定义识别类型的违规图片（目前仅支持黑名单配置）；
    /// - 支持在审核图片内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 图片文件大小支持：**文件 < 5M**
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<10000分辨率**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**100次/秒**，超过此调用频率则会报错。
    /// -审核列表中，排序是按照用户通过API接口上传调用的时间进行排序；
    ///
    /// 关于版本迭代的描述
    ///
    /// 当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：[图片内容安全-2019版本](https://cloud.tencent.com/document/product/1125/38206)
    ///
    /// 2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。
    @inlinable
    public func imageModeration(bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImageModerationResponse> {
        self.imageModeration(.init(bizType: bizType, dataId: dataId, fileContent: fileContent, fileUrl: fileUrl, interval: interval, maxFrames: maxFrames, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }

    /// 图片同步检测
    ///
    /// 本接口（Image Moderation, IM）用于提交图片文件进行同步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**3000张图片**识别额度，有效期为15天。
    /// - 该接口为收费接口，计费方式敬请参见 [腾讯云图片内容安全定价](https://cloud.tencent.com/product/ims/pricing)。
    ///
    /// ### 接口功能说明：
    /// - 支持对图片文件或链接进行检测，通过深度学习技术，识别可能令人反感、不安全或不适宜的违规图片内容；
    /// - 支持对GIF图/长图进行截帧或拆分检测；
    /// - 支持识别多种违规场景，包括：低俗、违法违规、色情、广告等场景；
    /// - 支持多种物体检测（实体、广告台标、二维码等）及图片中文本的OCR文本识别；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义选择图片风险库，打击自定义识别类型的违规图片（目前仅支持黑名单配置）；
    /// - 支持在审核图片内容时同时关联账号或设备信息，可识别违规风险账号或设备。
    ///
    /// ### 接口调用说明：
    /// - 图片文件大小支持：**文件 < 5M**
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<10000分辨率**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**100次/秒**，超过此调用频率则会报错。
    /// -审核列表中，排序是按照用户通过API接口上传调用的时间进行排序；
    ///
    /// 关于版本迭代的描述
    ///
    /// 当前页面版本为图片内容安全2020版本，2020.11.3日前接入的图片内容安全接口为2019版本，在此时间前接入的用户可直接访问以下链接进行维护操作：[图片内容安全-2019版本](https://cloud.tencent.com/document/product/1125/38206)
    ///
    /// 2020版本相对2019版本进行了升级，支持更灵活的多场景业务策略配置以及更丰富的识别回调信息，满足不同业务的识别需求，建议按照2020版本接入指引进行接口升级；同时，2019版本也会持续维护直至用户不再使用为止。
    @inlinable
    public func imageModeration(bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImageModerationResponse {
        try await self.imageModeration(.init(bizType: bizType, dataId: dataId, fileContent: fileContent, fileUrl: fileUrl, interval: interval, maxFrames: maxFrames, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }
}
