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

extension Ocr {
    /// 银行回单识别
    ///
    /// 本接口支持银行回单全字段的识别，包括付款开户行、收款开户行、付款账号、收款账号、回单类型、回单编号、币种、流水号、凭证号码、交易机构、交易金额、手续费、日期等字段信息。
    ///            
    @inlinable
    public func bankSlipOCR(_ input: BankSlipOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BankSlipOCRResponse > {
        self.client.execute(action: "BankSlipOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 银行回单识别
    ///
    /// 本接口支持银行回单全字段的识别，包括付款开户行、收款开户行、付款账号、收款账号、回单类型、回单编号、币种、流水号、凭证号码、交易机构、交易金额、手续费、日期等字段信息。
    ///            
    @inlinable
    public func bankSlipOCR(_ input: BankSlipOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BankSlipOCRResponse {
        try await self.client.execute(action: "BankSlipOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BankSlipOCR请求参数结构体
    public struct BankSlipOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?
        
        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。
        /// 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
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
    
    /// BankSlipOCR返回参数结构体
    public struct BankSlipOCRResponse: TCResponseModel {
        /// 银行回单识别结果，具体内容请点击左侧链接。
        public let bankSlipInfos: [BankSlipInfo]
        
        /// 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        public let angle: Float
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case bankSlipInfos = "BankSlipInfos"
            case angle = "Angle"
            case requestId = "RequestId"
        }
    }
}