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

extension Bda {
    /// 自定义人像分割
    ///
    /// 在前后景分割的基础上优化多分类分割，支持对头发、五官等的分割，既作为换发型、挂件等底层技术，也可用于抠人头、抠人脸等玩法
    @inlinable
    public func segmentCustomizedPortraitPic(_ input: SegmentCustomizedPortraitPicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SegmentCustomizedPortraitPicResponse > {
        self.client.execute(action: "SegmentCustomizedPortraitPic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 自定义人像分割
    ///
    /// 在前后景分割的基础上优化多分类分割，支持对头发、五官等的分割，既作为换发型、挂件等底层技术，也可用于抠人头、抠人脸等玩法
    @inlinable
    public func segmentCustomizedPortraitPic(_ input: SegmentCustomizedPortraitPicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SegmentCustomizedPortraitPicResponse {
        try await self.client.execute(action: "SegmentCustomizedPortraitPic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SegmentCustomizedPortraitPic请求参数结构体
    public struct SegmentCustomizedPortraitPicRequest: TCRequestModel {
        /// 此参数为分割选项，请根据需要选择自己所想从图片中分割的部分。注意所有选项均为非必选，如未选择则值默认为false, 但是必须要保证多于一个选项的描述为true。
        public let segmentationOptions: SegmentationOptions
        
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 图片分辨率须小于2000*2000。 
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?
        
        /// 图片的 Url 。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片分辨率须小于2000*2000 ，图片 base64 编码后大小不可超过5M。 
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。  
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。 
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?
        
        public init (segmentationOptions: SegmentationOptions, image: String?, url: String?) {
            self.segmentationOptions = segmentationOptions
            self.image = image
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case segmentationOptions = "SegmentationOptions"
            case image = "Image"
            case url = "Url"
        }
    }
    
    /// SegmentCustomizedPortraitPic返回参数结构体
    public struct SegmentCustomizedPortraitPicResponse: TCResponseModel {
        /// 根据指定标签分割输出的透明背景人像图片的 base64 数据。
        public let portraitImage: String
        
        /// 指定标签处理后的Mask。一个通过 Base64 编码的文件，解码后文件由 Float 型浮点数组成。这些浮点数代表原图从左上角开始的每一行的每一个像素点，每一个浮点数的值是原图相应像素点位于人体轮廓内的置信度（0-1）转化的灰度值（0-255）
        public let maskImage: String
        
        /// 坐标信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageRects: [ImageRect]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case portraitImage = "PortraitImage"
            case maskImage = "MaskImage"
            case imageRects = "ImageRects"
            case requestId = "RequestId"
        }
    }
}
