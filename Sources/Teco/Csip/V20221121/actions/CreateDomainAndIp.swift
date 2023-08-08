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
    /// CreateDomainAndIp请求参数结构体
    public struct CreateDomainAndIpRequest: TCRequestModel {
        /// -
        public let content: [String]

        public init(content: [String]) {
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case content = "Content"
        }
    }

    /// CreateDomainAndIp返回参数结构体
    public struct CreateDomainAndIpResponse: TCResponseModel {
        /// 返回创建成功的数量
        public let data: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建域名、ip相关信息
    @inlinable
    public func createDomainAndIp(_ input: CreateDomainAndIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainAndIpResponse> {
        self.client.execute(action: "CreateDomainAndIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建域名、ip相关信息
    @inlinable
    public func createDomainAndIp(_ input: CreateDomainAndIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainAndIpResponse {
        try await self.client.execute(action: "CreateDomainAndIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建域名、ip相关信息
    @inlinable
    public func createDomainAndIp(content: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainAndIpResponse> {
        self.createDomainAndIp(.init(content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 创建域名、ip相关信息
    @inlinable
    public func createDomainAndIp(content: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainAndIpResponse {
        try await self.createDomainAndIp(.init(content: content), region: region, logger: logger, on: eventLoop)
    }
}