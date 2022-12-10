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

extension Kms {
    /// 创建主密钥
    ///
    /// 创建用户管理数据密钥的主密钥CMK（Custom Master Key）。
    @inlinable
    public func createKey(_ input: CreateKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateKeyResponse > {
        self.client.execute(action: "CreateKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建主密钥
    ///
    /// 创建用户管理数据密钥的主密钥CMK（Custom Master Key）。
    @inlinable
    public func createKey(_ input: CreateKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKeyResponse {
        try await self.client.execute(action: "CreateKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateKey请求参数结构体
    public struct CreateKeyRequest: TCRequestModel {
        /// 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字。以 kms- 作为前缀的用于云产品使用，Alias 不可重复。
        public let alias: String
        
        /// CMK 的描述，最大1024字节
        public let description: String?
        
        /// 指定key的用途，默认为  "ENCRYPT_DECRYPT" 表示创建对称加解密密钥，其它支持用途 “ASYMMETRIC_DECRYPT_RSA_2048” 表示创建用于加解密的RSA2048非对称密钥，“ASYMMETRIC_DECRYPT_SM2” 表示创建用于加解密的SM2非对称密钥，“ASYMMETRIC_SIGN_VERIFY_SM2” 表示创建用于签名验签的SM2非对称密钥，“ASYMMETRIC_SIGN_VERIFY_ECC” 表示创建用于签名验签的ECC非对称密钥，“ASYMMETRIC_SIGN_VERIFY_RSA_2048” 表示创建用于签名验签的RSA_2048非对称密钥，“ASYMMETRIC_SIGN_VERIFY_ECDSA384”表示创建用于签名验签的 ECDSA384 非对称秘钥。完整的秘钥用途与算法支持列表可通过 ListAlgorithms 接口获取。
        public let keyUsage: String?
        
        /// 指定key类型，默认为1，1表示默认类型，由KMS创建CMK密钥，2 表示EXTERNAL 类型，该类型需要用户导入密钥材料，参考 GetParametersForImport 和 ImportKeyMaterial 接口
        public let type: UInt64?
        
        /// 标签列表
        public let tags: [Tag]?
        
        /// KMS 高级版对应的 HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）。
        public let hsmClusterId: String?
        
        public init (alias: String, description: String?, keyUsage: String?, type: UInt64?, tags: [Tag]?, hsmClusterId: String?) {
            self.alias = alias
            self.description = description
            self.keyUsage = keyUsage
            self.type = type
            self.tags = tags
            self.hsmClusterId = hsmClusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case alias = "Alias"
            case description = "Description"
            case keyUsage = "KeyUsage"
            case type = "Type"
            case tags = "Tags"
            case hsmClusterId = "HsmClusterId"
        }
    }
    
    /// CreateKey返回参数结构体
    public struct CreateKeyResponse: TCResponseModel {
        /// CMK的全局唯一标识符
        public let keyId: String
        
        /// 作为密钥更容易辨识，更容易被人看懂的别名
        public let alias: String
        
        /// 密钥创建时间，unix时间戳
        public let createTime: UInt64
        
        /// CMK的描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// CMK的状态
        public let keyState: String
        
        /// CMK的用途
        public let keyUsage: String
        
        /// 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagCode: UInt64?
        
        /// 标签操作的返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagMsg: String?
        
        /// HSM 集群 ID（仅对 KMS 独占版/托管版服务实例有效）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hsmClusterId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case alias = "Alias"
            case createTime = "CreateTime"
            case description = "Description"
            case keyState = "KeyState"
            case keyUsage = "KeyUsage"
            case tagCode = "TagCode"
            case tagMsg = "TagMsg"
            case hsmClusterId = "HsmClusterId"
            case requestId = "RequestId"
        }
    }
}
