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

extension Vpc {
    /// DeleteIp6Translators请求参数结构体
    public struct DeleteIp6TranslatorsRequest: TCRequestModel {
        /// 待释放的IPV6转换实例的唯一ID，形如‘ip6-xxxxxxxx’
        public let ip6TranslatorIds: [String]

        public init(ip6TranslatorIds: [String]) {
            self.ip6TranslatorIds = ip6TranslatorIds
        }

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorIds = "Ip6TranslatorIds"
        }
    }

    /// DeleteIp6Translators返回参数结构体
    public struct DeleteIp6TranslatorsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 释放IPV6转换实例
    ///
    /// 1. 该接口用于释放IPV6转换实例，支持批量。
    /// 2.  如果IPV6转换实例建立有转换规则，会一并删除。
    @inlinable @discardableResult
    public func deleteIp6Translators(_ input: DeleteIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIp6TranslatorsResponse> {
        self.client.execute(action: "DeleteIp6Translators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 释放IPV6转换实例
    ///
    /// 1. 该接口用于释放IPV6转换实例，支持批量。
    /// 2.  如果IPV6转换实例建立有转换规则，会一并删除。
    @inlinable @discardableResult
    public func deleteIp6Translators(_ input: DeleteIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIp6TranslatorsResponse {
        try await self.client.execute(action: "DeleteIp6Translators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 释放IPV6转换实例
    ///
    /// 1. 该接口用于释放IPV6转换实例，支持批量。
    /// 2.  如果IPV6转换实例建立有转换规则，会一并删除。
    @inlinable @discardableResult
    public func deleteIp6Translators(ip6TranslatorIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIp6TranslatorsResponse> {
        self.deleteIp6Translators(.init(ip6TranslatorIds: ip6TranslatorIds), region: region, logger: logger, on: eventLoop)
    }

    /// 释放IPV6转换实例
    ///
    /// 1. 该接口用于释放IPV6转换实例，支持批量。
    /// 2.  如果IPV6转换实例建立有转换规则，会一并删除。
    @inlinable @discardableResult
    public func deleteIp6Translators(ip6TranslatorIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIp6TranslatorsResponse {
        try await self.deleteIp6Translators(.init(ip6TranslatorIds: ip6TranslatorIds), region: region, logger: logger, on: eventLoop)
    }
}
