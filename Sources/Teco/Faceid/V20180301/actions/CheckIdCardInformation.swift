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

extension Faceid {
    /// 身份证人像照片验真
    ///
    /// 传入身份证人像面照片，识别身份证照片上的信息，并将姓名、身份证号、身份证人像照片与权威库的证件照进行比对，是否属于同一个人，从而验证身份证信息的真实性。
    @inlinable
    public func checkIdCardInformation(_ input: CheckIdCardInformationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckIdCardInformationResponse > {
        self.client.execute(action: "CheckIdCardInformation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 身份证人像照片验真
    ///
    /// 传入身份证人像面照片，识别身份证照片上的信息，并将姓名、身份证号、身份证人像照片与权威库的证件照进行比对，是否属于同一个人，从而验证身份证信息的真实性。
    @inlinable
    public func checkIdCardInformation(_ input: CheckIdCardInformationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckIdCardInformationResponse {
        try await self.client.execute(action: "CheckIdCardInformation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckIdCardInformation请求参数结构体
    public struct CheckIdCardInformationRequest: TCRequestModel {
        /// 身份证人像面的 Base64 值
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。
        /// 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        /// ImageBase64、ImageUrl二者必须提供其中之一。若都提供了，则按照ImageUrl>ImageBase64的优先级使用参数。
        public let imageBase64: String?
        
        /// 身份证人像面的 Url 地址
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?
        
        /// 以下可选字段均为bool 类型，默认false：
        /// CopyWarn，复印件告警
        /// BorderCheckWarn，边框和框内遮挡告警
        /// ReshootWarn，翻拍告警
        /// DetectPsWarn，PS检测告警
        /// TempIdWarn，临时身份证告警
        /// Quality，图片质量告警（评价图片模糊程度）
        /// SDK 设置方式参考：
        /// Config = Json.stringify({"CopyWarn":true,"ReshootWarn":true})
        /// API 3.0 Explorer 设置方式参考：
        /// Config = {"CopyWarn":true,"ReshootWarn":true}
        public let config: String?
        
        /// 是否需要对返回中的敏感信息进行加密。默认false。
        /// 其中敏感信息包括：Response.IdNum、Response.Name
        public let isEncrypt: Bool?
        
        public init (imageBase64: String?, imageUrl: String?, config: String?, isEncrypt: Bool?) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.config = config
            self.isEncrypt = isEncrypt
        }
        
        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case config = "Config"
            case isEncrypt = "IsEncrypt"
        }
    }
    
    /// CheckIdCardInformation返回参数结构体
    public struct CheckIdCardInformationResponse: TCResponseModel {
        /// 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        public let sim: Float
        
        /// 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        public let result: String
        
        /// 业务结果描述。
        public let description: String
        
        /// 姓名
        public let name: String
        
        /// 性别
        public let sex: String
        
        /// 民族
        public let nation: String
        
        /// 出生日期
        public let birth: String
        
        /// 地址
        public let address: String
        
        /// 身份证号
        public let idNum: String
        
        /// 身份证头像照片的base64编码，如果抠图失败会拿整张身份证做比对并返回空。
        public let portrait: String
        
        /// 告警信息，当在Config中配置了告警信息会停止人像比对，Result返回错误（FailedOperation.OcrWarningOccurred）并有此告警信息，Code 告警码列表和释义：
        /// -9101 身份证边框不完整告警，
        /// -9102 身份证复印件告警，
        /// -9103 身份证翻拍告警，
        /// -9105 身份证框内遮挡告警，
        /// -9104 临时身份证告警，
        /// -9106 身份证 PS 告警。
        /// -8001 图片模糊告警
        /// 多个会 |  隔开如 "-9101|-9106|-9104"
        public let warnings: String
        
        /// 图片质量分数，当请求Config中配置图片模糊告警该参数才有意义，取值范围（0～100），目前默认阈值是50分，低于50分会触发模糊告警。
        public let quality: Float
        
        /// 敏感数据加密信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryption: Encryption
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sim = "Sim"
            case result = "Result"
            case description = "Description"
            case name = "Name"
            case sex = "Sex"
            case nation = "Nation"
            case birth = "Birth"
            case address = "Address"
            case idNum = "IdNum"
            case portrait = "Portrait"
            case warnings = "Warnings"
            case quality = "Quality"
            case encryption = "Encryption"
            case requestId = "RequestId"
        }
    }
}