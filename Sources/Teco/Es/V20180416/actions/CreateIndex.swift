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

extension Es {
    /// CreateIndex请求参数结构体
    public struct CreateIndexRequest: TCRequestModel {
        /// ES集群ID
        public let instanceId: String
        
        /// 创建的索引类型。auto：自治索引；normal：普通索引
        public let indexType: String
        
        /// 创建的索引名
        public let indexName: String
        
        /// 创建的索引元数据JSON，如mappings、settings
        public let indexMetaJson: String?
        
        /// 集群访问用户名
        public let username: String?
        
        /// 集群访问密码
        public let password: String?
        
        public init (instanceId: String, indexType: String, indexName: String, indexMetaJson: String? = nil, username: String? = nil, password: String? = nil) {
            self.instanceId = instanceId
            self.indexType = indexType
            self.indexName = indexName
            self.indexMetaJson = indexMetaJson
            self.username = username
            self.password = password
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case indexType = "IndexType"
            case indexName = "IndexName"
            case indexMetaJson = "IndexMetaJson"
            case username = "Username"
            case password = "Password"
        }
    }
    
    /// CreateIndex返回参数结构体
    public struct CreateIndexResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建索引
    @inlinable
    public func createIndex(_ input: CreateIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIndexResponse > {
        self.client.execute(action: "CreateIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建索引
    @inlinable
    public func createIndex(_ input: CreateIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIndexResponse {
        try await self.client.execute(action: "CreateIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
