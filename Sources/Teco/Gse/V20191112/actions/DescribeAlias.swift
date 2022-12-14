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
    /// DescribeAlias请求参数结构体
    public struct DescribeAliasRequest: TCRequestModel {
        /// 要检索的队列别名的唯一标识符
        public let aliasId: String

        public init(aliasId: String) {
            self.aliasId = aliasId
        }

        enum CodingKeys: String, CodingKey {
            case aliasId = "AliasId"
        }
    }

    /// DescribeAlias返回参数结构体
    public struct DescribeAliasResponse: TCResponseModel {
        /// 别名对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alias: Alias?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alias = "Alias"
            case requestId = "RequestId"
        }
    }

    /// 获取别名详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAlias）用于获取别名详情。
    @inlinable
    public func describeAlias(_ input: DescribeAliasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAliasResponse > {
        self.client.execute(action: "DescribeAlias", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取别名详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAlias）用于获取别名详情。
    @inlinable
    public func describeAlias(_ input: DescribeAliasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAliasResponse {
        try await self.client.execute(action: "DescribeAlias", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取别名详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAlias）用于获取别名详情。
    @inlinable
    public func describeAlias(aliasId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAliasResponse > {
        self.describeAlias(DescribeAliasRequest(aliasId: aliasId), logger: logger, on: eventLoop)
    }

    /// 获取别名详情
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeAlias）用于获取别名详情。
    @inlinable
    public func describeAlias(aliasId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAliasResponse {
        try await self.describeAlias(DescribeAliasRequest(aliasId: aliasId), logger: logger, on: eventLoop)
    }
}
