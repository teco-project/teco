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

extension Csip {
    /// DeleteDomainAndIp请求参数结构体
    public struct DeleteDomainAndIpRequest: TCRequest {
        public let content: [PublicIpDomainListKey]

        /// 是否保留路径配置，1：保留，其他：不保留，默认不传为不保留
        public let retainPath: Int64?

        /// 以后是否忽略该资产，，1：忽略，其他：不忽略，默认不传为忽略
        public let ignoreAsset: Int64?

        public init(content: [PublicIpDomainListKey], retainPath: Int64? = nil, ignoreAsset: Int64? = nil) {
            self.content = content
            self.retainPath = retainPath
            self.ignoreAsset = ignoreAsset
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case retainPath = "RetainPath"
            case ignoreAsset = "IgnoreAsset"
        }
    }

    /// DeleteDomainAndIp返回参数结构体
    public struct DeleteDomainAndIpResponse: TCResponse {
        /// 删除的资产数量
        public let data: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除域名和ip请求
    @inlinable
    public func deleteDomainAndIp(_ input: DeleteDomainAndIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainAndIpResponse> {
        self.client.execute(action: "DeleteDomainAndIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除域名和ip请求
    @inlinable
    public func deleteDomainAndIp(_ input: DeleteDomainAndIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainAndIpResponse {
        try await self.client.execute(action: "DeleteDomainAndIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除域名和ip请求
    @inlinable
    public func deleteDomainAndIp(content: [PublicIpDomainListKey], retainPath: Int64? = nil, ignoreAsset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainAndIpResponse> {
        self.deleteDomainAndIp(.init(content: content, retainPath: retainPath, ignoreAsset: ignoreAsset), region: region, logger: logger, on: eventLoop)
    }

    /// 删除域名和ip请求
    @inlinable
    public func deleteDomainAndIp(content: [PublicIpDomainListKey], retainPath: Int64? = nil, ignoreAsset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainAndIpResponse {
        try await self.deleteDomainAndIp(.init(content: content, retainPath: retainPath, ignoreAsset: ignoreAsset), region: region, logger: logger, on: eventLoop)
    }
}
