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

extension Drm {
    /// DescribeKeys请求参数结构体
    public struct DescribeKeysRequest: TCRequestModel {
        /// 使用的DRM方案类型，接口取值WIDEVINE、FAIRPLAY、NORMALAES。
        public let drmType: String
        
        /// 加密的track列表，接口取值VIDEO、AUDIO。
        public let tracks: [String]
        
        /// 内容类型。接口取值VodVideo,LiveVideo
        public let contentType: String
        
        /// Base64编码的Rsa公钥，用来加密出参中的SessionKey。
        /// 如果该参数为空，则出参中SessionKey为明文。
        public let rsaPublicKey: String?
        
        /// 一个加密内容的唯一标识。
        /// 如果该参数为空，则后台自动生成
        public let contentId: String?
        
        public init (drmType: String, tracks: [String], contentType: String, rsaPublicKey: String? = nil, contentId: String? = nil) {
            self.drmType = drmType
            self.tracks = tracks
            self.contentType = contentType
            self.rsaPublicKey = rsaPublicKey
            self.contentId = contentId
        }
        
        enum CodingKeys: String, CodingKey {
            case drmType = "DrmType"
            case tracks = "Tracks"
            case contentType = "ContentType"
            case rsaPublicKey = "RsaPublicKey"
            case contentId = "ContentId"
        }
    }
    
    /// DescribeKeys返回参数结构体
    public struct DescribeKeysResponse: TCResponseModel {
        /// 加密密钥列表
        public let keys: [Key]
        
        /// 用来加密密钥。
        /// 如果入参中带有RsaPublicKey，则SessionKey为使用Rsa公钥加密后的二进制数据，Base64编码字符串。
        /// 如果入参中没有RsaPublicKey，则SessionKey为原始数据的字符串形式。
        public let sessionKey: String
        
        /// 内容ID
        public let contentId: String
        
        /// Widevine方案的Pssh数据，Base64编码。
        /// Fairplay方案无该值。
        public let pssh: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case keys = "Keys"
            case sessionKey = "SessionKey"
            case contentId = "ContentId"
            case pssh = "Pssh"
            case requestId = "RequestId"
        }
    }
    
    /// 查询加密密钥列表
    ///
    /// 开发者需要指定使用的DRM类型、和需要加密的Track类型，后台返回加密使用的密钥
    /// 如果加密使用的ContentID没有关联的密钥信息，后台会自动生成新的密钥返回
    @inlinable
    public func describeKeys(_ input: DescribeKeysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeKeysResponse > {
        self.client.execute(action: "DescribeKeys", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询加密密钥列表
    ///
    /// 开发者需要指定使用的DRM类型、和需要加密的Track类型，后台返回加密使用的密钥
    /// 如果加密使用的ContentID没有关联的密钥信息，后台会自动生成新的密钥返回
    @inlinable
    public func describeKeys(_ input: DescribeKeysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKeysResponse {
        try await self.client.execute(action: "DescribeKeys", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
