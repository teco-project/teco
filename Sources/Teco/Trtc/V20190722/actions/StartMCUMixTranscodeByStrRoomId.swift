//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trtc {
    /// 启动云端混流（字符串房间号）
    ///
    /// 接口说明：启动云端混流，并指定混流画面中各路画面的布局位置。
    /// TRTC 的一个房间中可能会同时存在多路音视频流，您可以通过此 API 接口，通知腾讯云服务端将多路视频画面合成一路，并指定每一路画面的位置，同时将多路声音进行混音，最终形成一路音视频流，以便用于录制和直播观看。
    /// 您可以通过此接口实现如下目标：
    /// - 设置最终直播流的画质和音质，包括视频分辨率、视频码率、视频帧率、以及声音质量等。
    /// - 设置各路画面的位置和布局，您只需要在启动时设置一次，排版引擎会自动完成后续的画面排布。
    /// - 设置录制文件名，用于二次回放。
    /// - 设置 CDN 直播流 ID，用于在 CDN 进行直播观看。
    /// 目前已经支持了如下几种布局模板：
    /// - 悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面，如果用户只发送音频，仍然会占用画面位置。
    /// - 九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小。最多支持16个画面，如果用户只发送音频，仍然会占用画面位置。
    /// - 屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理。
    /// - 画中画模板：适用于混合大小两路视频画面和其他用户混音，或者混合一路大画面和其他用户混音的场景。小画面悬浮于大画面之上，可以指定大小画面的用户以及小画面的显示位置。
    /// - 自定义模板：适用于在混流中指定用户的画面位置，或者预设视频画面位置的场景。当预设位置指定用户时，排版引擎会该用户预留位置；当预设位置未指定用户时，排版引擎会根据进房间顺序自动填充。预设位置填满时，不再混合其他用户的画面和声音。自定义模板启用占位图功能时（LayoutParams中的PlaceHolderMode设置成1），在预设位置的用户没有上行视频时可显示对应的占位图（PlaceImageId）。
    /// 注意：
    /// 1、**混流转码为收费功能，调用接口将产生云端混流转码费用，详见[云端混流转码计费说明](https://cloud.tencent.com/document/product/647/49446)。**
    /// 2、2020年1月9号及以后创建的应用才能直接调用此接口。2020年1月9日之前创建的应用默认使用云直播的云端混流，如需切换至MCU混流，请[提交工单](https://console.cloud.tencent.com/workorder/category)寻求帮助。
    /// 3、客户端混流和服务端混流不能混用。
    @inlinable
    public func startMCUMixTranscodeByStrRoomId(_ input: StartMCUMixTranscodeByStrRoomIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartMCUMixTranscodeByStrRoomIdResponse > {
        self.client.execute(action: "StartMCUMixTranscodeByStrRoomId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动云端混流（字符串房间号）
    ///
    /// 接口说明：启动云端混流，并指定混流画面中各路画面的布局位置。
    /// TRTC 的一个房间中可能会同时存在多路音视频流，您可以通过此 API 接口，通知腾讯云服务端将多路视频画面合成一路，并指定每一路画面的位置，同时将多路声音进行混音，最终形成一路音视频流，以便用于录制和直播观看。
    /// 您可以通过此接口实现如下目标：
    /// - 设置最终直播流的画质和音质，包括视频分辨率、视频码率、视频帧率、以及声音质量等。
    /// - 设置各路画面的位置和布局，您只需要在启动时设置一次，排版引擎会自动完成后续的画面排布。
    /// - 设置录制文件名，用于二次回放。
    /// - 设置 CDN 直播流 ID，用于在 CDN 进行直播观看。
    /// 目前已经支持了如下几种布局模板：
    /// - 悬浮模板：第一个进入房间的用户的视频画面会铺满整个屏幕，其他用户的视频画面从左下角依次水平排列，显示为小画面，最多4行，每行4个，小画面悬浮于大画面之上。最多支持1个大画面和15个小画面，如果用户只发送音频，仍然会占用画面位置。
    /// - 九宫格模板：所有用户的视频画面大小一致，平分整个屏幕，人数越多，每个画面的尺寸越小。最多支持16个画面，如果用户只发送音频，仍然会占用画面位置。
    /// - 屏幕分享模板：适合视频会议和在线教育场景的布局，屏幕分享（或者主讲的摄像头）始终占据屏幕左侧的大画面位置，其他用户依次垂直排列于右侧，最多两列，每列最多8个小画面。最多支持1个大画面和15个小画面。若上行分辨率宽高比与画面输出宽高比不一致时，左侧大画面为了保持内容的完整性采用缩放方式处理，右侧小画面采用裁剪方式处理。
    /// - 画中画模板：适用于混合大小两路视频画面和其他用户混音，或者混合一路大画面和其他用户混音的场景。小画面悬浮于大画面之上，可以指定大小画面的用户以及小画面的显示位置。
    /// - 自定义模板：适用于在混流中指定用户的画面位置，或者预设视频画面位置的场景。当预设位置指定用户时，排版引擎会该用户预留位置；当预设位置未指定用户时，排版引擎会根据进房间顺序自动填充。预设位置填满时，不再混合其他用户的画面和声音。自定义模板启用占位图功能时（LayoutParams中的PlaceHolderMode设置成1），在预设位置的用户没有上行视频时可显示对应的占位图（PlaceImageId）。
    /// 注意：
    /// 1、**混流转码为收费功能，调用接口将产生云端混流转码费用，详见[云端混流转码计费说明](https://cloud.tencent.com/document/product/647/49446)。**
    /// 2、2020年1月9号及以后创建的应用才能直接调用此接口。2020年1月9日之前创建的应用默认使用云直播的云端混流，如需切换至MCU混流，请[提交工单](https://console.cloud.tencent.com/workorder/category)寻求帮助。
    /// 3、客户端混流和服务端混流不能混用。
    @inlinable
    public func startMCUMixTranscodeByStrRoomId(_ input: StartMCUMixTranscodeByStrRoomIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMCUMixTranscodeByStrRoomIdResponse {
        try await self.client.execute(action: "StartMCUMixTranscodeByStrRoomId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StartMCUMixTranscodeByStrRoomId请求参数结构体
    public struct StartMCUMixTranscodeByStrRoomIdRequest: TCRequestModel {
        /// TRTC的SDKAppId。
        public let sdkAppId: UInt64
        
        /// 字符串房间号。
        public let strRoomId: String
        
        /// 混流输出控制参数。
        public let outputParams: OutputParams
        
        /// 混流输出编码参数。
        public let encodeParams: EncodeParams
        
        /// 混流输出布局参数。
        public let layoutParams: LayoutParams
        
        /// 第三方CDN转推参数。
        public let publishCdnParams: PublishCdnParams
        
        public init (sdkAppId: UInt64, strRoomId: String, outputParams: OutputParams, encodeParams: EncodeParams, layoutParams: LayoutParams, publishCdnParams: PublishCdnParams) {
            self.sdkAppId = sdkAppId
            self.strRoomId = strRoomId
            self.outputParams = outputParams
            self.encodeParams = encodeParams
            self.layoutParams = layoutParams
            self.publishCdnParams = publishCdnParams
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case strRoomId = "StrRoomId"
            case outputParams = "OutputParams"
            case encodeParams = "EncodeParams"
            case layoutParams = "LayoutParams"
            case publishCdnParams = "PublishCdnParams"
        }
    }
    
    /// StartMCUMixTranscodeByStrRoomId返回参数结构体
    public struct StartMCUMixTranscodeByStrRoomIdResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}