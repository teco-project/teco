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

extension Cloudaudit {
    /// CreateAudit请求参数结构体
    public struct CreateAuditRequest: TCRequestModel {
        /// 是否开启cmq消息通知。1：是，0：否。目前仅支持cmq的队列服务。如果开启cmq消息通知服务，云审计会将您的日志内容实时投递到您指定地域的指定队列中。
        public let isEnableCmqNotify: Int64

        /// 管理事件的读写属性。1：只读，2：只写，3：全部。
        public let readWriteAttribute: Int64

        /// 跟踪集名称。3-128字符，只能包含 ASCII 编码字母 a-z，A-Z，数字 0-9，下划线 _。
        public let auditName: String

        /// cos地域。目前支持的地域可以使用ListCosEnableRegion来获取。
        public let cosRegion: String

        /// 是否创建新的cos存储桶。1：是，0：否。
        public let isCreateNewBucket: Int64

        /// cos的存储桶名称。仅支持小写英文字母和数字即[a-z，0-9]、中划线“-”及其组合。用户自定义的字符串支持1 - 40个字符。存储桶命名不能以“-”开头或结尾。如果不是新创建的存储桶，云审计不会去校验该存储桶是否真的存在，请谨慎填写，避免日志投递不成功，导致您的数据丢失。
        public let cosBucketName: String

        /// CMK的全局唯一标识符，如果不是新创建的kms，该值是必填值。可以通过ListKeyAliasByRegion来获取。云审计不会校验KeyId的合法性，请您谨慎填写，避免给您的数据造成损失。
        public let keyId: String?

        /// 队列名称。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。如果IsEnableCmqNotify值是1的话，此值属于必填字段。如果不是新创建的队列，云审计不会去校验该队列是否真的存在，请谨慎填写，避免日志通知不成功，导致您的数据丢失。
        public let cmqQueueName: String?

        /// kms地域。目前支持的地域可以使用ListKmsEnableRegion来获取。必须要和cos的地域保持一致。
        public let kmsRegion: String?

        /// 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        public let isEnableKmsEncry: Int64?

        /// 队列所在的地域。可以通过ListCmqEnableRegion获取支持的cmq地域。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        public let cmqRegion: String?

        /// 日志文件前缀。3-40个字符，只能包含 ASCII 编码字母 a-z，A-Z，数字 0-9。可以不填，默认以账号ID作为日志前缀。
        public let logFilePrefix: String?

        /// 是否创建新的队列。1：是，0：否。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        public let isCreateNewQueue: Int64?

        public init(isEnableCmqNotify: Int64, readWriteAttribute: Int64, auditName: String, cosRegion: String, isCreateNewBucket: Int64, cosBucketName: String, keyId: String? = nil, cmqQueueName: String? = nil, kmsRegion: String? = nil, isEnableKmsEncry: Int64? = nil, cmqRegion: String? = nil, logFilePrefix: String? = nil, isCreateNewQueue: Int64? = nil) {
            self.isEnableCmqNotify = isEnableCmqNotify
            self.readWriteAttribute = readWriteAttribute
            self.auditName = auditName
            self.cosRegion = cosRegion
            self.isCreateNewBucket = isCreateNewBucket
            self.cosBucketName = cosBucketName
            self.keyId = keyId
            self.cmqQueueName = cmqQueueName
            self.kmsRegion = kmsRegion
            self.isEnableKmsEncry = isEnableKmsEncry
            self.cmqRegion = cmqRegion
            self.logFilePrefix = logFilePrefix
            self.isCreateNewQueue = isCreateNewQueue
        }

        enum CodingKeys: String, CodingKey {
            case isEnableCmqNotify = "IsEnableCmqNotify"
            case readWriteAttribute = "ReadWriteAttribute"
            case auditName = "AuditName"
            case cosRegion = "CosRegion"
            case isCreateNewBucket = "IsCreateNewBucket"
            case cosBucketName = "CosBucketName"
            case keyId = "KeyId"
            case cmqQueueName = "CmqQueueName"
            case kmsRegion = "KmsRegion"
            case isEnableKmsEncry = "IsEnableKmsEncry"
            case cmqRegion = "CmqRegion"
            case logFilePrefix = "LogFilePrefix"
            case isCreateNewQueue = "IsCreateNewQueue"
        }
    }

