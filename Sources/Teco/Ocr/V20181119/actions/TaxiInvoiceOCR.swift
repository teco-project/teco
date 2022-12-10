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
    /// 出租车发票识别
    ///
    /// 本接口支持出租车发票关键字段的识别，包括发票号码、发票代码、金额、日期、上下车时间、里程、车牌号、发票类型及所属地区等字段。
    @inlinable
    public func taxiInvoiceOCR(_ input: TaxiInvoiceOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TaxiInvoiceOCRResponse > {
        self.client.execute(action: "TaxiInvoiceOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 出租车发票识别
    ///
    /// 本接口支持出租车发票关键字段的识别，包括发票号码、发票代码、金额、日期、上下车时间、里程、车牌号、发票类型及所属地区等字段。
    @inlinable
    public func taxiInvoiceOCR(_ input: TaxiInvoiceOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TaxiInvoiceOCRResponse {
        try await self.client.execute(action: "TaxiInvoiceOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TaxiInvoiceOCR请求参数结构体
    public struct TaxiInvoiceOCRRequest: TCRequestModel {
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
        
        /// 是否开启PDF识别，默认值为true，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?
        
        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: Int64?
        
        public init (imageBase64: String?, imageUrl: String?, isPdf: Bool?, pdfPageNumber: Int64?) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
        }
        
        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
        }
    }
    
    /// TaxiInvoiceOCR返回参数结构体
    public struct TaxiInvoiceOCRResponse: TCResponseModel {
        /// 发票代码
        public let invoiceNum: String
        
        /// 发票号码
        public let invoiceCode: String
        
        /// 日期
        public let date: String
        
        /// 金额
        public let fare: String
        
        /// 上车时间
        public let getOnTime: String
        
        /// 下车时间
        public let getOffTime: String
        
        /// 里程
        public let distance: String
        
        /// 发票所在地
        public let location: String
        
        /// 车牌号
        public let plateNumber: String
        
        /// 发票消费类型
        public let invoiceType: String
        
        /// 省
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let province: String?
        
        /// 市
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let city: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case invoiceNum = "InvoiceNum"
            case invoiceCode = "InvoiceCode"
            case date = "Date"
            case fare = "Fare"
            case getOnTime = "GetOnTime"
            case getOffTime = "GetOffTime"
            case distance = "Distance"
            case location = "Location"
            case plateNumber = "PlateNumber"
            case invoiceType = "InvoiceType"
            case province = "Province"
            case city = "City"
            case requestId = "RequestId"
        }
    }
}
