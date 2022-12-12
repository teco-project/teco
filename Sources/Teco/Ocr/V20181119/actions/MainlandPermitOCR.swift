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
    /// MainlandPermitOCR请求参数结构体
    public struct MainlandPermitOCRRequest: TCRequestModel {
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
        
        /// 是否返回头像。默认不返回。
        public let retProfile: Bool?
        
        public init (imageBase64: String? = nil, imageUrl: String? = nil, retProfile: Bool? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.retProfile = retProfile
        }
        
        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case retProfile = "RetProfile"
        }
    }
    
    /// MainlandPermitOCR返回参数结构体
    public struct MainlandPermitOCRResponse: TCResponseModel {
        /// 中文姓名
        public let name: String
        
        /// 英文姓名
        public let englishName: String
        
        /// 性别
        public let sex: String
        
        /// 出生日期
        public let birthday: String
        
        /// 签发机关
        public let issueAuthority: String
        
        /// 有效期限
        public let validDate: String
        
        /// 证件号
        public let number: String
        
        /// 签发地点
        public let issueAddress: String
        
        /// 签发次数
        public let issueNumber: String
        
        /// 证件类别， 如：台湾居民来往大陆通行证、港澳居民来往内地通行证。
        public let type: String
        
        /// RetProfile为True时返回头像字段， Base64编码
        public let profile: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case englishName = "EnglishName"
            case sex = "Sex"
            case birthday = "Birthday"
            case issueAuthority = "IssueAuthority"
            case validDate = "ValidDate"
            case number = "Number"
            case issueAddress = "IssueAddress"
            case issueNumber = "IssueNumber"
            case type = "Type"
            case profile = "Profile"
            case requestId = "RequestId"
        }
    }
    
    /// 港澳台来往内地通行证识别
    ///
    /// 智能识别并结构化港澳台居民来往内地通行证正面全部字段，包含中文姓名、英文姓名、性别、出生日期、签发机关、有效期限、证件号、签发地点、签发次数、证件类别。
    @inlinable
    public func mainlandPermitOCR(_ input: MainlandPermitOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < MainlandPermitOCRResponse > {
        self.client.execute(action: "MainlandPermitOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 港澳台来往内地通行证识别
    ///
    /// 智能识别并结构化港澳台居民来往内地通行证正面全部字段，包含中文姓名、英文姓名、性别、出生日期、签发机关、有效期限、证件号、签发地点、签发次数、证件类别。
    @inlinable
    public func mainlandPermitOCR(_ input: MainlandPermitOCRRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MainlandPermitOCRResponse {
        try await self.client.execute(action: "MainlandPermitOCR", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
