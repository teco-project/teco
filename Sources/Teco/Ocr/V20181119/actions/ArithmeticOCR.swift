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

extension Ocr {
    /// ArithmeticOCR请求参数结构体
    public struct ArithmeticOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?
        
        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?
        
        /// 用于选择是否支持横屏拍摄。打开则支持横屏拍摄图片角度判断，角度信息在返回参数的angle中，默认值为true
        public let supportHorizontalImage: Bool?
        
        /// 是否拒绝非速算图，打开则拒绝非速算图(注：非速算图是指风景人物等明显不是速算图片的图片)，默认值为false
        public let rejectNonArithmeticPic: Bool?
        
        /// 是否展开耦合算式中的竖式计算，默认值为false
        public let enableDispRelatedVertical: Bool?
        
        /// 是否展示竖式算式的中间结果和格式控制字符，默认值为false
        public let enableDispMidResult: Bool?
        
        /// 是否开启pdf识别，默认值为true
        public let enablePdfRecognize: Bool?
        
        /// pdf页码，从0开始，默认为0
        public let pdfPageIndex: Int64?
        
        public init (imageBase64: String? = nil, imageUrl: String? = nil, supportHorizontalImage: Bool? = nil, rejectNonArithmeticPic: Bool? = nil, enableDispRelatedVertical: Bool? = nil, enableDispMidResult: Bool? = nil, enablePdfRecognize: Bool? = nil, pdfPageIndex: Int64? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.supportHorizontalImage = supportHorizontalImage
            self.rejectNonArithmeticPic = rejectNonArithmeticPic
            self.enableDispRelatedVertical = enableDispRelatedVertical
            self.enableDispMidResult = enableDispMidResult
            self.enablePdfRecognize = enablePdfRecognize
            self.pdfPageIndex = pdfPageIndex
        }
        
        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case supportHorizontalImage = "SupportHorizontalImage"
            case rejectNonArithmeticPic = "RejectNonArithmeticPic"
            case enableDispRelatedVertical = "EnableDispRelatedVertical"
            case enableDispMidResult = "EnableDispMidResult"
            case enablePdfRecognize = "EnablePdfRecognize"
            case pdfPageIndex = "PdfPageIndex"
        }
    }
    
    /// ArithmeticOCR返回参数结构体
    public struct ArithmeticOCRResponse: TCResponseModel {
        /// 检测到的文本信息，具体内容请点击左侧链接。
        public let textDetections: [TextArithmetic]
        
        /// 图片横屏的角度(90度或270度)
        public let angle: Float
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case textDetections = "TextDetections"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }
    
    /// 算式识别
    ///
    /// 本接口支持作业算式题目的自动识别和判分，目前覆盖 K12 学力范围内的 11 种题型，包括加减乘除四则、加减乘除已知结果求运算因子、判断大小、约等于估算、带余数除法、分数四则运算、单位换算、竖式加减法、竖式乘除法、脱式计算和解方程，平均识别精度达到93%以上。
    @inlinable
    public func arithmeticOCR(_ input: ArithmeticOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ArithmeticOCRResponse > {
        self.client.execute(action: "ArithmeticOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 算式识别
    ///
    /// 本接口支持作业算式题目的自动识别和判分，目前覆盖 K12 学力范围内的 11 种题型，包括加减乘除四则、加减乘除已知结果求运算因子、判断大小、约等于估算、带余数除法、分数四则运算、单位换算、竖式加减法、竖式乘除法、脱式计算和解方程，平均识别精度达到93%以上。
    @inlinable
    public func arithmeticOCR(_ input: ArithmeticOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ArithmeticOCRResponse {
        try await self.client.execute(action: "ArithmeticOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
