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

extension Gse {
    /// DeleteAlias请求参数结构体
    public struct DeleteAliasRequest: TCRequestModel {
        /// 要删除的别名ID
        public let aliasId: String

        public init(aliasId: String) {
            self.aliasId = aliasId
        }

        enum CodingKeys: String, CodingKey {
            case aliasId = "AliasId"
        }
    }

    /// DeleteAlias返回参数结构体
    public struct DeleteAliasResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAlias）用于删除别名。
    @inlinable
    public func deleteAlias(_ input: DeleteAliasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAliasResponse > {
        self.client.execute(action: "DeleteAlias", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAlias）用于删除别名。
    @inlinable
    public func deleteAlias(_ input: DeleteAliasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAliasResponse {
        try await self.client.execute(action: "DeleteAlias", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAlias）用于删除别名。
    @inlinable
    public func deleteAlias(aliasId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAliasResponse > {
        self.deleteAlias(DeleteAliasRequest(aliasId: aliasId), logger: logger, on: eventLoop)
    }

    /// 删除别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteAlias）用于删除别名。
    @inlinable
    public func deleteAlias(aliasId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAliasResponse {
        try await self.deleteAlias(DeleteAliasRequest(aliasId: aliasId), logger: logger, on: eventLoop)
    }
}
