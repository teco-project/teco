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

extension Live {
    /// AddLiveWatermark请求参数结构体
    public struct AddLiveWatermarkRequest: TCRequestModel {
        /// 水印图片 URL。
        /// URL中禁止包含的字符：
        ///  ;(){}$>`#"\'|
        public let pictureUrl: String

        /// 水印名称。
        /// 最长16字节。
        public let watermarkName: String

        /// 显示位置，X轴偏移，单位是百分比，默认 0。
        public let xPosition: Int64?

        /// 显示位置，Y轴偏移，单位是百分比，默认 0。
        public let yPosition: Int64?

        /// 水印宽度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始宽度。
        public let width: Int64?

        /// 水印高度，占直播原始画面高度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始高度。
        public let height: Int64?

        public init(pictureUrl: String, watermarkName: String, xPosition: Int64? = nil, yPosition: Int64? = nil, width: Int64? = nil, height: Int64? = nil) {
            self.pictureUrl = pictureUrl
            self.watermarkName = watermarkName
            self.xPosition = xPosition
            self.yPosition = yPosition
            self.width = width
            self.height = height
        }

        enum CodingKeys: String, CodingKey {
            case pictureUrl = "PictureUrl"
            case watermarkName = "WatermarkName"
            case xPosition = "XPosition"
            case yPosition = "YPosition"
            case width = "Width"
            case height = "Height"
        }
    }

    /// AddLiveWatermark返回参数结构体
    public struct AddLiveWatermarkResponse: TCResponseModel {
        /// 水印ID。
        public let watermarkId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case watermarkId = "WatermarkId"
            case requestId = "RequestId"
        }
    }

    /// 添加水印
    ///
    /// 添加水印，成功返回水印 ID 后，需要调用[CreateLiveWatermarkRule](/document/product/267/32629)接口将水印 ID 绑定到流使用。
    /// 水印数量上限 100，超过后需要先删除，再添加。
    @inlinable
    public func addLiveWatermark(_ input: AddLiveWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddLiveWatermarkResponse> {
        self.client.execute(action: "AddLiveWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加水印
    ///
    /// 添加水印，成功返回水印 ID 后，需要调用[CreateLiveWatermarkRule](/document/product/267/32629)接口将水印 ID 绑定到流使用。
    /// 水印数量上限 100，超过后需要先删除，再添加。
    @inlinable
    public func addLiveWatermark(_ input: AddLiveWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLiveWatermarkResponse {
        try await self.client.execute(action: "AddLiveWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加水印
    ///
    /// 添加水印，成功返回水印 ID 后，需要调用[CreateLiveWatermarkRule](/document/product/267/32629)接口将水印 ID 绑定到流使用。
    /// 水印数量上限 100，超过后需要先删除，再添加。
    @inlinable
    public func addLiveWatermark(pictureUrl: String, watermarkName: String, xPosition: Int64? = nil, yPosition: Int64? = nil, width: Int64? = nil, height: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddLiveWatermarkResponse> {
        self.addLiveWatermark(AddLiveWatermarkRequest(pictureUrl: pictureUrl, watermarkName: watermarkName, xPosition: xPosition, yPosition: yPosition, width: width, height: height), region: region, logger: logger, on: eventLoop)
    }

    /// 添加水印
    ///
    /// 添加水印，成功返回水印 ID 后，需要调用[CreateLiveWatermarkRule](/document/product/267/32629)接口将水印 ID 绑定到流使用。
    /// 水印数量上限 100，超过后需要先删除，再添加。
    @inlinable
    public func addLiveWatermark(pictureUrl: String, watermarkName: String, xPosition: Int64? = nil, yPosition: Int64? = nil, width: Int64? = nil, height: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLiveWatermarkResponse {
        try await self.addLiveWatermark(AddLiveWatermarkRequest(pictureUrl: pictureUrl, watermarkName: watermarkName, xPosition: xPosition, yPosition: yPosition, width: width, height: height), region: region, logger: logger, on: eventLoop)
    }
}