    /// CreateAudit返回参数结构体
    public struct CreateAuditResponse: TCResponseModel {
        /// 是否创建成功。
        public let isSuccess: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isSuccess = "IsSuccess"
            case requestId = "RequestId"
        }
    }

    /// 创建跟踪集
    ///
    /// 参数要求：
    /// 1、如果IsCreateNewBucket的值存在的话，cosRegion和cosBucketName都是必填参数。
    /// 2、如果IsEnableCmqNotify的值是1的话，IsCreateNewQueue、CmqRegion和CmqQueueName都是必填参数。
    /// 3、如果IsEnableCmqNotify的值是0的话，IsCreateNewQueue、CmqRegion和CmqQueueName都不能传。
    /// 4、如果IsEnableKmsEncry的值是1的话，KmsRegion和KeyId属于必填项
    @inlinable
    public func createAudit(_ input: CreateAuditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditResponse> {
        self.client.execute(action: "CreateAudit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建跟踪集
    ///
    /// 参数要求：
    /// 1、如果IsCreateNewBucket的值存在的话，cosRegion和cosBucketName都是必填参数。
    /// 2、如果IsEnableCmqNotify的值是1的话，IsCreateNewQueue、CmqRegion和CmqQueueName都是必填参数。
    /// 3、如果IsEnableCmqNotify的值是0的话，IsCreateNewQueue、CmqRegion和CmqQueueName都不能传。
    /// 4、如果IsEnableKmsEncry的值是1的话，KmsRegion和KeyId属于必填项
    @inlinable
    public func createAudit(_ input: CreateAuditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditResponse {
        try await self.client.execute(action: "CreateAudit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建跟踪集
    ///
    /// 参数要求：
    /// 1、如果IsCreateNewBucket的值存在的话，cosRegion和cosBucketName都是必填参数。
    /// 2、如果IsEnableCmqNotify的值是1的话，IsCreateNewQueue、CmqRegion和CmqQueueName都是必填参数。
    /// 3、如果IsEnableCmqNotify的值是0的话，IsCreateNewQueue、CmqRegion和CmqQueueName都不能传。
    /// 4、如果IsEnableKmsEncry的值是1的话，KmsRegion和KeyId属于必填项
    @inlinable
    public func createAudit(isEnableCmqNotify: Int64, readWriteAttribute: Int64, auditName: String, cosRegion: String, isCreateNewBucket: Int64, cosBucketName: String, keyId: String? = nil, cmqQueueName: String? = nil, kmsRegion: String? = nil, isEnableKmsEncry: Int64? = nil, cmqRegion: String? = nil, logFilePrefix: String? = nil, isCreateNewQueue: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAuditResponse> {
        self.createAudit(.init(isEnableCmqNotify: isEnableCmqNotify, readWriteAttribute: readWriteAttribute, auditName: auditName, cosRegion: cosRegion, isCreateNewBucket: isCreateNewBucket, cosBucketName: cosBucketName, keyId: keyId, cmqQueueName: cmqQueueName, kmsRegion: kmsRegion, isEnableKmsEncry: isEnableKmsEncry, cmqRegion: cmqRegion, logFilePrefix: logFilePrefix, isCreateNewQueue: isCreateNewQueue), region: region, logger: logger, on: eventLoop)
    }

    /// 创建跟踪集
    ///
    /// 参数要求：
    /// 1、如果IsCreateNewBucket的值存在的话，cosRegion和cosBucketName都是必填参数。
    /// 2、如果IsEnableCmqNotify的值是1的话，IsCreateNewQueue、CmqRegion和CmqQueueName都是必填参数。
    /// 3、如果IsEnableCmqNotify的值是0的话，IsCreateNewQueue、CmqRegion和CmqQueueName都不能传。
    /// 4、如果IsEnableKmsEncry的值是1的话，KmsRegion和KeyId属于必填项
    @inlinable
    public func createAudit(isEnableCmqNotify: Int64, readWriteAttribute: Int64, auditName: String, cosRegion: String, isCreateNewBucket: Int64, cosBucketName: String, keyId: String? = nil, cmqQueueName: String? = nil, kmsRegion: String? = nil, isEnableKmsEncry: Int64? = nil, cmqRegion: String? = nil, logFilePrefix: String? = nil, isCreateNewQueue: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuditResponse {
        try await self.createAudit(.init(isEnableCmqNotify: isEnableCmqNotify, readWriteAttribute: readWriteAttribute, auditName: auditName, cosRegion: cosRegion, isCreateNewBucket: isCreateNewBucket, cosBucketName: cosBucketName, keyId: keyId, cmqQueueName: cmqQueueName, kmsRegion: kmsRegion, isEnableKmsEncry: isEnableKmsEncry, cmqRegion: cmqRegion, logFilePrefix: logFilePrefix, isCreateNewQueue: isCreateNewQueue), region: region, logger: logger, on: eventLoop)
    }
}
