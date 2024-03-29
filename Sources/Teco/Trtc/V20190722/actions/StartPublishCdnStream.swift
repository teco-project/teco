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

extension Trtc {
    /// StartPublishCdnStream请求参数结构体
    public struct StartPublishCdnStreamRequest: TCRequest {
        /// TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        public let sdkAppId: UInt64

        /// 主房间信息RoomId，转推的TRTC房间所对应的RoomId。
        public let roomId: String

        /// 主房间信息RoomType，必须和转推的房间所对应的RoomId类型相同，0为整形房间号，1为字符串房间号。
        public let roomIdType: UInt64

        /// 转推服务加入TRTC房间的机器人参数。
        public let agentParams: AgentParams

        /// 是否转码，0表示无需转码，1表示需要转码。是否收取转码费是由WithTranscoding参数决定的，WithTranscoding为0，表示旁路转推，不会收取转码费用，WithTranscoding为1，表示混流转推，会收取转码费用。
        public let withTranscoding: UInt64

        /// 转推流的音频编码参数。由于音频是必转码的（不会收取转码费用），所以启动任务的时候，必须填写。
        public let audioParams: McuAudioParams?

        /// 转推流的视频编码参数，不填表示纯音频转推。
        public let videoParams: McuVideoParams?

        /// 需要单流旁路转推的用户上行参数，单流旁路转推时，WithTranscoding需要设置为0。
        public let singleSubscribeParams: SingleSubscribeParams?

        /// 转推的CDN参数。和回推房间参数必须要有一个。
        public let publishCdnParams: [McuPublishCdnParam]?

        /// 混流SEI参数
        public let seiParams: McuSeiParams?

        /// 回推房间信息，和转推CDN参数必须要有一个。注：回推房间需使用特殊的SDK版本，如您有需求，请联系腾讯云技术支持。
        public let feedBackRoomParams: [McuFeedBackRoomParams]?

        public init(sdkAppId: UInt64, roomId: String, roomIdType: UInt64, agentParams: AgentParams, withTranscoding: UInt64, audioParams: McuAudioParams? = nil, videoParams: McuVideoParams? = nil, singleSubscribeParams: SingleSubscribeParams? = nil, publishCdnParams: [McuPublishCdnParam]? = nil, seiParams: McuSeiParams? = nil, feedBackRoomParams: [McuFeedBackRoomParams]? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.roomIdType = roomIdType
            self.agentParams = agentParams
            self.withTranscoding = withTranscoding
            self.audioParams = audioParams
            self.videoParams = videoParams
            self.singleSubscribeParams = singleSubscribeParams
            self.publishCdnParams = publishCdnParams
            self.seiParams = seiParams
            self.feedBackRoomParams = feedBackRoomParams
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case roomIdType = "RoomIdType"
            case agentParams = "AgentParams"
            case withTranscoding = "WithTranscoding"
            case audioParams = "AudioParams"
            case videoParams = "VideoParams"
            case singleSubscribeParams = "SingleSubscribeParams"
            case publishCdnParams = "PublishCdnParams"
            case seiParams = "SeiParams"
            case feedBackRoomParams = "FeedBackRoomParams"
        }
    }

