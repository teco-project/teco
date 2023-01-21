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

extension Es {
    /// DeleteIndex请求参数结构体
    public struct DeleteIndexRequest: TCRequestModel {
        /// ES集群ID
        public let instanceId: String

        /// 删除的索引类型。auto：自治索引；normal：普通索引
        public let indexType: String

        /// 删除的索引名
        public let indexName: String

        /// 集群访问用户名
        public let username: String?

        /// 集群访问密码
        public let password: String?

        /// 后备索引名
        public let backingIndexName: String?

        public init(instanceId: String, indexType: String, indexName: String, username: String? = nil, password: String? = nil, backingIndexName: String? = nil) {
            self.instanceId = instanceId
            self.indexType = indexType
            self.indexName = indexName
            self.username = username
            self.password = password
            self.backingIndexName = backingIndexName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case indexType = "IndexType"
            case indexName = "IndexName"
            case username = "Username"
            case password = "Password"
            case backingIndexName = "BackingIndexName"
        }
    }

    /// DeleteIndex返回参数结构体
    public struct DeleteIndexResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除索引
    @inlinable @discardableResult
    public func deleteIndex(_ input: DeleteIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIndexResponse> {
        self.client.execute(action: "DeleteIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除索引
    @inlinable @discardableResult
    public func deleteIndex(_ input: DeleteIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIndexResponse {
        try await self.client.execute(action: "DeleteIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除索引
    @inlinable @discardableResult
    public func deleteIndex(instanceId: String, indexType: String, indexName: String, username: String? = nil, password: String? = nil, backingIndexName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIndexResponse> {
        self.deleteIndex(DeleteIndexRequest(instanceId: instanceId, indexType: indexType, indexName: indexName, username: username, password: password, backingIndexName: backingIndexName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除索引
    @inlinable @discardableResult
    public func deleteIndex(instanceId: String, indexType: String, indexName: String, username: String? = nil, password: String? = nil, backingIndexName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIndexResponse {
        try await self.deleteIndex(DeleteIndexRequest(instanceId: instanceId, indexType: indexType, indexName: indexName, username: username, password: password, backingIndexName: backingIndexName), region: region, logger: logger, on: eventLoop)
    }
}
