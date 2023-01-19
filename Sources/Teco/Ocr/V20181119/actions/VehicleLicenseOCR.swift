//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ocr {
    /// VehicleLicenseOCR请求参数结构体
    public struct VehicleLicenseOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。图片下载时间不超过 3 秒。
        /// 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        public let imageUrl: String?

        /// FRONT 为行驶证主页正面（有红色印章的一面），
        /// BACK 为行驶证副页正面（有号码号牌的一面），
        /// DOUBLE 为行驶证主页正面和副页正面。
        /// 默认值为：FRONT。
        public let cardSide: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.cardSide = cardSide
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case cardSide = "CardSide"
        }
    }

    /// VehicleLicenseOCR返回参数结构体
    public struct VehicleLicenseOCRResponse: TCResponseModel {
        /// 行驶证主页正面的识别结果，CardSide 为 FRONT。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let frontInfo: TextVehicleFront?

        /// 行驶证副页正面的识别结果，CardSide 为 BACK。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backInfo: TextVehicleBack?

        /// Code 告警码列表和释义：
        /// -9102 复印件告警
        /// -9103 翻拍件告警
        /// -9106 ps告警
        /// 注：告警码可以同时存在多个
        public let recognizeWarnCode: [Int64]

        /// 告警码说明：
        /// WARN_DRIVER_LICENSE_COPY_CARD 复印件告警
        /// WARN_DRIVER_LICENSE_SCREENED_CARD 翻拍件告警
        /// WARN_DRIVER_LICENSE_PS_CARD ps告警
        /// 注：告警信息可以同时存在多个
        public let recognizeWarnMsg: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case frontInfo = "FrontInfo"
            case backInfo = "BackInfo"
            case recognizeWarnCode = "RecognizeWarnCode"
            case recognizeWarnMsg = "RecognizeWarnMsg"
            case requestId = "RequestId"
        }
    }

    /// 行驶证识别
    ///
    /// 本接口支持行驶证主页和副页所有字段的自动定位与识别。
    /// 行驶证主页：车牌号码、车辆类型、所有人、住址、使用性质、品牌型号、识别代码、发动机号、注册日期、发证日期、发证单位。
    /// 行驶证副页：号牌号码、档案编号、核定载人数、总质量、整备质量、核定载质量、外廓尺寸、准牵引总质量、备注、检验记录。
    /// 另外，本接口还支持复印件、翻拍和PS告警功能。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vehicleLicenseOCR(_ input: VehicleLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VehicleLicenseOCRResponse> {
        self.client.execute(action: "VehicleLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 行驶证识别
    ///
    /// 本接口支持行驶证主页和副页所有字段的自动定位与识别。
    /// 行驶证主页：车牌号码、车辆类型、所有人、住址、使用性质、品牌型号、识别代码、发动机号、注册日期、发证日期、发证单位。
    /// 行驶证副页：号牌号码、档案编号、核定载人数、总质量、整备质量、核定载质量、外廓尺寸、准牵引总质量、备注、检验记录。
    /// 另外，本接口还支持复印件、翻拍和PS告警功能。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vehicleLicenseOCR(_ input: VehicleLicenseOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VehicleLicenseOCRResponse {
        try await self.client.execute(action: "VehicleLicenseOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 行驶证识别
    ///
    /// 本接口支持行驶证主页和副页所有字段的自动定位与识别。
    /// 行驶证主页：车牌号码、车辆类型、所有人、住址、使用性质、品牌型号、识别代码、发动机号、注册日期、发证日期、发证单位。
    /// 行驶证副页：号牌号码、档案编号、核定载人数、总质量、整备质量、核定载质量、外廓尺寸、准牵引总质量、备注、检验记录。
    /// 另外，本接口还支持复印件、翻拍和PS告警功能。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vehicleLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VehicleLicenseOCRResponse> {
        self.vehicleLicenseOCR(VehicleLicenseOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, cardSide: cardSide), region: region, logger: logger, on: eventLoop)
    }

    /// 行驶证识别
    ///
    /// 本接口支持行驶证主页和副页所有字段的自动定位与识别。
    /// 行驶证主页：车牌号码、车辆类型、所有人、住址、使用性质、品牌型号、识别代码、发动机号、注册日期、发证日期、发证单位。
    /// 行驶证副页：号牌号码、档案编号、核定载人数、总质量、整备质量、核定载质量、外廓尺寸、准牵引总质量、备注、检验记录。
    /// 另外，本接口还支持复印件、翻拍和PS告警功能。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func vehicleLicenseOCR(imageBase64: String? = nil, imageUrl: String? = nil, cardSide: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VehicleLicenseOCRResponse {
        try await self.vehicleLicenseOCR(VehicleLicenseOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, cardSide: cardSide), region: region, logger: logger, on: eventLoop)
    }
}
