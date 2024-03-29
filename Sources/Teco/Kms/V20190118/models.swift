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

import TecoCore

extension Kms {
    /// 算法的名称 和 标识
    public struct AlgorithmInfo: TCOutputModel {
        /// 算法的标识
        public let keyUsage: String

        /// 算法的名称
        public let algorithm: String

        enum CodingKeys: String, CodingKey {
            case keyUsage = "KeyUsage"
            case algorithm = "Algorithm"
        }
    }

    /// 设备指纹
    public struct DeviceFingerprint: TCInputModel, TCOutputModel {
        /// 指纹信息，由设备指纹采集工具采集获得，格式满足正则表达式：^[0-9a-f]{8}[\-][0-9a-f]{14}[\-][0-9a-f]{14}[\-][0-9a-f]{14}[\-][0-9a-f]{16}$
        public let identity: String

        /// 描述信息，如：IP，设备名称等，最大1024字节
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        public init(identity: String, description: String? = nil) {
            self.identity = identity
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case identity = "Identity"
            case description = "Description"
        }
    }

    /// 返回CMK列表信息
    public struct Key: TCOutputModel {
        /// CMK的全局唯一标识。
        public let keyId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// CMK属性信息
    public struct KeyMetadata: TCOutputModel {
        /// CMK的全局唯一标识
        public let keyId: String

        /// 作为密钥更容易辨识，更容易被人看懂的别名
        public let alias: String

        /// 密钥创建时间
        public let createTime: UInt64

        /// CMK的描述
        public let description: String

        /// CMK的状态， 取值为：Enabled | Disabled | PendingDelete | PendingImport | Archived
        public let keyState: String

        /// CMK用途，取值为: ENCRYPT_DECRYPT | ASYMMETRIC_DECRYPT_RSA_2048 | ASYMMETRIC_DECRYPT_SM2 | ASYMMETRIC_SIGN_VERIFY_SM2 | ASYMMETRIC_SIGN_VERIFY_RSA_2048 | ASYMMETRIC_SIGN_VERIFY_ECC
        public let keyUsage: String

        /// CMK类型，2 表示符合FIPS标准，4表示符合国密标准
        public let type: Int64

        /// 创建者
        public let creatorUin: UInt64

        /// 是否开启了密钥轮换功能
        public let keyRotationEnabled: Bool

        /// CMK的创建者，用户创建的为 user，授权各云产品自动创建的为对应的产品名
        public let owner: String

        /// 在密钥轮换开启状态下，下次轮换的时间
        public let nextRotateTime: UInt64

        /// 计划删除的时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deletionDate: UInt64?

        /// CMK 密钥材料类型，由KMS创建的为： TENCENT_KMS， 由用户导入的类型为：EXTERNAL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let origin: String?

        /// 在Origin为  EXTERNAL 时有效，表示密钥材料的有效日期， 0 表示不过期
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let validTo: UInt64?

        /// 资源ID，格式：creatorUin/$creatorUin/$keyId
        public let resourceId: String

        /// HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hsmClusterId: String?

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case alias = "Alias"
            case createTime = "CreateTime"
            case description = "Description"
            case keyState = "KeyState"
            case keyUsage = "KeyUsage"
            case type = "Type"
            case creatorUin = "CreatorUin"
            case keyRotationEnabled = "KeyRotationEnabled"
            case owner = "Owner"
            case nextRotateTime = "NextRotateTime"
            case deletionDate = "DeletionDate"
            case origin = "Origin"
            case validTo = "ValidTo"
            case resourceId = "ResourceId"
            case hsmClusterId = "HsmClusterId"
        }
    }

    /// 标签键和标签值
    public struct Tag: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 标签过滤器
    public struct TagFilter: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: [String]?

        public init(tagKey: String, tagValue: [String]? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 白盒密钥信息
    public struct WhiteboxKeyInfo: TCOutputModel {
        /// 白盒密钥的全局唯一标识符
        public let keyId: String

        /// 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字. 不可重复
        public let alias: String

        /// 创建者
        public let creatorUin: UInt64

        /// 密钥的描述信息
        public let description: String

        /// 密钥创建时间，Unix时间戳
        public let createTime: UInt64

        /// 白盒密钥的状态， 取值为：Enabled | Disabled
        public let status: String

        /// 创建者
        public let ownerUin: UInt64

        /// 密钥所用的算法类型
        public let algorithm: String

        /// 白盒加密密钥，base64编码
        public let encryptKey: String

        /// 白盒解密密钥，base64编码
        public let decryptKey: String

        /// 资源ID，格式：creatorUin/$creatorUin/$keyId
        public let resourceId: String

        /// 是否有设备指纹与当前密钥绑定
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceFingerprintBind: Bool?

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case alias = "Alias"
            case creatorUin = "CreatorUin"
            case description = "Description"
            case createTime = "CreateTime"
            case status = "Status"
            case ownerUin = "OwnerUin"
            case algorithm = "Algorithm"
            case encryptKey = "EncryptKey"
            case decryptKey = "DecryptKey"
            case resourceId = "ResourceId"
            case deviceFingerprintBind = "DeviceFingerprintBind"
        }
    }
}
