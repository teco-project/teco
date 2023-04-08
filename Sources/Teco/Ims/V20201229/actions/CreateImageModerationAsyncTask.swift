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

extension Ims {
    /// CreateImageModerationAsyncTask请求参数结构体
    public struct CreateImageModerationAsyncTaskRequest: TCRequestModel {
        /// 接收审核信息回调地址，审核过程中产生的所有结果发送至此地址。
        public let callbackUrl: String

        /// 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。<br>备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。
        public let bizType: String?

        /// 该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        public let dataId: String?

        /// 该字段表示待检测图片文件内容的Base64编码，图片**大小不超过5MB**，建议**分辨率不低于256x256**，否则可能会影响识别效果。<br>备注： **该字段与FileUrl必须选择输入其中一个**。
        public let fileContent: String?

        /// 该字段表示待检测图片文件的访问链接，图片支持PNG、JPG、JPEG、BMP、GIF、WEBP格式，**大小不超过5MB**，建议**分辨率不低于256x256**；图片下载时间限制为3秒，超过则会返回下载超时；由于网络安全策略，**送审带重定向的链接，可能引起下载失败**，请尽量避免，比如Http返回302状态码的链接，可能导致接口返回ResourceUnavailable.ImageDownloadError。<br>备注：**该字段与FileContent必须选择输入其中一个**。
        public let fileUrl: String?

        /// **GIF/长图检测专用**，用于表示GIF截帧频率（每隔多少张图片抽取一帧进行检测），长图则按照长边：短边取整计算要切割的总图数；默认值为0，此时只会检测GIF的第一帧或对长图不进行切分处理。<br>备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        public let interval: Int64?

        /// **GIF/长图检测专用**，用于标识最大截帧数量；默认值为1，此时只会检测输入GIF的第一帧或对长图不进行切分处理（可能会造成处理超时）。<br>备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        public let maxFrames: Int64?

        /// 该字段表示待检测对象对应的用户相关信息，若填入则可甄别相应违规风险用户。
        public let user: User?

        /// 该字段表示待检测对象对应的设备相关信息，若填入则可甄别相应违规风险设备。
        public let device: Device?

        public init(callbackUrl: String, bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil) {
            self.callbackUrl = callbackUrl
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
            case callbackUrl = "CallbackUrl"
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

    /// CreateImageModerationAsyncTask返回参数结构体
    public struct CreateImageModerationAsyncTaskResponse: TCResponseModel {
        /// 该字段用于返回检测对象对应请求参数中的DataId。
        public let dataId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case requestId = "RequestId"
        }
    }

    /// 图片异步检测
    ///
    /// 本接口用于提交图片文件进行异步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms/image/package) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms/image/package)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万张图片**识别额度，有效期为1个月。
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
    /// ### 接口调用说明：
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<40000分辨率**,并且**图片长宽比<90:1；**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**20次/秒**，超过此调用频率则会报错。
    @inlinable
    public func createImageModerationAsyncTask(_ input: CreateImageModerationAsyncTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageModerationAsyncTaskResponse> {
        self.client.execute(action: "CreateImageModerationAsyncTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片异步检测
    ///
    /// 本接口用于提交图片文件进行异步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms/image/package) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms/image/package)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万张图片**识别额度，有效期为1个月。
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
    /// ### 接口调用说明：
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<40000分辨率**,并且**图片长宽比<90:1；**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**20次/秒**，超过此调用频率则会报错。
    @inlinable
    public func createImageModerationAsyncTask(_ input: CreateImageModerationAsyncTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageModerationAsyncTaskResponse {
        try await self.client.execute(action: "CreateImageModerationAsyncTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片异步检测
    ///
    /// 本接口用于提交图片文件进行异步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms/image/package) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms/image/package)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万张图片**识别额度，有效期为1个月。
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
    /// ### 接口调用说明：
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<40000分辨率**,并且**图片长宽比<90:1；**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**20次/秒**，超过此调用频率则会报错。
    @inlinable
    public func createImageModerationAsyncTask(callbackUrl: String, bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageModerationAsyncTaskResponse> {
        self.createImageModerationAsyncTask(.init(callbackUrl: callbackUrl, bizType: bizType, dataId: dataId, fileContent: fileContent, fileUrl: fileUrl, interval: interval, maxFrames: maxFrames, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }

    /// 图片异步检测
    ///
    /// 本接口用于提交图片文件进行异步智能审核任务。使用前请您使用腾讯云主账号登录控制台 [开通图片内容安全服务](https://console.cloud.tencent.com/cms/image/package) 并调整好对应的业务配置。
    /// ### 接口使用说明：
    /// - 前往“[内容安全控制台-图片内容安全](https://console.cloud.tencent.com/cms/image/package)”开启使用图片内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含**1万张图片**识别额度，有效期为1个月。
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
    /// ### 接口调用说明：
    /// - 图片尺寸支持：**长或者宽 >50分辨率**和**长或者宽<40000分辨率**,并且**图片长宽比<90:1；**
    /// - 图片文件分辨率支持：建议**分辨率大于256x256**，否则可能会影响识别效果；
    /// - 图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式；
    /// - 图片文件链接支持的传输协议：HTTP、HTTPS；
    /// - 若传入图片文件的访问链接，则需要注意**图片下载时间限制为3秒**，为保障被检测图片的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 默认接口请求频率限制：**20次/秒**，超过此调用频率则会报错。
    @inlinable
    public func createImageModerationAsyncTask(callbackUrl: String, bizType: String? = nil, dataId: String? = nil, fileContent: String? = nil, fileUrl: String? = nil, interval: Int64? = nil, maxFrames: Int64? = nil, user: User? = nil, device: Device? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageModerationAsyncTaskResponse {
        try await self.createImageModerationAsyncTask(.init(callbackUrl: callbackUrl, bizType: bizType, dataId: dataId, fileContent: fileContent, fileUrl: fileUrl, interval: interval, maxFrames: maxFrames, user: user, device: device), region: region, logger: logger, on: eventLoop)
    }
}
