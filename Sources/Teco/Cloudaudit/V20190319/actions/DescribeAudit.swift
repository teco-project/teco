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

extension Cloudaudit {
    /// DescribeAudit请求参数结构体
    public struct DescribeAuditRequest: TCRequestModel {
        /// 跟踪集名称
        public let auditName: String
        
        public init (auditName: String) {
            self.auditName = auditName
        }
        
        enum CodingKeys: String, CodingKey {
            case auditName = "AuditName"
        }
    }
    
    /// DescribeAudit返回参数结构体
    public struct DescribeAuditResponse: TCResponseModel {
        /// 是否开启cmq消息通知。1：是，0：否。
        public let isEnableCmqNotify: Int64
        
        /// 管理事件读写属性，1：只读，2：只写，3：全部
        public let readWriteAttribute: Int64
        
        /// CMK的全局唯一标识符。
        public let keyId: String
        
        /// 跟踪集状态，1：开启，0：停止。
        public let auditStatus: Int64
        
        /// 跟踪集名称。
        public let auditName: String
        
        /// cos存储桶所在地域。
        public let cosRegion: String
        
        /// 队列名称。
        public let cmqQueueName: String
        
        /// CMK别名。
        public let kmsAlias: String
        
        /// kms地域。
        public let kmsRegion: String
        
        /// 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        public let isEnableKmsEncry: Int64
        
        /// cos存储桶名称。
        public let cosBucketName: String
        
        /// 队列所在地域。
        public let cmqRegion: String
        
        /// 日志前缀。
        public let logFilePrefix: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case isEnableCmqNotify = "IsEnableCmqNotify"
            case readWriteAttribute = "ReadWriteAttribute"
            case keyId = "KeyId"
            case auditStatus = "AuditStatus"
            case auditName = "AuditName"
            case cosRegion = "CosRegion"
            case cmqQueueName = "CmqQueueName"
            case kmsAlias = "KmsAlias"
            case kmsRegion = "KmsRegion"
            case isEnableKmsEncry = "IsEnableKmsEncry"
            case cosBucketName = "CosBucketName"
            case cmqRegion = "CmqRegion"
            case logFilePrefix = "LogFilePrefix"
            case requestId = "RequestId"
        }
    }
    
    /// 查询跟踪集详情
    @inlinable
    public func describeAudit(_ input: DescribeAuditRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAuditResponse > {
        self.client.execute(action: "DescribeAudit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询跟踪集详情
    @inlinable
    public func describeAudit(_ input: DescribeAuditRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditResponse {
        try await self.client.execute(action: "DescribeAudit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
