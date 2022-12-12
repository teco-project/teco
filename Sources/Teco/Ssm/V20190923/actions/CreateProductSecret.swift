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

extension Ssm {
    /// CreateProductSecret请求参数结构体
    public struct CreateProductSecretRequest: TCRequestModel {
        /// 凭据名称，同一region内不可重复，最长128字节，使用字母、数字或者 - _ 的组合，第一个字符必须为字母或者数字。
        public let secretName: String
        
        /// 用户账号名前缀，由用户自行指定，长度限定在8个字符以内，
        /// 可选字符集包括：
        /// 数字字符：[0, 9]，
        /// 小写字符：[a, z]，
        /// 大写字符：[A, Z]，
        /// 特殊字符(全英文符号)：下划线(_)，
        /// 前缀必须以大写或小写字母开头。
        public let userNamePrefix: String
        
        /// 凭据所绑定的云产品名称，如Mysql，可以通过DescribeSupportedProducts接口获取所支持的云产品名称。
        public let productName: String
        
        /// 云产品实例ID。
        public let instanceID: String
        
        /// 账号的域名，IP形式，支持填入%。
        public let domains: [String]
        
        /// 将凭据与云产品实例绑定时，需要授予的权限列表。
        public let privilegesList: [ProductPrivilegeUnit]
        
        /// 描述信息，用于详细描述用途等，最大支持2048字节。
        public let description: String?
        
        /// 指定对凭据进行加密的KMS CMK。
        /// 如果为空则表示使用Secrets Manager为您默认创建的CMK进行加密。
        /// 您也可以指定在同region 下自行创建的KMS CMK进行加密。
        public let kmsKeyId: String?
        
        /// 标签列表。
        public let tags: [Tag]?
        
        /// 用户自定义的开始轮转时间，格式：2006-01-02 15:04:05。
        /// 当EnableRotation为True时，此参数必填。
        public let rotationBeginTime: String?
        
        /// 是否开启轮转
        /// True -- 开启
        /// False -- 不开启
        /// 如果不指定，默认为False。
        public let enableRotation: Bool?
        
        /// 轮转周期，以天为单位，默认为1天。
        public let rotationFrequency: Int64?
        
        public init (secretName: String, userNamePrefix: String, productName: String, instanceID: String, domains: [String], privilegesList: [ProductPrivilegeUnit], description: String? = nil, kmsKeyId: String? = nil, tags: [Tag]? = nil, rotationBeginTime: String? = nil, enableRotation: Bool? = nil, rotationFrequency: Int64? = nil) {
            self.secretName = secretName
            self.userNamePrefix = userNamePrefix
            self.productName = productName
            self.instanceID = instanceID
            self.domains = domains
            self.privilegesList = privilegesList
            self.description = description
            self.kmsKeyId = kmsKeyId
            self.tags = tags
            self.rotationBeginTime = rotationBeginTime
            self.enableRotation = enableRotation
            self.rotationFrequency = rotationFrequency
        }
        
        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case userNamePrefix = "UserNamePrefix"
            case productName = "ProductName"
            case instanceID = "InstanceID"
            case domains = "Domains"
            case privilegesList = "PrivilegesList"
            case description = "Description"
            case kmsKeyId = "KmsKeyId"
            case tags = "Tags"
            case rotationBeginTime = "RotationBeginTime"
            case enableRotation = "EnableRotation"
            case rotationFrequency = "RotationFrequency"
        }
    }
    
    /// CreateProductSecret返回参数结构体
    public struct CreateProductSecretResponse: TCResponseModel {
        /// 创建的凭据名称。
        public let secretName: String
        
        /// 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagCode: UInt64?
        
        /// 标签操作的返回信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagMsg: String
        
        /// 创建云产品凭据异步任务ID号。
        public let flowID: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case tagCode = "TagCode"
            case tagMsg = "TagMsg"
            case flowID = "FlowID"
            case requestId = "RequestId"
        }
    }
    
    /// 创建云产品凭据
    @inlinable
    public func createProductSecret(_ input: CreateProductSecretRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateProductSecretResponse > {
        self.client.execute(action: "CreateProductSecret", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建云产品凭据
    @inlinable
    public func createProductSecret(_ input: CreateProductSecretRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProductSecretResponse {
        try await self.client.execute(action: "CreateProductSecret", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
