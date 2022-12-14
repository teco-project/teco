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

extension Tcb {
    /// CreateAuthDomain请求参数结构体
    public struct CreateAuthDomainRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 安全域名
        public let domains: [String]

        public init(envId: String, domains: [String]) {
            self.envId = envId
            self.domains = domains
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case domains = "Domains"
        }
    }

    /// CreateAuthDomain返回参数结构体
    public struct CreateAuthDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 增加安全域名
    @inlinable
    public func createAuthDomain(_ input: CreateAuthDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAuthDomainResponse > {
        self.client.execute(action: "CreateAuthDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加安全域名
    @inlinable
    public func createAuthDomain(_ input: CreateAuthDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuthDomainResponse {
        try await self.client.execute(action: "CreateAuthDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加安全域名
    @inlinable
    public func createAuthDomain(envId: String, domains: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAuthDomainResponse > {
        self.createAuthDomain(CreateAuthDomainRequest(envId: envId, domains: domains), logger: logger, on: eventLoop)
    }

    /// 增加安全域名
    @inlinable
    public func createAuthDomain(envId: String, domains: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuthDomainResponse {
        try await self.createAuthDomain(CreateAuthDomainRequest(envId: envId, domains: domains), logger: logger, on: eventLoop)
    }
}
