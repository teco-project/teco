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

extension Tiia {
    /// 车辆识别（增强版）
    ///
    /// 车辆识别（增强版）在车辆识别的基础上**增加了车牌识别的功能，并升级了车型识别的效果**。可对图片中车辆的车型和车牌进行同时识别，输出车辆的车牌信息，以及车辆品牌（如路虎）、车系（如神行者2）、类型（如中型SUV）、颜色和车辆在图中的坐标等信息，覆盖轿车、SUV、大型客车等市面常见车，支持三千多种车辆型号。如果图片中存在多辆车，会分别输出每辆车的车型、车牌和坐标。
    /// >?   
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func recognizeCarPro(_ input: RecognizeCarProRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RecognizeCarProResponse > {
        self.client.execute(action: "RecognizeCarPro", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 车辆识别（增强版）
    ///
    /// 车辆识别（增强版）在车辆识别的基础上**增加了车牌识别的功能，并升级了车型识别的效果**。可对图片中车辆的车型和车牌进行同时识别，输出车辆的车牌信息，以及车辆品牌（如路虎）、车系（如神行者2）、类型（如中型SUV）、颜色和车辆在图中的坐标等信息，覆盖轿车、SUV、大型客车等市面常见车，支持三千多种车辆型号。如果图片中存在多辆车，会分别输出每辆车的车型、车牌和坐标。
    /// >?   
    /// - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func recognizeCarPro(_ input: RecognizeCarProRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeCarProResponse {
        try await self.client.execute(action: "RecognizeCarPro", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RecognizeCarPro请求参数结构体
    public struct RecognizeCarProRequest: TCRequestModel {
        /// 图片URL地址。 
        /// 图片限制： 
        /// • 图片格式：PNG、JPG、JPEG。 
        /// • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。 
        /// 建议：
        /// • 图片像素：大于50*50像素，否则影响识别效果； 
        /// • 长宽比：长边：短边<5； 
        /// 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?
        
        /// 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// **注意：图片需要base64编码，并且要去掉编码头部。**
        /// 支持的图片格式：PNG、JPG、JPEG、BMP，暂不支持GIF格式。支持的图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        public let imageBase64: String?
        
        public init (imageUrl: String?, imageBase64: String?) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
        }
        
        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
        }
    }
    
    /// RecognizeCarPro返回参数结构体
    public struct RecognizeCarProResponse: TCResponseModel {
        /// 汽车的四个矩形顶点坐标，如果图片中存在多辆车，则输出最大车辆的坐标。
        public let carCoords: [Coord]
        
        /// 车辆属性识别的结果数组，如果识别到多辆车，则会输出每辆车的top1结果。
        /// 注意：置信度是指车牌信息置信度。
        public let carTags: [CarTagItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case carCoords = "CarCoords"
            case carTags = "CarTags"
            case requestId = "RequestId"
        }
    }
}