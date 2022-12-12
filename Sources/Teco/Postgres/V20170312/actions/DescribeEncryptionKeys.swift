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

extension Postgres {
    /// DescribeEncryptionKeys请求参数结构体
    public struct DescribeEncryptionKeysRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String
        
        public init (dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }
    
    /// DescribeEncryptionKeys返回参数结构体
    public struct DescribeEncryptionKeysResponse: TCResponseModel {
        /// 实例密钥信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptionKeys: [EncryptionKey]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case encryptionKeys = "EncryptionKeys"
            case requestId = "RequestId"
        }
    }
    
    /// 实例密钥信息列表
    ///
    /// 获取实例的密钥信息列表。
    @inlinable
    public func describeEncryptionKeys(_ input: DescribeEncryptionKeysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEncryptionKeysResponse > {
        self.client.execute(action: "DescribeEncryptionKeys", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 实例密钥信息列表
    ///
    /// 获取实例的密钥信息列表。
    @inlinable
    public func describeEncryptionKeys(_ input: DescribeEncryptionKeysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEncryptionKeysResponse {
        try await self.client.execute(action: "DescribeEncryptionKeys", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
