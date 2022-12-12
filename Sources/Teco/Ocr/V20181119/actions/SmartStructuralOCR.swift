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
    /// SmartStructuralOCR请求参数结构体
    public struct SmartStructuralOCRRequest: TCRequestModel {
        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?
        
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?
        
        /// 自定义结构化功能需返回的字段名称，例：
        /// 若客户只想返回姓名、性别两个字段的识别结果，则输入
        /// ItemNames=["姓名","性别"]
        public let itemNames: [String]?
        
        /// 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?
        
        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: UInt64?
        
        /// 是否开启全文字段识别，默认值为false，开启后可返回全文字段识别结果。
        public let returnFullText: Bool?
        
        public init (imageUrl: String? = nil, imageBase64: String? = nil, itemNames: [String]? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, returnFullText: Bool? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
            self.itemNames = itemNames
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
            self.returnFullText = returnFullText
        }
        
        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
            case itemNames = "ItemNames"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
            case returnFullText = "ReturnFullText"
        }
    }
    
    /// SmartStructuralOCR返回参数结构体
    public struct SmartStructuralOCRResponse: TCResponseModel {
        /// 图片旋转角度(角度制)，文本的水平方向
        /// 为 0；顺时针为正，逆时针为负
        public let angle: Float
        
        /// 识别信息
        public let structuralItems: [StructuralItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case angle = "Angle"
            case structuralItems = "StructuralItems"
            case requestId = "RequestId"
        }
    }
    
    /// 智能结构化识别
    ///
    /// 本接口支持识别并提取各类证照、票据、表单、合同等结构化场景的字段信息。无需任何配置，灵活高效。适用于各类结构化信息录入场景。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func smartStructuralOCR(_ input: SmartStructuralOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SmartStructuralOCRResponse > {
        self.client.execute(action: "SmartStructuralOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 智能结构化识别
    ///
    /// 本接口支持识别并提取各类证照、票据、表单、合同等结构化场景的字段信息。无需任何配置，灵活高效。适用于各类结构化信息录入场景。
    /// 默认接口请求频率限制：5次/秒。
    @inlinable
    public func smartStructuralOCR(_ input: SmartStructuralOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SmartStructuralOCRResponse {
        try await self.client.execute(action: "SmartStructuralOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
