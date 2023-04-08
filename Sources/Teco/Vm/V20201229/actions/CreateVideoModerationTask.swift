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

extension Vm {
    /// CreateVideoModerationTask请求参数结构体
    public struct CreateVideoModerationTaskRequest: TCRequestModel {
        /// 该参数用于传入审核任务的任务类型，取值：**VIDEO**（点播视频），**LIVE_VIDEO**（直播视频）。
        public let type: String

        /// 该字段表示输入的视频审核任务信息，具体输入内容请参见TaskInput数据结构的详细描述。<br> 备注：最多同时可创建**10个任务**。
        public let tasks: [TaskInput]

        /// 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。<br>备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。
        public let bizType: String?

        /// 可选参数，该字段表示回调签名的key信息，用于保证数据的安全性。 签名方法为在返回的HTTP头部添加 X-Signature 的字段，值为： seed + body 的 SHA256 编码和Hex字符串，在收到回调数据后，可以根据返回的body，用 **sha256(seed + body)**, 计算出 `X-Signature` 进行验证。<br>具体使用实例可参考 [回调签名示例](https://cloud.tencent.com/document/product/1265/51885)。
        public let seed: String?

        /// 可选参数，该字段表示接受审核信息回调的地址，格式为URL链接默认格式。配置成功后，审核过程中产生的违规音视频片段将通过此接口发送。回调返回内容格式请参考 [回调签名示例](https://cloud.tencent.com/document/product/1265/51879#.E7.A4.BA.E4.BE.8B2-.E5.9B.9E.E8.B0.83.E7.AD.BE.E5.90.8D.E7.A4.BA.E4.BE.8B) <br>备注：音频默认截取时长为**15秒**，视频截帧默认为**5秒**截取一张图片；若用户自行配置截取间隔，则按照用户配置返回相应片段。
        public let callbackUrl: String?

        /// 可选参数，该参数用于传入审核任务的优先级。当您有多个视频审核任务排队时，可以根据这个参数控制排队优先级，用于处理插队等逻辑；该参数**默认值为0**。
        public let priority: Int64?

        public init(type: String, tasks: [TaskInput], bizType: String? = nil, seed: String? = nil, callbackUrl: String? = nil, priority: Int64? = nil) {
            self.type = type
            self.tasks = tasks
            self.bizType = bizType
            self.seed = seed
            self.callbackUrl = callbackUrl
            self.priority = priority
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case tasks = "Tasks"
            case bizType = "BizType"
            case seed = "Seed"
            case callbackUrl = "CallbackUrl"
            case priority = "Priority"
        }
    }

