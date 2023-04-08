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

import TecoCore

extension Cynosdb {
    /// ModifyAccountParams请求参数结构体
    public struct ModifyAccountParamsRequest: TCRequestModel {
        /// 集群id，不超过32个字符
        public let clusterId: String

        /// 账号信息
        public let account: InputAccount

        /// 数据库表权限数组,当前仅支持参数：max_user_connections，max_user_connections不能大于10240
        public let accountParams: [AccountParam]

        public init(clusterId: String, account: InputAccount, accountParams: [AccountParam]) {
            self.clusterId = clusterId
            self.account = account
            self.accountParams = accountParams
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case account = "Account"
            case accountParams = "AccountParams"
        }
    }

    /// ModifyAccountParams返回参数结构体
    public struct ModifyAccountParamsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改账号参数
    @inlinable @discardableResult
    public func modifyAccountParams(_ input: ModifyAccountParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountParamsResponse> {
        self.client.execute(action: "ModifyAccountParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改账号参数
    @inlinable @discardableResult
    public func modifyAccountParams(_ input: ModifyAccountParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountParamsResponse {
        try await self.client.execute(action: "ModifyAccountParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改账号参数
    @inlinable @discardableResult
    public func modifyAccountParams(clusterId: String, account: InputAccount, accountParams: [AccountParam], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountParamsResponse> {
        self.modifyAccountParams(.init(clusterId: clusterId, account: account, accountParams: accountParams), region: region, logger: logger, on: eventLoop)
    }

    /// 修改账号参数
    @inlinable @discardableResult
    public func modifyAccountParams(clusterId: String, account: InputAccount, accountParams: [AccountParam], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountParamsResponse {
        try await self.modifyAccountParams(.init(clusterId: clusterId, account: account, accountParams: accountParams), region: region, logger: logger, on: eventLoop)
    }
}
