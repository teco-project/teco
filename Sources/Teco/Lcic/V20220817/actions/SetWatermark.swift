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

extension Lcic {
    /// SetWatermark请求参数结构体
    public struct SetWatermarkRequest: TCRequestModel {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64

        /// 老师视频区域的水印参数地址，设置为空字符串表示删除
        public let teacherUrl: String?

        /// 白板视频区域的水印参数地址，设置为空字符串表示删除
        public let boardUrl: String?

        /// 视频默认图片（在没有视频流的时候显示），设置为空字符串表示删除
        public let videoUrl: String?

        /// 白板区域水印的宽度，取值:0-100，默认为0，表示区域X方向的百分比
        public let boardW: Float?

        /// 白板区域水印的高度，取值:0-100，默认为0, 表示区域Y方向的百分比
        public let boardH: Float?

        /// 白板区域水印X偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        public let boardX: Float?

        /// 白板区域水印Y偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        public let boardY: Float?

        /// 老师视频区域水印的宽度，取值:0-100，默认为0，表示区域X方向的百分比
        public let teacherW: Float?

        /// 老师视频区域水印的高度，取值:0-100，默认为0, 表示区域Y方向的百分比
        public let teacherH: Float?

        /// 老师视频区域水印X偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        public let teacherX: Float?

        /// 老师视频区域水印Y偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        public let teacherY: Float?

        /// 文字水印内容，设置为空字符串表示删除
        public let text: String?

        /// 文字水印颜色
        public let textColor: String?

        public init(sdkAppId: UInt64, teacherUrl: String? = nil, boardUrl: String? = nil, videoUrl: String? = nil, boardW: Float? = nil, boardH: Float? = nil, boardX: Float? = nil, boardY: Float? = nil, teacherW: Float? = nil, teacherH: Float? = nil, teacherX: Float? = nil, teacherY: Float? = nil, text: String? = nil, textColor: String? = nil) {
            self.sdkAppId = sdkAppId
            self.teacherUrl = teacherUrl
            self.boardUrl = boardUrl
            self.videoUrl = videoUrl
            self.boardW = boardW
            self.boardH = boardH
            self.boardX = boardX
            self.boardY = boardY
            self.teacherW = teacherW
            self.teacherH = teacherH
            self.teacherX = teacherX
            self.teacherY = teacherY
            self.text = text
            self.textColor = textColor
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case teacherUrl = "TeacherUrl"
            case boardUrl = "BoardUrl"
            case videoUrl = "VideoUrl"
            case boardW = "BoardW"
            case boardH = "BoardH"
            case boardX = "BoardX"
            case boardY = "BoardY"
            case teacherW = "TeacherW"
            case teacherH = "TeacherH"
            case teacherX = "TeacherX"
            case teacherY = "TeacherY"
            case text = "Text"
            case textColor = "TextColor"
        }
    }

    /// SetWatermark返回参数结构体
    public struct SetWatermarkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置水印
    @inlinable @discardableResult
    public func setWatermark(_ input: SetWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetWatermarkResponse> {
        self.client.execute(action: "SetWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置水印
    @inlinable @discardableResult
    public func setWatermark(_ input: SetWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetWatermarkResponse {
        try await self.client.execute(action: "SetWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置水印
    @inlinable @discardableResult
    public func setWatermark(sdkAppId: UInt64, teacherUrl: String? = nil, boardUrl: String? = nil, videoUrl: String? = nil, boardW: Float? = nil, boardH: Float? = nil, boardX: Float? = nil, boardY: Float? = nil, teacherW: Float? = nil, teacherH: Float? = nil, teacherX: Float? = nil, teacherY: Float? = nil, text: String? = nil, textColor: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetWatermarkResponse> {
        self.setWatermark(.init(sdkAppId: sdkAppId, teacherUrl: teacherUrl, boardUrl: boardUrl, videoUrl: videoUrl, boardW: boardW, boardH: boardH, boardX: boardX, boardY: boardY, teacherW: teacherW, teacherH: teacherH, teacherX: teacherX, teacherY: teacherY, text: text, textColor: textColor), region: region, logger: logger, on: eventLoop)
    }

    /// 设置水印
    @inlinable @discardableResult
    public func setWatermark(sdkAppId: UInt64, teacherUrl: String? = nil, boardUrl: String? = nil, videoUrl: String? = nil, boardW: Float? = nil, boardH: Float? = nil, boardX: Float? = nil, boardY: Float? = nil, teacherW: Float? = nil, teacherH: Float? = nil, teacherX: Float? = nil, teacherY: Float? = nil, text: String? = nil, textColor: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetWatermarkResponse {
        try await self.setWatermark(.init(sdkAppId: sdkAppId, teacherUrl: teacherUrl, boardUrl: boardUrl, videoUrl: videoUrl, boardW: boardW, boardH: boardH, boardX: boardX, boardY: boardY, teacherW: teacherW, teacherH: teacherH, teacherX: teacherX, teacherY: teacherY, text: text, textColor: textColor), region: region, logger: logger, on: eventLoop)
    }
}
