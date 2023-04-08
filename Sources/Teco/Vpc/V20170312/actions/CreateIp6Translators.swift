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
    /// CreateIp6Translators请求参数结构体
    public struct CreateIp6TranslatorsRequest: TCRequestModel {
        /// 转换实例名称
        public let ip6TranslatorName: String?

        /// 创建转换实例数量，默认是1个
        public let ip6TranslatorCount: Int64?

        /// 转换实例运营商属性，可取"CMCC","CTCC","CUCC","BGP"
        public let ip6InternetServiceProvider: String?

        public init(ip6TranslatorName: String? = nil, ip6TranslatorCount: Int64? = nil, ip6InternetServiceProvider: String? = nil) {
            self.ip6TranslatorName = ip6TranslatorName
            self.ip6TranslatorCount = ip6TranslatorCount
            self.ip6InternetServiceProvider = ip6InternetServiceProvider
        }

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorName = "Ip6TranslatorName"
            case ip6TranslatorCount = "Ip6TranslatorCount"
            case ip6InternetServiceProvider = "Ip6InternetServiceProvider"
        }
    }

    /// CreateIp6Translators返回参数结构体
    public struct CreateIp6TranslatorsResponse: TCResponseModel {
        /// 转换实例的唯一ID数组，形如"ip6-xxxxxxxx"
        public let ip6TranslatorSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorSet = "Ip6TranslatorSet"
            case requestId = "RequestId"
        }
    }

    /// 创建IPV6转换IPV4实例
    ///
    /// 1. 该接口用于创建IPV6转换IPV4实例，支持批量
    /// 2. 同一个账户在一个地域最多允许创建10个转换实例
    @inlinable
    public func createIp6Translators(_ input: CreateIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIp6TranslatorsResponse> {
        self.client.execute(action: "CreateIp6Translators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建IPV6转换IPV4实例
    ///
    /// 1. 该接口用于创建IPV6转换IPV4实例，支持批量
    /// 2. 同一个账户在一个地域最多允许创建10个转换实例
    @inlinable
    public func createIp6Translators(_ input: CreateIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIp6TranslatorsResponse {
        try await self.client.execute(action: "CreateIp6Translators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建IPV6转换IPV4实例
    ///
    /// 1. 该接口用于创建IPV6转换IPV4实例，支持批量
    /// 2. 同一个账户在一个地域最多允许创建10个转换实例
    @inlinable
    public func createIp6Translators(ip6TranslatorName: String? = nil, ip6TranslatorCount: Int64? = nil, ip6InternetServiceProvider: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIp6TranslatorsResponse> {
        self.createIp6Translators(.init(ip6TranslatorName: ip6TranslatorName, ip6TranslatorCount: ip6TranslatorCount, ip6InternetServiceProvider: ip6InternetServiceProvider), region: region, logger: logger, on: eventLoop)
    }

    /// 创建IPV6转换IPV4实例
    ///
    /// 1. 该接口用于创建IPV6转换IPV4实例，支持批量
    /// 2. 同一个账户在一个地域最多允许创建10个转换实例
    @inlinable
    public func createIp6Translators(ip6TranslatorName: String? = nil, ip6TranslatorCount: Int64? = nil, ip6InternetServiceProvider: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIp6TranslatorsResponse {
        try await self.createIp6Translators(.init(ip6TranslatorName: ip6TranslatorName, ip6TranslatorCount: ip6TranslatorCount, ip6InternetServiceProvider: ip6InternetServiceProvider), region: region, logger: logger, on: eventLoop)
    }
}