    /// CreateVideoModerationTask返回参数结构体
    public struct CreateVideoModerationTaskResponse: TCResponseModel {
        /// 该字段用于返回任务创建的结果，具体输出内容请参见TaskResult数据结构的详细描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [TaskResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 创建视频审核任务
    ///
    /// 本接口（Video Moderation System，VM）用于提交视频文件或视频流进行智能审核任务。使用前请您使用腾讯云主账号登录控制台[开通视频内容安全服务](https://console.cloud.tencent.com/cms/video/package)并调整好对应的业务配置。<br>
    /// ### 功能使用说明：
    ///
    /// - 前往“[内容安全控制台-视频内容安全](https://console.cloud.tencent.com/cms/video/package)”开启使用视频内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含600分钟的处理量（换算1s每帧截图，赠送**36000张图**、**600分钟的音频**处理量），有效期为1个月。
    ///
    /// - 该接口为收费接口，计费方式敬请参见[腾讯云视频内容安全定价](https://cloud.tencent.com/product/vm/pricing)。
    ///
    /// - 默认接口请求频率限制：**20次/秒**，对于异步审核任务（点播视频），超出频率限制的请求会自动排入待审核队列，对于同步审核任务（直播视频），超出频率限制将会报错。
    /// - 默认并发审核路数限制：10路，异步审核任务（点播视频）数量超过并发审核路数时，将会进入排队；同步审核任务（直播视频）超过并发审核路数，接口会返回错误。
    ///
    ///
    /// ### 接口功能说明：
    ///
    /// - 支持对视频文件或视频流进行自动检测，从 OCR文本识别、物体检测（实体、广告台标、二维码等）、图像识别及音频审核四个维度，通过深度学习技术识别视频中的违规内容；
    /// - 支持设置回调地址 Callback 获取检测结果，或通过接口(查看任务详情)主动轮询获取检测结果详情；对于正常审核中的视频任务，如含有违规内容，则截帧图片最长会在**3s**内回调，音频片段会在用户配置的**切片时长 + 2s**内回调；对于在队列中的待审核任务，回调时间为正常审核回调时间+等待时间；
    /// - 支持通过接口（查看审核任务列表）查询任务队列，用户可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义配置黑白词库及图片库，打击自定义违规内容（目前仅支持黑名单配置）；
    /// - 支持用户自定义配置审核任务优先级，当有多个任务排队时，可根据用户配置自动调整任务优先级；
    /// - 支持批量提交检测任务，**最多可同时创建10个任务**；
    ///
    /// ### 视频文件调用说明：
    ///
    /// - 视频文件大小支持：**文件 < 3GB**
    /// - 视频文件分辨率支持：**最佳分辨率为1920x1080 (1080p)**，如果视频文件小于300MB，则分辨率可以大于1080p，更大视频可以调用[云转码服务](https://cloud.tencent.com/product/mps/details)转码后再送审；
    /// - 视频文件支持格式：flv、mkv 、mp4 、rmvb 、avi 、wmv、3gp、ts、mov、rm、mpeg、wmf等。
    /// - 视频文件支持的访问方式：链接地址（支持HTTP/HTTPS）、腾讯云COS存储；
    /// - 若传入视频文件的访问链接，则需要注意视频**头文件的读取时间限制为3秒**，为保障被检测视频的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频文件图像内容进行审核。
    ///
    /// ### 视频流调用说明：
    ///
    /// - 视频流时长支持：**5小时以内**
    /// - 视频流分辨率支持：支持**1920x1080 (1080p)**，更高分辨率视频可以调用[直播云转码服务](https://cloud.tencent.com/document/product/267/39889)转码后再送审；
    /// - 视频流支持格式：rmtp，flv 等主流视频流编码格式。
    /// - 视频文件支持的传输协议：HTTP/HTTPS/RTMP；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频流图像内容进行审核。
    @inlinable
    public func createVideoModerationTask(_ input: CreateVideoModerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoModerationTaskResponse> {
        self.client.execute(action: "CreateVideoModerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建视频审核任务
    ///
    /// 本接口（Video Moderation System，VM）用于提交视频文件或视频流进行智能审核任务。使用前请您使用腾讯云主账号登录控制台[开通视频内容安全服务](https://console.cloud.tencent.com/cms/video/package)并调整好对应的业务配置。<br>
    /// ### 功能使用说明：
    ///
    /// - 前往“[内容安全控制台-视频内容安全](https://console.cloud.tencent.com/cms/video/package)”开启使用视频内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含600分钟的处理量（换算1s每帧截图，赠送**36000张图**、**600分钟的音频**处理量），有效期为1个月。
    ///
    /// - 该接口为收费接口，计费方式敬请参见[腾讯云视频内容安全定价](https://cloud.tencent.com/product/vm/pricing)。
    ///
    /// - 默认接口请求频率限制：**20次/秒**，对于异步审核任务（点播视频），超出频率限制的请求会自动排入待审核队列，对于同步审核任务（直播视频），超出频率限制将会报错。
    /// - 默认并发审核路数限制：10路，异步审核任务（点播视频）数量超过并发审核路数时，将会进入排队；同步审核任务（直播视频）超过并发审核路数，接口会返回错误。
    ///
    ///
    /// ### 接口功能说明：
    ///
    /// - 支持对视频文件或视频流进行自动检测，从 OCR文本识别、物体检测（实体、广告台标、二维码等）、图像识别及音频审核四个维度，通过深度学习技术识别视频中的违规内容；
    /// - 支持设置回调地址 Callback 获取检测结果，或通过接口(查看任务详情)主动轮询获取检测结果详情；对于正常审核中的视频任务，如含有违规内容，则截帧图片最长会在**3s**内回调，音频片段会在用户配置的**切片时长 + 2s**内回调；对于在队列中的待审核任务，回调时间为正常审核回调时间+等待时间；
    /// - 支持通过接口（查看审核任务列表）查询任务队列，用户可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义配置黑白词库及图片库，打击自定义违规内容（目前仅支持黑名单配置）；
    /// - 支持用户自定义配置审核任务优先级，当有多个任务排队时，可根据用户配置自动调整任务优先级；
    /// - 支持批量提交检测任务，**最多可同时创建10个任务**；
    ///
    /// ### 视频文件调用说明：
    ///
    /// - 视频文件大小支持：**文件 < 3GB**
    /// - 视频文件分辨率支持：**最佳分辨率为1920x1080 (1080p)**，如果视频文件小于300MB，则分辨率可以大于1080p，更大视频可以调用[云转码服务](https://cloud.tencent.com/product/mps/details)转码后再送审；
    /// - 视频文件支持格式：flv、mkv 、mp4 、rmvb 、avi 、wmv、3gp、ts、mov、rm、mpeg、wmf等。
    /// - 视频文件支持的访问方式：链接地址（支持HTTP/HTTPS）、腾讯云COS存储；
    /// - 若传入视频文件的访问链接，则需要注意视频**头文件的读取时间限制为3秒**，为保障被检测视频的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频文件图像内容进行审核。
    ///
    /// ### 视频流调用说明：
    ///
    /// - 视频流时长支持：**5小时以内**
    /// - 视频流分辨率支持：支持**1920x1080 (1080p)**，更高分辨率视频可以调用[直播云转码服务](https://cloud.tencent.com/document/product/267/39889)转码后再送审；
    /// - 视频流支持格式：rmtp，flv 等主流视频流编码格式。
    /// - 视频文件支持的传输协议：HTTP/HTTPS/RTMP；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频流图像内容进行审核。
    @inlinable
    public func createVideoModerationTask(_ input: CreateVideoModerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoModerationTaskResponse {
        try await self.client.execute(action: "CreateVideoModerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建视频审核任务
    ///
    /// 本接口（Video Moderation System，VM）用于提交视频文件或视频流进行智能审核任务。使用前请您使用腾讯云主账号登录控制台[开通视频内容安全服务](https://console.cloud.tencent.com/cms/video/package)并调整好对应的业务配置。<br>
    /// ### 功能使用说明：
    ///
    /// - 前往“[内容安全控制台-视频内容安全](https://console.cloud.tencent.com/cms/video/package)”开启使用视频内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含600分钟的处理量（换算1s每帧截图，赠送**36000张图**、**600分钟的音频**处理量），有效期为1个月。
    ///
    /// - 该接口为收费接口，计费方式敬请参见[腾讯云视频内容安全定价](https://cloud.tencent.com/product/vm/pricing)。
    ///
    /// - 默认接口请求频率限制：**20次/秒**，对于异步审核任务（点播视频），超出频率限制的请求会自动排入待审核队列，对于同步审核任务（直播视频），超出频率限制将会报错。
    /// - 默认并发审核路数限制：10路，异步审核任务（点播视频）数量超过并发审核路数时，将会进入排队；同步审核任务（直播视频）超过并发审核路数，接口会返回错误。
    ///
    ///
    /// ### 接口功能说明：
    ///
    /// - 支持对视频文件或视频流进行自动检测，从 OCR文本识别、物体检测（实体、广告台标、二维码等）、图像识别及音频审核四个维度，通过深度学习技术识别视频中的违规内容；
    /// - 支持设置回调地址 Callback 获取检测结果，或通过接口(查看任务详情)主动轮询获取检测结果详情；对于正常审核中的视频任务，如含有违规内容，则截帧图片最长会在**3s**内回调，音频片段会在用户配置的**切片时长 + 2s**内回调；对于在队列中的待审核任务，回调时间为正常审核回调时间+等待时间；
    /// - 支持通过接口（查看审核任务列表）查询任务队列，用户可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义配置黑白词库及图片库，打击自定义违规内容（目前仅支持黑名单配置）；
    /// - 支持用户自定义配置审核任务优先级，当有多个任务排队时，可根据用户配置自动调整任务优先级；
    /// - 支持批量提交检测任务，**最多可同时创建10个任务**；
    ///
    /// ### 视频文件调用说明：
    ///
    /// - 视频文件大小支持：**文件 < 3GB**
    /// - 视频文件分辨率支持：**最佳分辨率为1920x1080 (1080p)**，如果视频文件小于300MB，则分辨率可以大于1080p，更大视频可以调用[云转码服务](https://cloud.tencent.com/product/mps/details)转码后再送审；
    /// - 视频文件支持格式：flv、mkv 、mp4 、rmvb 、avi 、wmv、3gp、ts、mov、rm、mpeg、wmf等。
    /// - 视频文件支持的访问方式：链接地址（支持HTTP/HTTPS）、腾讯云COS存储；
    /// - 若传入视频文件的访问链接，则需要注意视频**头文件的读取时间限制为3秒**，为保障被检测视频的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频文件图像内容进行审核。
    ///
    /// ### 视频流调用说明：
    ///
    /// - 视频流时长支持：**5小时以内**
    /// - 视频流分辨率支持：支持**1920x1080 (1080p)**，更高分辨率视频可以调用[直播云转码服务](https://cloud.tencent.com/document/product/267/39889)转码后再送审；
    /// - 视频流支持格式：rmtp，flv 等主流视频流编码格式。
    /// - 视频文件支持的传输协议：HTTP/HTTPS/RTMP；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频流图像内容进行审核。
    @inlinable
    public func createVideoModerationTask(type: String, tasks: [TaskInput], bizType: String? = nil, seed: String? = nil, callbackUrl: String? = nil, priority: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoModerationTaskResponse> {
        self.createVideoModerationTask(.init(type: type, tasks: tasks, bizType: bizType, seed: seed, callbackUrl: callbackUrl, priority: priority), region: region, logger: logger, on: eventLoop)
    }

    /// 创建视频审核任务
    ///
    /// 本接口（Video Moderation System，VM）用于提交视频文件或视频流进行智能审核任务。使用前请您使用腾讯云主账号登录控制台[开通视频内容安全服务](https://console.cloud.tencent.com/cms/video/package)并调整好对应的业务配置。<br>
    /// ### 功能使用说明：
    ///
    /// - 前往“[内容安全控制台-视频内容安全](https://console.cloud.tencent.com/cms/video/package)”开启使用视频内容安全服务，首次开通服务的用户可免费领用试用套餐包，包含600分钟的处理量（换算1s每帧截图，赠送**36000张图**、**600分钟的音频**处理量），有效期为1个月。
    ///
    /// - 该接口为收费接口，计费方式敬请参见[腾讯云视频内容安全定价](https://cloud.tencent.com/product/vm/pricing)。
    ///
    /// - 默认接口请求频率限制：**20次/秒**，对于异步审核任务（点播视频），超出频率限制的请求会自动排入待审核队列，对于同步审核任务（直播视频），超出频率限制将会报错。
    /// - 默认并发审核路数限制：10路，异步审核任务（点播视频）数量超过并发审核路数时，将会进入排队；同步审核任务（直播视频）超过并发审核路数，接口会返回错误。
    ///
    ///
    /// ### 接口功能说明：
    ///
    /// - 支持对视频文件或视频流进行自动检测，从 OCR文本识别、物体检测（实体、广告台标、二维码等）、图像识别及音频审核四个维度，通过深度学习技术识别视频中的违规内容；
    /// - 支持设置回调地址 Callback 获取检测结果，或通过接口(查看任务详情)主动轮询获取检测结果详情；对于正常审核中的视频任务，如含有违规内容，则截帧图片最长会在**3s**内回调，音频片段会在用户配置的**切片时长 + 2s**内回调；对于在队列中的待审核任务，回调时间为正常审核回调时间+等待时间；
    /// - 支持通过接口（查看审核任务列表）查询任务队列，用户可根据多种业务信息（业务类型、审核结果、任务状态等）筛选审核任务列表；
    /// - 支持识别多种违规场景，包括：低俗、谩骂、色情、广告等场景；
    /// - 支持根据不同的业务场景配置自定义的审核策略；
    /// - 支持用户自定义配置黑白词库及图片库，打击自定义违规内容（目前仅支持黑名单配置）；
    /// - 支持用户自定义配置审核任务优先级，当有多个任务排队时，可根据用户配置自动调整任务优先级；
    /// - 支持批量提交检测任务，**最多可同时创建10个任务**；
    ///
    /// ### 视频文件调用说明：
    ///
    /// - 视频文件大小支持：**文件 < 3GB**
    /// - 视频文件分辨率支持：**最佳分辨率为1920x1080 (1080p)**，如果视频文件小于300MB，则分辨率可以大于1080p，更大视频可以调用[云转码服务](https://cloud.tencent.com/product/mps/details)转码后再送审；
    /// - 视频文件支持格式：flv、mkv 、mp4 、rmvb 、avi 、wmv、3gp、ts、mov、rm、mpeg、wmf等。
    /// - 视频文件支持的访问方式：链接地址（支持HTTP/HTTPS）、腾讯云COS存储；
    /// - 若传入视频文件的访问链接，则需要注意视频**头文件的读取时间限制为3秒**，为保障被检测视频的稳定性和可靠性，建议您使用腾讯云COS存储或者CDN缓存等；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频文件图像内容进行审核。
    ///
    /// ### 视频流调用说明：
    ///
    /// - 视频流时长支持：**5小时以内**
    /// - 视频流分辨率支持：支持**1920x1080 (1080p)**，更高分辨率视频可以调用[直播云转码服务](https://cloud.tencent.com/document/product/267/39889)转码后再送审；
    /// - 视频流支持格式：rmtp，flv 等主流视频流编码格式。
    /// - 视频文件支持的传输协议：HTTP/HTTPS/RTMP；
    /// - 支持用户配置是否需要开启音频审核，若不开启则将仅对视频流图像内容进行审核。
    @inlinable
    public func createVideoModerationTask(type: String, tasks: [TaskInput], bizType: String? = nil, seed: String? = nil, callbackUrl: String? = nil, priority: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoModerationTaskResponse {
        try await self.createVideoModerationTask(.init(type: type, tasks: tasks, bizType: bizType, seed: seed, callbackUrl: callbackUrl, priority: priority), region: region, logger: logger, on: eventLoop)
    }
}
