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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcb {
    /// ModifyDatabaseACL请求参数结构体
    public struct ModifyDatabaseACLRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 集合名称
        public let collectionName: String

        /// 权限标签。包含以下取值：
        /// <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        /// <li> PRIVATE：仅创建者及管理员可读写</li>
        /// <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        /// <li> ADMINONLY：仅管理员可读写</li>
        public let aclTag: String

        public init(envId: String, collectionName: String, aclTag: String) {
            self.envId = envId
            self.collectionName = collectionName
            self.aclTag = aclTag
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case collectionName = "CollectionName"
            case aclTag = "AclTag"
        }
    }

    /// ModifyDatabaseACL返回参数结构体
    public struct ModifyDatabaseACLResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据库权限
    @inlinable @discardableResult
    public func modifyDatabaseACL(_ input: ModifyDatabaseACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatabaseACLResponse> {
        self.client.execute(action: "ModifyDatabaseACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库权限
    @inlinable @discardableResult
    public func modifyDatabaseACL(_ input: ModifyDatabaseACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatabaseACLResponse {
        try await self.client.execute(action: "ModifyDatabaseACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据库权限
    @inlinable @discardableResult
    public func modifyDatabaseACL(envId: String, collectionName: String, aclTag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatabaseACLResponse> {
        self.modifyDatabaseACL(.init(envId: envId, collectionName: collectionName, aclTag: aclTag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据库权限
    @inlinable @discardableResult
    public func modifyDatabaseACL(envId: String, collectionName: String, aclTag: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatabaseACLResponse {
        try await self.modifyDatabaseACL(.init(envId: envId, collectionName: collectionName, aclTag: aclTag), region: region, logger: logger, on: eventLoop)
    }
}
