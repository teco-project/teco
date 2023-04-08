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

import Logging
import NIOCore
import TecoCore

extension Tcb {
    /// DescribeDatabaseACL请求参数结构体
    public struct DescribeDatabaseACLRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 集合名称
        public let collectionName: String

        public init(envId: String, collectionName: String) {
            self.envId = envId
            self.collectionName = collectionName
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case collectionName = "CollectionName"
        }
    }

    /// DescribeDatabaseACL返回参数结构体
    public struct DescribeDatabaseACLResponse: TCResponseModel {
        /// 权限标签。包含以下取值：
        /// <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        /// <li> PRIVATE：仅创建者及管理员可读写</li>
        /// <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        /// <li> ADMINONLY：仅管理员可读写</li>
        public let aclTag: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case aclTag = "AclTag"
            case requestId = "RequestId"
        }
    }

    /// 获取数据库权限
    @inlinable
    public func describeDatabaseACL(_ input: DescribeDatabaseACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseACLResponse> {
        self.client.execute(action: "DescribeDatabaseACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据库权限
    @inlinable
    public func describeDatabaseACL(_ input: DescribeDatabaseACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseACLResponse {
        try await self.client.execute(action: "DescribeDatabaseACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据库权限
    @inlinable
    public func describeDatabaseACL(envId: String, collectionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseACLResponse> {
        self.describeDatabaseACL(.init(envId: envId, collectionName: collectionName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据库权限
    @inlinable
    public func describeDatabaseACL(envId: String, collectionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseACLResponse {
        try await self.describeDatabaseACL(.init(envId: envId, collectionName: collectionName), region: region, logger: logger, on: eventLoop)
    }
}
