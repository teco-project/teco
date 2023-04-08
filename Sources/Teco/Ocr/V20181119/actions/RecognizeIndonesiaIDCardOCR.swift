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

import Logging
import NIOCore
import TecoCore

extension Ocr {
    /// RecognizeIndonesiaIDCardOCR请求参数结构体
    public struct RecognizeIndonesiaIDCardOCRRequest: TCRequestModel {
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

        /// 是否返回人像照片。
        public let returnHeadImage: Bool?

        /// 场景参数，默认值为V1
        /// 可选值：
        /// V1
        /// V2
        public let scene: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, returnHeadImage: Bool? = nil, scene: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.returnHeadImage = returnHeadImage
            self.scene = scene
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case returnHeadImage = "ReturnHeadImage"
            case scene = "Scene"
        }
    }

    /// RecognizeIndonesiaIDCardOCR返回参数结构体
    public struct RecognizeIndonesiaIDCardOCRResponse: TCResponseModel {
        /// 证件号码
        public let nik: String

        /// 姓名
        public let nama: String

        /// 出生地/出生时间
        public let tempatTglLahir: String

        /// 性别
        public let jenisKelamin: String

        /// 血型
        public let golDarah: String

        /// 地址
        public let alamat: String

        /// 街道
        public let rtrw: String

        /// 村
        public let kelDesa: String

        /// 地区
        public let kecamatan: String

        /// 宗教信仰
        public let agama: String

        /// 婚姻状况
        public let statusPerkawinan: String

        /// 职业
        public let perkerjaan: String

        /// 国籍
        public let kewargaNegaraan: String

        /// 身份证有效期限
        public let berlakuHingga: String

        /// 发证日期
        public let issuedDate: String

        /// 人像截图
        public let photo: String

        /// 省份，Scene为V2时支持识别
        public let provinsi: String

        /// 城市，Scene为V2时支持识别
        public let kota: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nik = "NIK"
            case nama = "Nama"
            case tempatTglLahir = "TempatTglLahir"
            case jenisKelamin = "JenisKelamin"
            case golDarah = "GolDarah"
            case alamat = "Alamat"
            case rtrw = "RTRW"
            case kelDesa = "KelDesa"
            case kecamatan = "Kecamatan"
            case agama = "Agama"
            case statusPerkawinan = "StatusPerkawinan"
            case perkerjaan = "Perkerjaan"
            case kewargaNegaraan = "KewargaNegaraan"
            case berlakuHingga = "BerlakuHingga"
            case issuedDate = "IssuedDate"
            case photo = "Photo"
            case provinsi = "Provinsi"
            case kota = "Kota"
            case requestId = "RequestId"
        }
    }

    /// 印尼身份证识别
    ///
    /// 印尼身份证识别
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizeIndonesiaIDCardOCR(_ input: RecognizeIndonesiaIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeIndonesiaIDCardOCRResponse> {
        self.client.execute(action: "RecognizeIndonesiaIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 印尼身份证识别
    ///
    /// 印尼身份证识别
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizeIndonesiaIDCardOCR(_ input: RecognizeIndonesiaIDCardOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeIndonesiaIDCardOCRResponse {
        try await self.client.execute(action: "RecognizeIndonesiaIDCardOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 印尼身份证识别
    ///
    /// 印尼身份证识别
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizeIndonesiaIDCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, returnHeadImage: Bool? = nil, scene: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeIndonesiaIDCardOCRResponse> {
        self.recognizeIndonesiaIDCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, returnHeadImage: returnHeadImage, scene: scene), region: region, logger: logger, on: eventLoop)
    }

    /// 印尼身份证识别
    ///
    /// 印尼身份证识别
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func recognizeIndonesiaIDCardOCR(imageBase64: String? = nil, imageUrl: String? = nil, returnHeadImage: Bool? = nil, scene: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeIndonesiaIDCardOCRResponse {
        try await self.recognizeIndonesiaIDCardOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, returnHeadImage: returnHeadImage, scene: scene), region: region, logger: logger, on: eventLoop)
    }
}
