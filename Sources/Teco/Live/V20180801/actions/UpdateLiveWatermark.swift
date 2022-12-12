//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// UpdateLiveWatermark请求参数结构体
    public struct UpdateLiveWatermarkRequest: TCRequestModel {
        /// 水印 ID。
        /// 在添加水印接口 [AddLiveWatermark](/document/product/267/30154) 调用返回值中获取水印 ID。
        public let watermarkId: Int64
        
        /// 水印图片 URL。
        /// URL中禁止包含的字符：
        ///  ;(){}$>`#"\'|
        public let pictureUrl: String
        
        /// 显示位置，X轴偏移，单位是百分比，默认 0。
        public let xPosition: Int64
        
        /// 显示位置，Y轴偏移，单位是百分比，默认 0。
        public let yPosition: Int64
        
        /// 水印名称。
        /// 最长16字节。
        public let watermarkName: String?
        
        /// 水印宽度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始宽度。
        public let width: Int64?
        
        /// 水印高度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始高度。
        public let height: Int64?
        
        public init (watermarkId: Int64, pictureUrl: String, xPosition: Int64, yPosition: Int64, watermarkName: String? = nil, width: Int64? = nil, height: Int64? = nil) {
            self.watermarkId = watermarkId
            self.pictureUrl = pictureUrl
            self.xPosition = xPosition
            self.yPosition = yPosition
            self.watermarkName = watermarkName
            self.width = width
            self.height = height
        }
        
        enum CodingKeys: String, CodingKey {
            case watermarkId = "WatermarkId"
            case pictureUrl = "PictureUrl"
            case xPosition = "XPosition"
            case yPosition = "YPosition"
            case watermarkName = "WatermarkName"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// UpdateLiveWatermark返回参数结构体
    public struct UpdateLiveWatermarkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新水印
    ///
    /// 更新水印。
    @inlinable
    public func updateLiveWatermark(_ input: UpdateLiveWatermarkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateLiveWatermarkResponse > {
        self.client.execute(action: "UpdateLiveWatermark", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新水印
    ///
    /// 更新水印。
    @inlinable
    public func updateLiveWatermark(_ input: UpdateLiveWatermarkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLiveWatermarkResponse {
        try await self.client.execute(action: "UpdateLiveWatermark", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
