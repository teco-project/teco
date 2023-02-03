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

extension Tdcpg {
    /// ModifyAccountDescription请求参数结构体
    public struct ModifyAccountDescriptionRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 账号名字
        public let accountName: String

        /// 账号描述，0-256个字符
        public let accountDescription: String

        public init(clusterId: String, accountName: String, accountDescription: String) {
            self.clusterId = clusterId
            self.accountName = accountName
            self.accountDescription = accountDescription
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case accountName = "AccountName"
            case accountDescription = "AccountDescription"
        }
    }

    /// ModifyAccountDescription返回参数结构体
    public struct ModifyAccountDescriptionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改数据库账号描述
    @inlinable @discardableResult
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountDescriptionResponse> {
        self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库账号描述
    @inlinable @discardableResult
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        try await self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改数据库账号描述
    @inlinable @discardableResult
    public func modifyAccountDescription(clusterId: String, accountName: String, accountDescription: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountDescriptionResponse> {
        let input = ModifyAccountDescriptionRequest(clusterId: clusterId, accountName: accountName, accountDescription: accountDescription)
        return self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改数据库账号描述
    @inlinable @discardableResult
    public func modifyAccountDescription(clusterId: String, accountName: String, accountDescription: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        let input = ModifyAccountDescriptionRequest(clusterId: clusterId, accountName: accountName, accountDescription: accountDescription)
        return try await self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
