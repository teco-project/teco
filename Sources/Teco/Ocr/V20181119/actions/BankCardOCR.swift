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
    /// BankCardOCR请求参数结构体
    public struct BankCardOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?
        
        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        /// 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        public let imageUrl: String?
        
        /// 是否返回预处理（精确剪裁对齐）后的银行卡图片数据，默认false。
        public let retBorderCutImage: Bool?
        
        /// 是否返回卡号的切图图片数据，默认false。
        public let retCardNoImage: Bool?
        
        /// 复印件检测开关，如果输入的图片是银行卡复印件图片则返回告警，默认false。
        public let enableCopyCheck: Bool?
        
        /// 翻拍检测开关，如果输入的图片是银行卡翻拍图片则返回告警，默认false。
        public let enableReshootCheck: Bool?
        
        /// 边框遮挡检测开关，如果输入的图片是银行卡边框被遮挡则返回告警，默认false。
        public let enableBorderCheck: Bool?
        
        /// 是否返回图片质量分数（图片质量分数是评价一个图片的模糊程度的标准），默认false。
        public let enableQualityValue: Bool?
        
        public init (imageBase64: String? = nil, imageUrl: String? = nil, retBorderCutImage: Bool? = nil, retCardNoImage: Bool? = nil, enableCopyCheck: Bool? = nil, enableReshootCheck: Bool? = nil, enableBorderCheck: Bool? = nil, enableQualityValue: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.retBorderCutImage = retBorderCutImage
            self.retCardNoImage = retCardNoImage
            self.enableCopyCheck = enableCopyCheck
            self.enableReshootCheck = enableReshootCheck
            self.enableBorderCheck = enableBorderCheck
            self.enableQualityValue = enableQualityValue
        }
        
        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case retBorderCutImage = "RetBorderCutImage"
            case retCardNoImage = "RetCardNoImage"
            case enableCopyCheck = "EnableCopyCheck"
            case enableReshootCheck = "EnableReshootCheck"
            case enableBorderCheck = "EnableBorderCheck"
            case enableQualityValue = "EnableQualityValue"
        }
    }
    
    /// BankCardOCR返回参数结构体
    public struct BankCardOCRResponse: TCResponseModel {
        /// 卡号
        public let cardNo: String
        
        /// 银行信息
        public let bankInfo: String
        
        /// 有效期，格式如：07/2023
        public let validDate: String
        
        /// 卡类型
        public let cardType: String
        
        /// 卡名字
        public let cardName: String
        
        /// 切片图片数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let borderCutImage: String?
        
        /// 卡号图片数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cardNoImage: String?
        
        /// WarningCode 告警码列表和释义：
        /// -9110:银行卡日期无效; 
        /// -9111:银行卡边框不完整; 
        /// -9112:银行卡图片反光;
        /// -9113:银行卡复印件;
        /// -9114:银行卡翻拍件
        /// （告警码可以同时存在多个）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let warningCode: [Int64]?
        
        /// 图片质量分数，请求EnableQualityValue时返回（取值范围：0-100，分数越低越模糊，建议阈值≥50）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qualityValue: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case cardNo = "CardNo"
            case bankInfo = "BankInfo"
            case validDate = "ValidDate"
            case cardType = "CardType"
            case cardName = "CardName"
            case borderCutImage = "BorderCutImage"
            case cardNoImage = "CardNoImage"
            case warningCode = "WarningCode"
            case qualityValue = "QualityValue"
            case requestId = "RequestId"
        }
    }
    
    /// 银行卡识别
    ///
    /// 本接口支持对中国大陆主流银行卡正反面关键字段的检测与识别，包括卡号、卡类型、卡名字、银行信息、有效期。支持竖排异形卡识别、多角度旋转图片识别。支持对复印件、翻拍件、边框遮挡的银行卡进行告警，可应用于各种银行卡信息有效性校验场景，如金融行业身份认证、第三方支付绑卡等场景。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func bankCardOCR(_ input: BankCardOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BankCardOCRResponse > {
        self.client.execute(action: "BankCardOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 银行卡识别
    ///
    /// 本接口支持对中国大陆主流银行卡正反面关键字段的检测与识别，包括卡号、卡类型、卡名字、银行信息、有效期。支持竖排异形卡识别、多角度旋转图片识别。支持对复印件、翻拍件、边框遮挡的银行卡进行告警，可应用于各种银行卡信息有效性校验场景，如金融行业身份认证、第三方支付绑卡等场景。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func bankCardOCR(_ input: BankCardOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BankCardOCRResponse {
        try await self.client.execute(action: "BankCardOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
