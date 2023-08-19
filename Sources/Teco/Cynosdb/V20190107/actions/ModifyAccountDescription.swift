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

extension Cynosdb {
    /// ModifyAccountDescription请求参数结构体
    public struct ModifyAccountDescriptionRequest: TCRequest {
        /// 数据库账号名
        public let accountName: String

        /// 数据库账号描述信息
        public let description: String

        /// 集群ID
        public let clusterId: String

        /// 主机，默认为"%"
        public let host: String?

        public init(accountName: String, description: String, clusterId: String, host: String? = nil) {
            self.accountName = accountName
            self.description = description
            self.clusterId = clusterId
            self.host = host
        }

        enum CodingKeys: String, CodingKey {
            case accountName = "AccountName"
            case description = "Description"
            case clusterId = "ClusterId"
            case host = "Host"
        }
    }

    /// ModifyAccountDescription返回参数结构体
    public struct ModifyAccountDescriptionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据库账号描述信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改数据库账号描述信息。
    @inlinable @discardableResult
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountDescriptionResponse> {
        self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库账号描述信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改数据库账号描述信息。
    @inlinable @discardableResult
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        try await self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据库账号描述信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改数据库账号描述信息。
    @inlinable @discardableResult
    public func modifyAccountDescription(accountName: String, description: String, clusterId: String, host: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountDescriptionResponse> {
        self.modifyAccountDescription(.init(accountName: accountName, description: description, clusterId: clusterId, host: host), region: region, logger: logger, on: eventLoop)
    }

    /// 修改数据库账号描述信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改数据库账号描述信息。
    @inlinable @discardableResult
    public func modifyAccountDescription(accountName: String, description: String, clusterId: String, host: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        try await self.modifyAccountDescription(.init(accountName: accountName, description: description, clusterId: clusterId, host: host), region: region, logger: logger, on: eventLoop)
    }
}
