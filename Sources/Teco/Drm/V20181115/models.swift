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

extension Drm {
    /// DRM加密后的输出对象
    public struct DrmOutputObject: TCInputModel {
        /// 输出的桶名称。
        public let bucketName: String?
        
        /// 输出的对象名称。
        public let objectName: String?
        
        /// 输出对象参数。
        public let para: DrmOutputPara
        
        public init (bucketName: String?, objectName: String?, para: DrmOutputPara) {
            self.bucketName = bucketName
            self.objectName = objectName
            self.para = para
        }
        
        enum CodingKeys: String, CodingKey {
            case bucketName = "BucketName"
            case objectName = "ObjectName"
            case para = "Para"
        }
    }
    
    /// Drm加密对象输出参数
    public struct DrmOutputPara: TCInputModel {
        /// 内容类型。例:video，audio，mpd，m3u8
        public let type: String?
        
        /// 语言,例: en, zh-cn
        public let language: String?
        
        public init (type: String?, language: String?) {
            self.type = type
            self.language = language
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case language = "Language"
        }
    }
    
    /// 用于DRM加密的源对象
    public struct DrmSourceObject: TCInputModel {
        /// 输入的桶名称。
        public let bucketName: String?
        
        /// 输入对象名称。
        public let objectName: String?
        
        public init (bucketName: String?, objectName: String?) {
            self.bucketName = bucketName
            self.objectName = objectName
        }
        
        enum CodingKeys: String, CodingKey {
            case bucketName = "BucketName"
            case objectName = "ObjectName"
        }
    }
    
    /// FairPlay 私钥摘要信息。
    public struct FairPlayPemDigestInfo: TCOutputModel {
        /// fairplay 私钥pem id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fairPlayPemId: UInt64?
        
        /// 私钥的优先级。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let priority: UInt64?
        
        /// 私钥的md5 信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5Pem: String?
        
        /// ASK的md5信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5Ask: String?
        
        /// 私钥解密密钥的md5值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5PemDecryptKey: String?
        
        enum CodingKeys: String, CodingKey {
            case fairPlayPemId = "FairPlayPemId"
            case priority = "Priority"
            case md5Pem = "Md5Pem"
            case md5Ask = "Md5Ask"
            case md5PemDecryptKey = "Md5PemDecryptKey"
        }
    }
    
    /// DRM加密密钥
    public struct Key: TCOutputModel {
        /// 加密track类型。Widevine支持SD、HD、UHD1、UHD2、AUDIO。Fairplay只支持HD。
        public let track: String
        
        /// 密钥ID。
        public let keyId: String
        
        /// 原始Key使用AES-128 ECB模式和SessionKey加密的后的二进制数据，Base64编码的字符串。
        public let key: String
        
        /// 原始IV使用AES-128 ECB模式和SessionKey加密的后的二进制数据，Base64编码的字符串。
        public let iv: String
        
        /// 该key生成时的时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTimestamp: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case track = "Track"
            case keyId = "KeyId"
            case key = "Key"
            case iv = "Iv"
            case insertTimestamp = "InsertTimestamp"
        }
    }
    
    /// 设置加密密钥所需的参数
    public struct KeyParam: TCInputModel {
        /// 加密track类型。取值范围：
        /// SD、HD、UHD1、UHD2、AUDIO
        public let track: String
        
        /// 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        public let key: String
        
        /// 密钥ID。
        public let keyId: String?
        
        /// 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        public let iv: String?
        
        public init (track: String, key: String, keyId: String?, iv: String?) {
            self.track = track
            self.key = key
            self.keyId = keyId
            self.iv = iv
        }
        
        enum CodingKeys: String, CodingKey {
            case track = "Track"
            case key = "Key"
            case keyId = "KeyId"
            case iv = "Iv"
        }
    }
    
    /// 播放控制参数
    public struct PlaybackPolicy: TCInputModel {
        /// 播放许可证的有效期
        public let licenseDurationSeconds: UInt64?
        
        /// 开始播放后，允许最长播放时间
        public let playbackDurationSeconds: UInt64?
        
        public init (licenseDurationSeconds: UInt64?, playbackDurationSeconds: UInt64?) {
            self.licenseDurationSeconds = licenseDurationSeconds
            self.playbackDurationSeconds = playbackDurationSeconds
        }
        
        enum CodingKeys: String, CodingKey {
            case licenseDurationSeconds = "LicenseDurationSeconds"
            case playbackDurationSeconds = "PlaybackDurationSeconds"
        }
    }
}