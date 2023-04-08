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
    public struct StartPublishCdnStreamRequest: TCRequestModel {
        /// TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        public let sdkAppId: UInt64

        /// 主房间信息RoomId，转推的TRTC房间所对应的RoomId。
        public let roomId: String

        /// 主房间信息RoomType，必须和转推的房间所对应的RoomId类型相同，0为整形房间号，1为字符串房间号。
        public let roomIdType: UInt64

        /// 转推服务加入TRTC房间的机器人参数。
        public let agentParams: AgentParams

        /// 是否转码，0表示无需转码，1表示需要转码。是否收取转码费是由WithTranscoding参数决定的，WithTranscoding为0，表示旁路转推，不会收取转码费用，WithTranscoding为1，表示混流转推，会收取转吗费用。
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

        /// 回推房间信息，和转推CDN参数必须要有一个。
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
    public struct StartPublishCdnStreamResponse: TCResponseModel {
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
    /// 接口说明：启动旁路以及混流转推任务。TRTC 的房间中可能会同时存在多路音视频流，您可以通过此API接口，实现以下几种效果：
    /// 1、支持将单个主播的音视频流发布（也称作“转推”）到直播CDN上，请参考示例2（发起单流音视频旁路转推）和示例3（发起单流纯音频旁路转推）。
    /// 2、支持将同个房间多个主播或者不同房间多个主播的音视频混合成1路后再发布到直播CDN上，您可以通过AudioParams.SubscribeAudioList和VideoParams.LayoutParams调整参与混音的用户列表以及指定各路混流画面的布局位置。请参考示例1（发起混流转推）。
    /// 3、支持预先设置一个房间的混流模板，将该房间中的多个音视频混合成1路发布到直播CDN，腾讯云后台实时监控TRTC房间中的主播变化，自动按照混流模板调整布局。目前已经支持了如下几种混流预设模板：
    ///      - 悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面。
    ///      - 九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小，最多支持16个画面。
    ///      - 屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理。
    /// 4、支持同时将音视频流发布到最多10个直播CDN上。您可以通过PublishCdnParams.PublishCdnUrl指定转推CDN的url，如果您想转推到腾讯云CDN，PublishCdnParams.IsTencentCdn填为1。
    /// 5、支持通过配置服务端回调，实时将转推状态以HTTP/HTTPS POST 请求发送给您的服务器，如果您需要接入转推事件回调，请联系腾讯云技术支持。
    /// 6、云API调用支持广州、上海、北京、香港四个地域，如果您想转推海外，请选择香港地域。
    /// 7、国内站默认只支持转推腾讯云CDN，如您有转推第三方CDN的需求，请联系腾讯云技术支持，由后台进行评估。
    /// 注意：
    /// 1、**混流转码为收费功能，调用接口将产生云端混流转码费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/49446)。**
    /// 2、**转推非腾讯云CDN将产生云端转推费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/82155)。**
    ///
    /// 其他使用说明如下：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 3、为了确保转推链接的稳定，更新转推任务接口（UpdatePublishCdnStream）时不支持更改视频参数（codec）和音频参数（codec、采样率、码率、声道数），其余参数建议全量带齐，如您有转码/非转码切换，其余参数则必须全量带齐。
    /// 4、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 5、更新转推任务（UpdatePublishCdnStream）必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增：腾讯云返回InternalError错误码时，需重试请求（不换SequenceNumber）；腾讯云返回FailedOperation.OutdateRequest过期错误码时，无需处理即可。
    /// 6、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(_ input: StartPublishCdnStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPublishCdnStreamResponse> {
        self.client.execute(action: "StartPublishCdnStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动转推任务
    ///
    /// 接口说明：启动旁路以及混流转推任务。TRTC 的房间中可能会同时存在多路音视频流，您可以通过此API接口，实现以下几种效果：
    /// 1、支持将单个主播的音视频流发布（也称作“转推”）到直播CDN上，请参考示例2（发起单流音视频旁路转推）和示例3（发起单流纯音频旁路转推）。
    /// 2、支持将同个房间多个主播或者不同房间多个主播的音视频混合成1路后再发布到直播CDN上，您可以通过AudioParams.SubscribeAudioList和VideoParams.LayoutParams调整参与混音的用户列表以及指定各路混流画面的布局位置。请参考示例1（发起混流转推）。
    /// 3、支持预先设置一个房间的混流模板，将该房间中的多个音视频混合成1路发布到直播CDN，腾讯云后台实时监控TRTC房间中的主播变化，自动按照混流模板调整布局。目前已经支持了如下几种混流预设模板：
    ///      - 悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面。
    ///      - 九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小，最多支持16个画面。
    ///      - 屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理。
    /// 4、支持同时将音视频流发布到最多10个直播CDN上。您可以通过PublishCdnParams.PublishCdnUrl指定转推CDN的url，如果您想转推到腾讯云CDN，PublishCdnParams.IsTencentCdn填为1。
    /// 5、支持通过配置服务端回调，实时将转推状态以HTTP/HTTPS POST 请求发送给您的服务器，如果您需要接入转推事件回调，请联系腾讯云技术支持。
    /// 6、云API调用支持广州、上海、北京、香港四个地域，如果您想转推海外，请选择香港地域。
    /// 7、国内站默认只支持转推腾讯云CDN，如您有转推第三方CDN的需求，请联系腾讯云技术支持，由后台进行评估。
    /// 注意：
    /// 1、**混流转码为收费功能，调用接口将产生云端混流转码费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/49446)。**
    /// 2、**转推非腾讯云CDN将产生云端转推费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/82155)。**
    ///
    /// 其他使用说明如下：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 3、为了确保转推链接的稳定，更新转推任务接口（UpdatePublishCdnStream）时不支持更改视频参数（codec）和音频参数（codec、采样率、码率、声道数），其余参数建议全量带齐，如您有转码/非转码切换，其余参数则必须全量带齐。
    /// 4、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 5、更新转推任务（UpdatePublishCdnStream）必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增：腾讯云返回InternalError错误码时，需重试请求（不换SequenceNumber）；腾讯云返回FailedOperation.OutdateRequest过期错误码时，无需处理即可。
    /// 6、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(_ input: StartPublishCdnStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPublishCdnStreamResponse {
        try await self.client.execute(action: "StartPublishCdnStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动转推任务
    ///
    /// 接口说明：启动旁路以及混流转推任务。TRTC 的房间中可能会同时存在多路音视频流，您可以通过此API接口，实现以下几种效果：
    /// 1、支持将单个主播的音视频流发布（也称作“转推”）到直播CDN上，请参考示例2（发起单流音视频旁路转推）和示例3（发起单流纯音频旁路转推）。
    /// 2、支持将同个房间多个主播或者不同房间多个主播的音视频混合成1路后再发布到直播CDN上，您可以通过AudioParams.SubscribeAudioList和VideoParams.LayoutParams调整参与混音的用户列表以及指定各路混流画面的布局位置。请参考示例1（发起混流转推）。
    /// 3、支持预先设置一个房间的混流模板，将该房间中的多个音视频混合成1路发布到直播CDN，腾讯云后台实时监控TRTC房间中的主播变化，自动按照混流模板调整布局。目前已经支持了如下几种混流预设模板：
    ///      - 悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面。
    ///      - 九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小，最多支持16个画面。
    ///      - 屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理。
    /// 4、支持同时将音视频流发布到最多10个直播CDN上。您可以通过PublishCdnParams.PublishCdnUrl指定转推CDN的url，如果您想转推到腾讯云CDN，PublishCdnParams.IsTencentCdn填为1。
    /// 5、支持通过配置服务端回调，实时将转推状态以HTTP/HTTPS POST 请求发送给您的服务器，如果您需要接入转推事件回调，请联系腾讯云技术支持。
    /// 6、云API调用支持广州、上海、北京、香港四个地域，如果您想转推海外，请选择香港地域。
    /// 7、国内站默认只支持转推腾讯云CDN，如您有转推第三方CDN的需求，请联系腾讯云技术支持，由后台进行评估。
    /// 注意：
    /// 1、**混流转码为收费功能，调用接口将产生云端混流转码费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/49446)。**
    /// 2、**转推非腾讯云CDN将产生云端转推费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/82155)。**
    ///
    /// 其他使用说明如下：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 3、为了确保转推链接的稳定，更新转推任务接口（UpdatePublishCdnStream）时不支持更改视频参数（codec）和音频参数（codec、采样率、码率、声道数），其余参数建议全量带齐，如您有转码/非转码切换，其余参数则必须全量带齐。
    /// 4、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 5、更新转推任务（UpdatePublishCdnStream）必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增：腾讯云返回InternalError错误码时，需重试请求（不换SequenceNumber）；腾讯云返回FailedOperation.OutdateRequest过期错误码时，无需处理即可。
    /// 6、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(sdkAppId: UInt64, roomId: String, roomIdType: UInt64, agentParams: AgentParams, withTranscoding: UInt64, audioParams: McuAudioParams? = nil, videoParams: McuVideoParams? = nil, singleSubscribeParams: SingleSubscribeParams? = nil, publishCdnParams: [McuPublishCdnParam]? = nil, seiParams: McuSeiParams? = nil, feedBackRoomParams: [McuFeedBackRoomParams]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPublishCdnStreamResponse> {
        self.startPublishCdnStream(.init(sdkAppId: sdkAppId, roomId: roomId, roomIdType: roomIdType, agentParams: agentParams, withTranscoding: withTranscoding, audioParams: audioParams, videoParams: videoParams, singleSubscribeParams: singleSubscribeParams, publishCdnParams: publishCdnParams, seiParams: seiParams, feedBackRoomParams: feedBackRoomParams), region: region, logger: logger, on: eventLoop)
    }

    /// 启动转推任务
    ///
    /// 接口说明：启动旁路以及混流转推任务。TRTC 的房间中可能会同时存在多路音视频流，您可以通过此API接口，实现以下几种效果：
    /// 1、支持将单个主播的音视频流发布（也称作“转推”）到直播CDN上，请参考示例2（发起单流音视频旁路转推）和示例3（发起单流纯音频旁路转推）。
    /// 2、支持将同个房间多个主播或者不同房间多个主播的音视频混合成1路后再发布到直播CDN上，您可以通过AudioParams.SubscribeAudioList和VideoParams.LayoutParams调整参与混音的用户列表以及指定各路混流画面的布局位置。请参考示例1（发起混流转推）。
    /// 3、支持预先设置一个房间的混流模板，将该房间中的多个音视频混合成1路发布到直播CDN，腾讯云后台实时监控TRTC房间中的主播变化，自动按照混流模板调整布局。目前已经支持了如下几种混流预设模板：
    ///      - 悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面。
    ///      - 九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小，最多支持16个画面。
    ///      - 屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理。
    /// 4、支持同时将音视频流发布到最多10个直播CDN上。您可以通过PublishCdnParams.PublishCdnUrl指定转推CDN的url，如果您想转推到腾讯云CDN，PublishCdnParams.IsTencentCdn填为1。
    /// 5、支持通过配置服务端回调，实时将转推状态以HTTP/HTTPS POST 请求发送给您的服务器，如果您需要接入转推事件回调，请联系腾讯云技术支持。
    /// 6、云API调用支持广州、上海、北京、香港四个地域，如果您想转推海外，请选择香港地域。
    /// 7、国内站默认只支持转推腾讯云CDN，如您有转推第三方CDN的需求，请联系腾讯云技术支持，由后台进行评估。
    /// 注意：
    /// 1、**混流转码为收费功能，调用接口将产生云端混流转码费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/49446)。**
    /// 2、**转推非腾讯云CDN将产生云端转推费用，详见[云端混流转推计费说明](https://cloud.tencent.com/document/product/647/82155)。**
    ///
    /// 其他使用说明如下：
    /// 1、使用混流转推接口时，您需要先调用启动转推任务接口（StartPublishCdnStream），获取启动转推任务响应中的任务ID标识（TaskId）。后续传入任务ID标识（TaskId）来更新转推任务（UpdatePublishCdnStream）和停止转推任务（StopPublishCdnStream）。
    /// 2、为了确保转推链接的稳定，同一个转推任务不支持纯音频、音视频、纯视频之间的切换。
    /// 3、为了确保转推链接的稳定，更新转推任务接口（UpdatePublishCdnStream）时不支持更改视频参数（codec）和音频参数（codec、采样率、码率、声道数），其余参数建议全量带齐，如您有转码/非转码切换，其余参数则必须全量带齐。
    /// 4、发起单流旁路任务时，AudioParams和VideoParams都填写表示音视频旁路，如果仅填写AudioParams表示纯音频旁路，任务进行过程中不支持纯音频到音视频的切换。音视频旁路时，VideoParams中的Width、Height、Fps、BitRate、Gop需要按照真实上行参数填写。
    /// 5、更新转推任务（UpdatePublishCdnStream）必须携带SequenceNumber参数，用于防止请求乱序。客户保证对同一个任务更新时的SequenceNumber参数递增：腾讯云返回InternalError错误码时，需重试请求（不换SequenceNumber）；腾讯云返回FailedOperation.OutdateRequest过期错误码时，无需处理即可。
    /// 6、您可以在主播进房前，提前创建转推任务，结束转推任务时需要主动调用停止接口。如果您没有调用停止转推任务接口时，腾讯云后台会按照所有参与混流的用户没有任何数据上行的时间算起，直到超过启动转推任务时设置的超时时间（AgentParams.MaxIdleTime）为止，自动停止混流转推任务。
    @inlinable
    public func startPublishCdnStream(sdkAppId: UInt64, roomId: String, roomIdType: UInt64, agentParams: AgentParams, withTranscoding: UInt64, audioParams: McuAudioParams? = nil, videoParams: McuVideoParams? = nil, singleSubscribeParams: SingleSubscribeParams? = nil, publishCdnParams: [McuPublishCdnParam]? = nil, seiParams: McuSeiParams? = nil, feedBackRoomParams: [McuFeedBackRoomParams]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPublishCdnStreamResponse {
        try await self.startPublishCdnStream(.init(sdkAppId: sdkAppId, roomId: roomId, roomIdType: roomIdType, agentParams: agentParams, withTranscoding: withTranscoding, audioParams: audioParams, videoParams: videoParams, singleSubscribeParams: singleSubscribeParams, publishCdnParams: publishCdnParams, seiParams: seiParams, feedBackRoomParams: feedBackRoomParams), region: region, logger: logger, on: eventLoop)
    }
}
