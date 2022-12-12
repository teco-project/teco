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

extension Sts {
    /// QueryApiKey请求参数结构体
    public struct QueryApiKeyRequest: TCRequestModel {
        /// 待查询的账号(不填默认查当前账号)
        public let targetUin: UInt64?
        
        public init (targetUin: UInt64? = nil) {
            self.targetUin = targetUin
        }
        
        enum CodingKeys: String, CodingKey {
            case targetUin = "TargetUin"
        }
    }
    
    /// QueryApiKey返回参数结构体
    public struct QueryApiKeyResponse: TCResponseModel {
        /// 密钥ID列表
        public let idKeys: [ApiKey]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case idKeys = "IdKeys"
            case requestId = "RequestId"
        }
    }
    
    /// 拉取API密钥列表
    @inlinable
    public func queryApiKey(_ input: QueryApiKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryApiKeyResponse > {
        self.client.execute(action: "QueryApiKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉取API密钥列表
    @inlinable
    public func queryApiKey(_ input: QueryApiKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryApiKeyResponse {
        try await self.client.execute(action: "QueryApiKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