    /// StartPublishCdnStream返回参数结构体
    public struct StartPublishCdnStreamResponse: TCResponse {
        /// 用于唯一标识转推任务，由腾讯云服务端生成，后续更新和停止请求都需要携带TaskiD参数。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 启动转推任务
    ///
    /// TRTC房间中可能会同时存在多路音视频流，您可以通过混流转推API，通知腾讯云服务端将同个房间或者多个房间的多路视频画面混合到一起，并指定每一路画面的位置，同时将多路声音进行混音，最终形成一路音视频流，以便用于录制和直播观看，同时可以支持将这一路音视频的混流回推到TRTC房间内部。
    ///
    /// 云api混流转推功能包含三个接口：
    /// 1、StartPublishCdnStream：启动一个混流转推任务，此接口会发起一个新的混流转推任务，启动成功后会返回一个sdkappid维度唯一的任务id（TaskId）。您需要保存该TaskId，后续需要依赖此TaskId更新任务和结束任务。
    /// 2、UpdatePublishCdnStream：更新指定的混流转推任务，包括：更新视频画面的布局、更新混音列表、更新转推cdn的地址列表以及更新回推房间列表。
    /// 3、StopPublishCdnStream：停止指定的混流转推任务。
    ///
    /// 您可以通过此套接口实现目标：
    /// 1、设置最终混流的画质和音质，包括视频分辨率、视频帧率、视频码率，和音频质量。
    /// 2、设置每一路画面的布局位置，您只需要设置一次，后续您指定的混流用户进房上行音视频时，排版引擎会自动将该用户的画面混合到您指定的布局位置。同时您可以使用更新接口调整画面的布局位置。
    /// 3、设置多个cdn转推的目的地址，一个转推任务最多可以同时设置10个cdn转推地址，如果您需要转推非腾讯云的cdn地址时，需要联系腾讯云开通能力。
    /// 4、设置多个回推房间列表，一个转推任务最多可以同时将混流回推到10个TRTC房间。
    ///
    /// 目前已经支持如下几种布局模版，其中动态布局模版（悬浮模板、九宫格模板、屏幕分享模板）只支持单个TRTC房间，自定义模版支持混合多个TRTC房间内的音视频流。具体说明如下：
    /// 1、悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面，如果用户只发送音频默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 2、九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小。最多支持16个画面，如果用户只发送音频，默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 3、屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，需要您明确设置占据大画面的混流用户信息。其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理，也支持统一设置子画面的渲染方式。
    /// 4、自定义布局模版：支持您主动根据业务需要设置布局位置，每个预设的布局位置支持具名设置（具名设置需要明确指定房间号和用户名）和不具名设置。当一个子画面具名设置时，该位置就为该用户预留，用户进房且上行音视频数据时会自动占据该位置，其它用户不会占据该位置。当预设的布局位置未具名时，排版引擎会根据进房间顺序自动填充，预设位置填满时，不再混合其它用户的画面和声音。每个子画面位置支持设置占位图（BackgroundImageUrl），当用户未进房或者只上行音频数据时，该位置画面可显示对应的占位图画面。
    ///
    /// 您可以控制台开通旁路转推回调功能实现转推cdn状态的事件监控，具体说明请参考官网文档：[旁路转推回调说明](https://cloud.tencent.com/document/product/647/88552)
    /// 您使用转推api时根据使用特性可能会产生如下费用：
    /// MCU混流转码费用请参考文档：[云端混流转码计费说明](https://cloud.tencent.com/document/product/647/49446)
    /// 转推非腾讯云CDN费用请参考文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)
    ///
    /// 参数的使用说明：
    /// 1、AgentParams：每个转推任务会拉起一个机器人用户进入TRTC房间进行拉流，您需要通过AgentParams.UserId参数进行设置，这个机器人id不能和房间中的普通用户id冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。您可以通过设置AgentParams.MaxIdleTime控制转推任务的自动结束，当设置此参数时，所有参与混流转推的主播持续离开TRTC房间超过MaxIdleTime的时长，自动停止转推任务。注意：参与混流转推的主播仅是停止音视频上行，转推任务不会自动停止。
    /// 2、WithTranscoding：如果需要将多路音视频流混合到一路时，WithTranscoding必须设置为1。
    /// 3、AudioParams：转推任务音频参数和视频参数是分开设置的，若您想要将指定的用户音频进行混音时，需要明确设置AudioParams.SubscribeAudioList。若您不设置AudioParams.SubscribeAudioList，混音引擎会自动将TRTC房间中所有用户的音频混合。若您想要混合TRTC房间除指定用户之外的所有用户的声音，可以通过AudioParams.UnSubscribeAudioList设置音频黑名单列表。
    /// 4、VideoParams：若您想要将用户的视频混合，可以通过VideoParams设置，若只想要混纯音频，则不用设置VideoParams参数。您可以通过VideoParams.LayoutParams.MixLayoutMode设置画面的布局模式，包括：动态布局（1：悬浮布局（默认），2：屏幕分享布局，3：九宫格布局）和自定义布局。动态布局模式由排版引擎按照固定的布局自动混合，不需要设置VideoParams.LayoutParams.MixLayoutList。当使用悬浮布局和屏幕分享布局时，您可以通过设置VideoParams.LayoutParams.MaxVideoUser参数指定大画面用户。自定义布局模式提供给您自主布局画面的能力，可以通过VideoParams.LayoutParams.MixLayoutList参数指定每个用户所在的布局位置。在每个布局参数中，您可以通过用户媒体流参数（UserMediaStream）指定这个布局位置为指定的用户预留，也可以不设置UserMediaStream，由排版引擎按照用户进入TRTC房间的顺序自动填充，另外您也可以设置每个布局位置的渲染方式（RenderMode）和裁剪方式（CustomCrop）。
    /// 5、VideoParams.WaterMarkList：若您想要混流画面中叠加水印，可以通过VideoParams.WaterMarkList参数设置，支持图片水印和文字水印，支持透明通道。
    /// 6、SingleSubscribeParams：若您想要将TRTC房间中的一路单流推到CDN，可以使用SingleSubscribeParams参数设置，此时需要将WithTranscoding参数设置为0。
    /// 7、PublishCdnParams.N：若您想要推流到CDN，可以使用PublishCdnParams.N参数设置，支持最多同时推流到10个CDN地址。若转推地址是腾讯云CDN时，请将IsTencentCdn明确设置为1；若您有转推非腾讯云CDN的需求时，请联系腾讯云技术支持开通，转推非腾讯云会产生转推费用，费用说明请参考官网文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)。
    /// 8、FeedBackRoomParams.N：若您想要将混合的音视频流回推到TRTC房间，可以使用FeedBackRoomParams.N参数设置，支持最多同时推10路流回TRTC房间。您需要指定回推的TRTC房间号和机器人ID（UserId），机器人ID不能与普通用户ID冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。
    /// 9、SeiParams：若您想要混合的音视频流中增加SEI信息时，可以使用SeiParams参数设置，支持音量布局SEI和叠加转推请求中的SEI，其中音量布局SEI的内容是固定的json结构，具体请看本章节后续的SEI说明。您可以通过FollowIdr参数设置SEI跟随关键帧一起发送。音量布局sei的说明如下：
    /// 如果您的CDN观众端需要识别到参与混流的主播位置，以及需要识别到参与混流的主播的音量信息，可以通过音量布局sei实现。音量布局sei的payload内容及参数说明如下：
    ///
    /// ```
    /// {
    ///     "app_data":"",
    ///     "canvas":{
    ///         "w":1080,
    ///         "h":960
    ///     },
    ///     "regions":[
    ///         {
    ///             "uid":"65949987242835883c",
    ///             "zorder":2,
    ///             "volume":45,
    ///             "x":270,
    ///             "y":480,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"659c9d8d242b328d31",
    ///             "zorder":2,
    ///             "volume":0,
    ///             "x":0,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"64989a82272b308c",
    ///             "zorder":2,
    ///             "volume":91,
    ///             "x":540,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         }
    ///     ],
    ///     "ver":"1.0",
    ///     "ts":1648544726
    /// }
    /// ```
    /// canvas：这个是混流信令中VideoEncode设置的宽高，即：混流输出的整个画布宽高。
    /// regions：里面是真实混入的用户id和对应的子画面位置，若参与混流的用户未进入TRTC房间或者未开启视频上行，regions中不会包含该用户。
    /// uid：代表参与混流的用户ID。
    /// zorder：参与混流userid在混流输出的层级。
    /// x/y：参与混流userid的子画面在画布的坐标。
    /// w/h：参与混流userid的子画面的大小。
    /// volume：代表混流用户的音量，取值范围为0-100，值越大，代表该用户参与混流时的音量越大。
    /// ts：是输出sei的服务器本地秒级时戳。
    /// ver：可以忽略。
    ///
    /// 其它使用注意事项：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、转推API不支持发起到TRTC控制台配置的自动旁路任务，以及通过TRTC SDK进房接口中设置的自定义流ID的旁路任务。
    /// 3、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 4、为了确保转推链接的稳定，不支持update时更新视频参数（codec）和音频参数（codec、采样率、码率、声道数）。
    /// 5、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 6、更新请求中必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增，否则会导致混流任务更新失败。
    /// 7、调用api时region选择说明：如果应用id是1400xxx时，region可填北京、上海、广州、香港，如果您的cdn观众主要在海外，请选择香港；如果应用id是200xxx或400xxx时，region请选择新加坡。
    /// 8、回推到TRTC房间的流不会参与其他回推房间任务的混流，满足下面条件之一时，可以参与其他转推cdn任务的混流: (1) 转推cdn任务在视频参数中通过具名方式指定推流机器人参与混流；(2) 转推cdn任务在音频参数中通过白名单方式指定推流机器人参与混流；(3) 转推cdn任务参与混流用户的房间号与回推机器人对应混流用户的房间号完全不同。
    /// 9、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(_ input: StartPublishCdnStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPublishCdnStreamResponse> {
        self.client.execute(action: "StartPublishCdnStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动转推任务
    ///
    /// TRTC房间中可能会同时存在多路音视频流，您可以通过混流转推API，通知腾讯云服务端将同个房间或者多个房间的多路视频画面混合到一起，并指定每一路画面的位置，同时将多路声音进行混音，最终形成一路音视频流，以便用于录制和直播观看，同时可以支持将这一路音视频的混流回推到TRTC房间内部。
    ///
    /// 云api混流转推功能包含三个接口：
    /// 1、StartPublishCdnStream：启动一个混流转推任务，此接口会发起一个新的混流转推任务，启动成功后会返回一个sdkappid维度唯一的任务id（TaskId）。您需要保存该TaskId，后续需要依赖此TaskId更新任务和结束任务。
    /// 2、UpdatePublishCdnStream：更新指定的混流转推任务，包括：更新视频画面的布局、更新混音列表、更新转推cdn的地址列表以及更新回推房间列表。
    /// 3、StopPublishCdnStream：停止指定的混流转推任务。
    ///
    /// 您可以通过此套接口实现目标：
    /// 1、设置最终混流的画质和音质，包括视频分辨率、视频帧率、视频码率，和音频质量。
    /// 2、设置每一路画面的布局位置，您只需要设置一次，后续您指定的混流用户进房上行音视频时，排版引擎会自动将该用户的画面混合到您指定的布局位置。同时您可以使用更新接口调整画面的布局位置。
    /// 3、设置多个cdn转推的目的地址，一个转推任务最多可以同时设置10个cdn转推地址，如果您需要转推非腾讯云的cdn地址时，需要联系腾讯云开通能力。
    /// 4、设置多个回推房间列表，一个转推任务最多可以同时将混流回推到10个TRTC房间。
    ///
    /// 目前已经支持如下几种布局模版，其中动态布局模版（悬浮模板、九宫格模板、屏幕分享模板）只支持单个TRTC房间，自定义模版支持混合多个TRTC房间内的音视频流。具体说明如下：
    /// 1、悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面，如果用户只发送音频默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 2、九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小。最多支持16个画面，如果用户只发送音频，默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 3、屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，需要您明确设置占据大画面的混流用户信息。其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理，也支持统一设置子画面的渲染方式。
    /// 4、自定义布局模版：支持您主动根据业务需要设置布局位置，每个预设的布局位置支持具名设置（具名设置需要明确指定房间号和用户名）和不具名设置。当一个子画面具名设置时，该位置就为该用户预留，用户进房且上行音视频数据时会自动占据该位置，其它用户不会占据该位置。当预设的布局位置未具名时，排版引擎会根据进房间顺序自动填充，预设位置填满时，不再混合其它用户的画面和声音。每个子画面位置支持设置占位图（BackgroundImageUrl），当用户未进房或者只上行音频数据时，该位置画面可显示对应的占位图画面。
    ///
    /// 您可以控制台开通旁路转推回调功能实现转推cdn状态的事件监控，具体说明请参考官网文档：[旁路转推回调说明](https://cloud.tencent.com/document/product/647/88552)
    /// 您使用转推api时根据使用特性可能会产生如下费用：
    /// MCU混流转码费用请参考文档：[云端混流转码计费说明](https://cloud.tencent.com/document/product/647/49446)
    /// 转推非腾讯云CDN费用请参考文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)
    ///
    /// 参数的使用说明：
    /// 1、AgentParams：每个转推任务会拉起一个机器人用户进入TRTC房间进行拉流，您需要通过AgentParams.UserId参数进行设置，这个机器人id不能和房间中的普通用户id冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。您可以通过设置AgentParams.MaxIdleTime控制转推任务的自动结束，当设置此参数时，所有参与混流转推的主播持续离开TRTC房间超过MaxIdleTime的时长，自动停止转推任务。注意：参与混流转推的主播仅是停止音视频上行，转推任务不会自动停止。
    /// 2、WithTranscoding：如果需要将多路音视频流混合到一路时，WithTranscoding必须设置为1。
    /// 3、AudioParams：转推任务音频参数和视频参数是分开设置的，若您想要将指定的用户音频进行混音时，需要明确设置AudioParams.SubscribeAudioList。若您不设置AudioParams.SubscribeAudioList，混音引擎会自动将TRTC房间中所有用户的音频混合。若您想要混合TRTC房间除指定用户之外的所有用户的声音，可以通过AudioParams.UnSubscribeAudioList设置音频黑名单列表。
    /// 4、VideoParams：若您想要将用户的视频混合，可以通过VideoParams设置，若只想要混纯音频，则不用设置VideoParams参数。您可以通过VideoParams.LayoutParams.MixLayoutMode设置画面的布局模式，包括：动态布局（1：悬浮布局（默认），2：屏幕分享布局，3：九宫格布局）和自定义布局。动态布局模式由排版引擎按照固定的布局自动混合，不需要设置VideoParams.LayoutParams.MixLayoutList。当使用悬浮布局和屏幕分享布局时，您可以通过设置VideoParams.LayoutParams.MaxVideoUser参数指定大画面用户。自定义布局模式提供给您自主布局画面的能力，可以通过VideoParams.LayoutParams.MixLayoutList参数指定每个用户所在的布局位置。在每个布局参数中，您可以通过用户媒体流参数（UserMediaStream）指定这个布局位置为指定的用户预留，也可以不设置UserMediaStream，由排版引擎按照用户进入TRTC房间的顺序自动填充，另外您也可以设置每个布局位置的渲染方式（RenderMode）和裁剪方式（CustomCrop）。
    /// 5、VideoParams.WaterMarkList：若您想要混流画面中叠加水印，可以通过VideoParams.WaterMarkList参数设置，支持图片水印和文字水印，支持透明通道。
    /// 6、SingleSubscribeParams：若您想要将TRTC房间中的一路单流推到CDN，可以使用SingleSubscribeParams参数设置，此时需要将WithTranscoding参数设置为0。
    /// 7、PublishCdnParams.N：若您想要推流到CDN，可以使用PublishCdnParams.N参数设置，支持最多同时推流到10个CDN地址。若转推地址是腾讯云CDN时，请将IsTencentCdn明确设置为1；若您有转推非腾讯云CDN的需求时，请联系腾讯云技术支持开通，转推非腾讯云会产生转推费用，费用说明请参考官网文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)。
    /// 8、FeedBackRoomParams.N：若您想要将混合的音视频流回推到TRTC房间，可以使用FeedBackRoomParams.N参数设置，支持最多同时推10路流回TRTC房间。您需要指定回推的TRTC房间号和机器人ID（UserId），机器人ID不能与普通用户ID冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。
    /// 9、SeiParams：若您想要混合的音视频流中增加SEI信息时，可以使用SeiParams参数设置，支持音量布局SEI和叠加转推请求中的SEI，其中音量布局SEI的内容是固定的json结构，具体请看本章节后续的SEI说明。您可以通过FollowIdr参数设置SEI跟随关键帧一起发送。音量布局sei的说明如下：
    /// 如果您的CDN观众端需要识别到参与混流的主播位置，以及需要识别到参与混流的主播的音量信息，可以通过音量布局sei实现。音量布局sei的payload内容及参数说明如下：
    ///
    /// ```
    /// {
    ///     "app_data":"",
    ///     "canvas":{
    ///         "w":1080,
    ///         "h":960
    ///     },
    ///     "regions":[
    ///         {
    ///             "uid":"65949987242835883c",
    ///             "zorder":2,
    ///             "volume":45,
    ///             "x":270,
    ///             "y":480,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"659c9d8d242b328d31",
    ///             "zorder":2,
    ///             "volume":0,
    ///             "x":0,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"64989a82272b308c",
    ///             "zorder":2,
    ///             "volume":91,
    ///             "x":540,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         }
    ///     ],
    ///     "ver":"1.0",
    ///     "ts":1648544726
    /// }
    /// ```
    /// canvas：这个是混流信令中VideoEncode设置的宽高，即：混流输出的整个画布宽高。
    /// regions：里面是真实混入的用户id和对应的子画面位置，若参与混流的用户未进入TRTC房间或者未开启视频上行，regions中不会包含该用户。
    /// uid：代表参与混流的用户ID。
    /// zorder：参与混流userid在混流输出的层级。
    /// x/y：参与混流userid的子画面在画布的坐标。
    /// w/h：参与混流userid的子画面的大小。
    /// volume：代表混流用户的音量，取值范围为0-100，值越大，代表该用户参与混流时的音量越大。
    /// ts：是输出sei的服务器本地秒级时戳。
    /// ver：可以忽略。
    ///
    /// 其它使用注意事项：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、转推API不支持发起到TRTC控制台配置的自动旁路任务，以及通过TRTC SDK进房接口中设置的自定义流ID的旁路任务。
    /// 3、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 4、为了确保转推链接的稳定，不支持update时更新视频参数（codec）和音频参数（codec、采样率、码率、声道数）。
    /// 5、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 6、更新请求中必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增，否则会导致混流任务更新失败。
    /// 7、调用api时region选择说明：如果应用id是1400xxx时，region可填北京、上海、广州、香港，如果您的cdn观众主要在海外，请选择香港；如果应用id是200xxx或400xxx时，region请选择新加坡。
    /// 8、回推到TRTC房间的流不会参与其他回推房间任务的混流，满足下面条件之一时，可以参与其他转推cdn任务的混流: (1) 转推cdn任务在视频参数中通过具名方式指定推流机器人参与混流；(2) 转推cdn任务在音频参数中通过白名单方式指定推流机器人参与混流；(3) 转推cdn任务参与混流用户的房间号与回推机器人对应混流用户的房间号完全不同。
    /// 9、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(_ input: StartPublishCdnStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPublishCdnStreamResponse {
        try await self.client.execute(action: "StartPublishCdnStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动转推任务
    ///
    /// TRTC房间中可能会同时存在多路音视频流，您可以通过混流转推API，通知腾讯云服务端将同个房间或者多个房间的多路视频画面混合到一起，并指定每一路画面的位置，同时将多路声音进行混音，最终形成一路音视频流，以便用于录制和直播观看，同时可以支持将这一路音视频的混流回推到TRTC房间内部。
    ///
    /// 云api混流转推功能包含三个接口：
    /// 1、StartPublishCdnStream：启动一个混流转推任务，此接口会发起一个新的混流转推任务，启动成功后会返回一个sdkappid维度唯一的任务id（TaskId）。您需要保存该TaskId，后续需要依赖此TaskId更新任务和结束任务。
    /// 2、UpdatePublishCdnStream：更新指定的混流转推任务，包括：更新视频画面的布局、更新混音列表、更新转推cdn的地址列表以及更新回推房间列表。
    /// 3、StopPublishCdnStream：停止指定的混流转推任务。
    ///
    /// 您可以通过此套接口实现目标：
    /// 1、设置最终混流的画质和音质，包括视频分辨率、视频帧率、视频码率，和音频质量。
    /// 2、设置每一路画面的布局位置，您只需要设置一次，后续您指定的混流用户进房上行音视频时，排版引擎会自动将该用户的画面混合到您指定的布局位置。同时您可以使用更新接口调整画面的布局位置。
    /// 3、设置多个cdn转推的目的地址，一个转推任务最多可以同时设置10个cdn转推地址，如果您需要转推非腾讯云的cdn地址时，需要联系腾讯云开通能力。
    /// 4、设置多个回推房间列表，一个转推任务最多可以同时将混流回推到10个TRTC房间。
    ///
    /// 目前已经支持如下几种布局模版，其中动态布局模版（悬浮模板、九宫格模板、屏幕分享模板）只支持单个TRTC房间，自定义模版支持混合多个TRTC房间内的音视频流。具体说明如下：
    /// 1、悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面，如果用户只发送音频默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 2、九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小。最多支持16个画面，如果用户只发送音频，默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 3、屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，需要您明确设置占据大画面的混流用户信息。其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理，也支持统一设置子画面的渲染方式。
    /// 4、自定义布局模版：支持您主动根据业务需要设置布局位置，每个预设的布局位置支持具名设置（具名设置需要明确指定房间号和用户名）和不具名设置。当一个子画面具名设置时，该位置就为该用户预留，用户进房且上行音视频数据时会自动占据该位置，其它用户不会占据该位置。当预设的布局位置未具名时，排版引擎会根据进房间顺序自动填充，预设位置填满时，不再混合其它用户的画面和声音。每个子画面位置支持设置占位图（BackgroundImageUrl），当用户未进房或者只上行音频数据时，该位置画面可显示对应的占位图画面。
    ///
    /// 您可以控制台开通旁路转推回调功能实现转推cdn状态的事件监控，具体说明请参考官网文档：[旁路转推回调说明](https://cloud.tencent.com/document/product/647/88552)
    /// 您使用转推api时根据使用特性可能会产生如下费用：
    /// MCU混流转码费用请参考文档：[云端混流转码计费说明](https://cloud.tencent.com/document/product/647/49446)
    /// 转推非腾讯云CDN费用请参考文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)
    ///
    /// 参数的使用说明：
    /// 1、AgentParams：每个转推任务会拉起一个机器人用户进入TRTC房间进行拉流，您需要通过AgentParams.UserId参数进行设置，这个机器人id不能和房间中的普通用户id冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。您可以通过设置AgentParams.MaxIdleTime控制转推任务的自动结束，当设置此参数时，所有参与混流转推的主播持续离开TRTC房间超过MaxIdleTime的时长，自动停止转推任务。注意：参与混流转推的主播仅是停止音视频上行，转推任务不会自动停止。
    /// 2、WithTranscoding：如果需要将多路音视频流混合到一路时，WithTranscoding必须设置为1。
    /// 3、AudioParams：转推任务音频参数和视频参数是分开设置的，若您想要将指定的用户音频进行混音时，需要明确设置AudioParams.SubscribeAudioList。若您不设置AudioParams.SubscribeAudioList，混音引擎会自动将TRTC房间中所有用户的音频混合。若您想要混合TRTC房间除指定用户之外的所有用户的声音，可以通过AudioParams.UnSubscribeAudioList设置音频黑名单列表。
    /// 4、VideoParams：若您想要将用户的视频混合，可以通过VideoParams设置，若只想要混纯音频，则不用设置VideoParams参数。您可以通过VideoParams.LayoutParams.MixLayoutMode设置画面的布局模式，包括：动态布局（1：悬浮布局（默认），2：屏幕分享布局，3：九宫格布局）和自定义布局。动态布局模式由排版引擎按照固定的布局自动混合，不需要设置VideoParams.LayoutParams.MixLayoutList。当使用悬浮布局和屏幕分享布局时，您可以通过设置VideoParams.LayoutParams.MaxVideoUser参数指定大画面用户。自定义布局模式提供给您自主布局画面的能力，可以通过VideoParams.LayoutParams.MixLayoutList参数指定每个用户所在的布局位置。在每个布局参数中，您可以通过用户媒体流参数（UserMediaStream）指定这个布局位置为指定的用户预留，也可以不设置UserMediaStream，由排版引擎按照用户进入TRTC房间的顺序自动填充，另外您也可以设置每个布局位置的渲染方式（RenderMode）和裁剪方式（CustomCrop）。
    /// 5、VideoParams.WaterMarkList：若您想要混流画面中叠加水印，可以通过VideoParams.WaterMarkList参数设置，支持图片水印和文字水印，支持透明通道。
    /// 6、SingleSubscribeParams：若您想要将TRTC房间中的一路单流推到CDN，可以使用SingleSubscribeParams参数设置，此时需要将WithTranscoding参数设置为0。
    /// 7、PublishCdnParams.N：若您想要推流到CDN，可以使用PublishCdnParams.N参数设置，支持最多同时推流到10个CDN地址。若转推地址是腾讯云CDN时，请将IsTencentCdn明确设置为1；若您有转推非腾讯云CDN的需求时，请联系腾讯云技术支持开通，转推非腾讯云会产生转推费用，费用说明请参考官网文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)。
    /// 8、FeedBackRoomParams.N：若您想要将混合的音视频流回推到TRTC房间，可以使用FeedBackRoomParams.N参数设置，支持最多同时推10路流回TRTC房间。您需要指定回推的TRTC房间号和机器人ID（UserId），机器人ID不能与普通用户ID冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。
    /// 9、SeiParams：若您想要混合的音视频流中增加SEI信息时，可以使用SeiParams参数设置，支持音量布局SEI和叠加转推请求中的SEI，其中音量布局SEI的内容是固定的json结构，具体请看本章节后续的SEI说明。您可以通过FollowIdr参数设置SEI跟随关键帧一起发送。音量布局sei的说明如下：
    /// 如果您的CDN观众端需要识别到参与混流的主播位置，以及需要识别到参与混流的主播的音量信息，可以通过音量布局sei实现。音量布局sei的payload内容及参数说明如下：
    ///
    /// ```
    /// {
    ///     "app_data":"",
    ///     "canvas":{
    ///         "w":1080,
    ///         "h":960
    ///     },
    ///     "regions":[
    ///         {
    ///             "uid":"65949987242835883c",
    ///             "zorder":2,
    ///             "volume":45,
    ///             "x":270,
    ///             "y":480,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"659c9d8d242b328d31",
    ///             "zorder":2,
    ///             "volume":0,
    ///             "x":0,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"64989a82272b308c",
    ///             "zorder":2,
    ///             "volume":91,
    ///             "x":540,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         }
    ///     ],
    ///     "ver":"1.0",
    ///     "ts":1648544726
    /// }
    /// ```
    /// canvas：这个是混流信令中VideoEncode设置的宽高，即：混流输出的整个画布宽高。
    /// regions：里面是真实混入的用户id和对应的子画面位置，若参与混流的用户未进入TRTC房间或者未开启视频上行，regions中不会包含该用户。
    /// uid：代表参与混流的用户ID。
    /// zorder：参与混流userid在混流输出的层级。
    /// x/y：参与混流userid的子画面在画布的坐标。
    /// w/h：参与混流userid的子画面的大小。
    /// volume：代表混流用户的音量，取值范围为0-100，值越大，代表该用户参与混流时的音量越大。
    /// ts：是输出sei的服务器本地秒级时戳。
    /// ver：可以忽略。
    ///
    /// 其它使用注意事项：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、转推API不支持发起到TRTC控制台配置的自动旁路任务，以及通过TRTC SDK进房接口中设置的自定义流ID的旁路任务。
    /// 3、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 4、为了确保转推链接的稳定，不支持update时更新视频参数（codec）和音频参数（codec、采样率、码率、声道数）。
    /// 5、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 6、更新请求中必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增，否则会导致混流任务更新失败。
    /// 7、调用api时region选择说明：如果应用id是1400xxx时，region可填北京、上海、广州、香港，如果您的cdn观众主要在海外，请选择香港；如果应用id是200xxx或400xxx时，region请选择新加坡。
    /// 8、回推到TRTC房间的流不会参与其他回推房间任务的混流，满足下面条件之一时，可以参与其他转推cdn任务的混流: (1) 转推cdn任务在视频参数中通过具名方式指定推流机器人参与混流；(2) 转推cdn任务在音频参数中通过白名单方式指定推流机器人参与混流；(3) 转推cdn任务参与混流用户的房间号与回推机器人对应混流用户的房间号完全不同。
    /// 9、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(sdkAppId: UInt64, roomId: String, roomIdType: UInt64, agentParams: AgentParams, withTranscoding: UInt64, audioParams: McuAudioParams? = nil, videoParams: McuVideoParams? = nil, singleSubscribeParams: SingleSubscribeParams? = nil, publishCdnParams: [McuPublishCdnParam]? = nil, seiParams: McuSeiParams? = nil, feedBackRoomParams: [McuFeedBackRoomParams]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPublishCdnStreamResponse> {
        self.startPublishCdnStream(.init(sdkAppId: sdkAppId, roomId: roomId, roomIdType: roomIdType, agentParams: agentParams, withTranscoding: withTranscoding, audioParams: audioParams, videoParams: videoParams, singleSubscribeParams: singleSubscribeParams, publishCdnParams: publishCdnParams, seiParams: seiParams, feedBackRoomParams: feedBackRoomParams), region: region, logger: logger, on: eventLoop)
    }

    /// 启动转推任务
    ///
    /// TRTC房间中可能会同时存在多路音视频流，您可以通过混流转推API，通知腾讯云服务端将同个房间或者多个房间的多路视频画面混合到一起，并指定每一路画面的位置，同时将多路声音进行混音，最终形成一路音视频流，以便用于录制和直播观看，同时可以支持将这一路音视频的混流回推到TRTC房间内部。
    ///
    /// 云api混流转推功能包含三个接口：
    /// 1、StartPublishCdnStream：启动一个混流转推任务，此接口会发起一个新的混流转推任务，启动成功后会返回一个sdkappid维度唯一的任务id（TaskId）。您需要保存该TaskId，后续需要依赖此TaskId更新任务和结束任务。
    /// 2、UpdatePublishCdnStream：更新指定的混流转推任务，包括：更新视频画面的布局、更新混音列表、更新转推cdn的地址列表以及更新回推房间列表。
    /// 3、StopPublishCdnStream：停止指定的混流转推任务。
    ///
    /// 您可以通过此套接口实现目标：
    /// 1、设置最终混流的画质和音质，包括视频分辨率、视频帧率、视频码率，和音频质量。
    /// 2、设置每一路画面的布局位置，您只需要设置一次，后续您指定的混流用户进房上行音视频时，排版引擎会自动将该用户的画面混合到您指定的布局位置。同时您可以使用更新接口调整画面的布局位置。
    /// 3、设置多个cdn转推的目的地址，一个转推任务最多可以同时设置10个cdn转推地址，如果您需要转推非腾讯云的cdn地址时，需要联系腾讯云开通能力。
    /// 4、设置多个回推房间列表，一个转推任务最多可以同时将混流回推到10个TRTC房间。
    ///
    /// 目前已经支持如下几种布局模版，其中动态布局模版（悬浮模板、九宫格模板、屏幕分享模板）只支持单个TRTC房间，自定义模版支持混合多个TRTC房间内的音视频流。具体说明如下：
    /// 1、悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面，如果用户只发送音频默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 2、九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小。最多支持16个画面，如果用户只发送音频，默认不占布局配置，也支持设置。每个子画面默认采用居中裁剪的方式进行渲染，也支持统一设置子画面的渲染方式。
    /// 3、屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，需要您明确设置占据大画面的混流用户信息。其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理，也支持统一设置子画面的渲染方式。
    /// 4、自定义布局模版：支持您主动根据业务需要设置布局位置，每个预设的布局位置支持具名设置（具名设置需要明确指定房间号和用户名）和不具名设置。当一个子画面具名设置时，该位置就为该用户预留，用户进房且上行音视频数据时会自动占据该位置，其它用户不会占据该位置。当预设的布局位置未具名时，排版引擎会根据进房间顺序自动填充，预设位置填满时，不再混合其它用户的画面和声音。每个子画面位置支持设置占位图（BackgroundImageUrl），当用户未进房或者只上行音频数据时，该位置画面可显示对应的占位图画面。
    ///
    /// 您可以控制台开通旁路转推回调功能实现转推cdn状态的事件监控，具体说明请参考官网文档：[旁路转推回调说明](https://cloud.tencent.com/document/product/647/88552)
    /// 您使用转推api时根据使用特性可能会产生如下费用：
    /// MCU混流转码费用请参考文档：[云端混流转码计费说明](https://cloud.tencent.com/document/product/647/49446)
    /// 转推非腾讯云CDN费用请参考文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)
    ///
    /// 参数的使用说明：
    /// 1、AgentParams：每个转推任务会拉起一个机器人用户进入TRTC房间进行拉流，您需要通过AgentParams.UserId参数进行设置，这个机器人id不能和房间中的普通用户id冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。您可以通过设置AgentParams.MaxIdleTime控制转推任务的自动结束，当设置此参数时，所有参与混流转推的主播持续离开TRTC房间超过MaxIdleTime的时长，自动停止转推任务。注意：参与混流转推的主播仅是停止音视频上行，转推任务不会自动停止。
    /// 2、WithTranscoding：如果需要将多路音视频流混合到一路时，WithTranscoding必须设置为1。
    /// 3、AudioParams：转推任务音频参数和视频参数是分开设置的，若您想要将指定的用户音频进行混音时，需要明确设置AudioParams.SubscribeAudioList。若您不设置AudioParams.SubscribeAudioList，混音引擎会自动将TRTC房间中所有用户的音频混合。若您想要混合TRTC房间除指定用户之外的所有用户的声音，可以通过AudioParams.UnSubscribeAudioList设置音频黑名单列表。
    /// 4、VideoParams：若您想要将用户的视频混合，可以通过VideoParams设置，若只想要混纯音频，则不用设置VideoParams参数。您可以通过VideoParams.LayoutParams.MixLayoutMode设置画面的布局模式，包括：动态布局（1：悬浮布局（默认），2：屏幕分享布局，3：九宫格布局）和自定义布局。动态布局模式由排版引擎按照固定的布局自动混合，不需要设置VideoParams.LayoutParams.MixLayoutList。当使用悬浮布局和屏幕分享布局时，您可以通过设置VideoParams.LayoutParams.MaxVideoUser参数指定大画面用户。自定义布局模式提供给您自主布局画面的能力，可以通过VideoParams.LayoutParams.MixLayoutList参数指定每个用户所在的布局位置。在每个布局参数中，您可以通过用户媒体流参数（UserMediaStream）指定这个布局位置为指定的用户预留，也可以不设置UserMediaStream，由排版引擎按照用户进入TRTC房间的顺序自动填充，另外您也可以设置每个布局位置的渲染方式（RenderMode）和裁剪方式（CustomCrop）。
    /// 5、VideoParams.WaterMarkList：若您想要混流画面中叠加水印，可以通过VideoParams.WaterMarkList参数设置，支持图片水印和文字水印，支持透明通道。
    /// 6、SingleSubscribeParams：若您想要将TRTC房间中的一路单流推到CDN，可以使用SingleSubscribeParams参数设置，此时需要将WithTranscoding参数设置为0。
    /// 7、PublishCdnParams.N：若您想要推流到CDN，可以使用PublishCdnParams.N参数设置，支持最多同时推流到10个CDN地址。若转推地址是腾讯云CDN时，请将IsTencentCdn明确设置为1；若您有转推非腾讯云CDN的需求时，请联系腾讯云技术支持开通，转推非腾讯云会产生转推费用，费用说明请参考官网文档：[云端转推计费说明](https://cloud.tencent.com/document/product/647/82155)。
    /// 8、FeedBackRoomParams.N：若您想要将混合的音视频流回推到TRTC房间，可以使用FeedBackRoomParams.N参数设置，支持最多同时推10路流回TRTC房间。您需要指定回推的TRTC房间号和机器人ID（UserId），机器人ID不能与普通用户ID冲突，否则会导致转推任务由于机器人用户被踢出TRTC房间而异常结束，您可以通过增加特殊前缀的方式规避。
    /// 9、SeiParams：若您想要混合的音视频流中增加SEI信息时，可以使用SeiParams参数设置，支持音量布局SEI和叠加转推请求中的SEI，其中音量布局SEI的内容是固定的json结构，具体请看本章节后续的SEI说明。您可以通过FollowIdr参数设置SEI跟随关键帧一起发送。音量布局sei的说明如下：
    /// 如果您的CDN观众端需要识别到参与混流的主播位置，以及需要识别到参与混流的主播的音量信息，可以通过音量布局sei实现。音量布局sei的payload内容及参数说明如下：
    ///
    /// ```
    /// {
    ///     "app_data":"",
    ///     "canvas":{
    ///         "w":1080,
    ///         "h":960
    ///     },
    ///     "regions":[
    ///         {
    ///             "uid":"65949987242835883c",
    ///             "zorder":2,
    ///             "volume":45,
    ///             "x":270,
    ///             "y":480,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"659c9d8d242b328d31",
    ///             "zorder":2,
    ///             "volume":0,
    ///             "x":0,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         },
    ///         {
    ///             "uid":"64989a82272b308c",
    ///             "zorder":2,
    ///             "volume":91,
    ///             "x":540,
    ///             "y":0,
    ///             "w":540,
    ///             "h":480
    ///         }
    ///     ],
    ///     "ver":"1.0",
    ///     "ts":1648544726
    /// }
    /// ```
    /// canvas：这个是混流信令中VideoEncode设置的宽高，即：混流输出的整个画布宽高。
    /// regions：里面是真实混入的用户id和对应的子画面位置，若参与混流的用户未进入TRTC房间或者未开启视频上行，regions中不会包含该用户。
    /// uid：代表参与混流的用户ID。
    /// zorder：参与混流userid在混流输出的层级。
    /// x/y：参与混流userid的子画面在画布的坐标。
    /// w/h：参与混流userid的子画面的大小。
    /// volume：代表混流用户的音量，取值范围为0-100，值越大，代表该用户参与混流时的音量越大。
    /// ts：是输出sei的服务器本地秒级时戳。
    /// ver：可以忽略。
    ///
    /// 其它使用注意事项：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、转推API不支持发起到TRTC控制台配置的自动旁路任务，以及通过TRTC SDK进房接口中设置的自定义流ID的旁路任务。
    /// 3、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 4、为了确保转推链接的稳定，不支持update时更新视频参数（codec）和音频参数（codec、采样率、码率、声道数）。
    /// 5、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 6、更新请求中必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增，否则会导致混流任务更新失败。
    /// 7、调用api时region选择说明：如果应用id是1400xxx时，region可填北京、上海、广州、香港，如果您的cdn观众主要在海外，请选择香港；如果应用id是200xxx或400xxx时，region请选择新加坡。
    /// 8、回推到TRTC房间的流不会参与其他回推房间任务的混流，满足下面条件之一时，可以参与其他转推cdn任务的混流: (1) 转推cdn任务在视频参数中通过具名方式指定推流机器人参与混流；(2) 转推cdn任务在音频参数中通过白名单方式指定推流机器人参与混流；(3) 转推cdn任务参与混流用户的房间号与回推机器人对应混流用户的房间号完全不同。
    /// 9、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(sdkAppId: UInt64, roomId: String, roomIdType: UInt64, agentParams: AgentParams, withTranscoding: UInt64, audioParams: McuAudioParams? = nil, videoParams: McuVideoParams? = nil, singleSubscribeParams: SingleSubscribeParams? = nil, publishCdnParams: [McuPublishCdnParam]? = nil, seiParams: McuSeiParams? = nil, feedBackRoomParams: [McuFeedBackRoomParams]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPublishCdnStreamResponse {
        try await self.startPublishCdnStream(.init(sdkAppId: sdkAppId, roomId: roomId, roomIdType: roomIdType, agentParams: agentParams, withTranscoding: withTranscoding, audioParams: audioParams, videoParams: videoParams, singleSubscribeParams: singleSubscribeParams, publishCdnParams: publishCdnParams, seiParams: seiParams, feedBackRoomParams: feedBackRoomParams), region: region, logger: logger, on: eventLoop)
    }
}
