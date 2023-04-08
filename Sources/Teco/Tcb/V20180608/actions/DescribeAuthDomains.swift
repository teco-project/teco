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

extension Tcb {
    /// DescribeAuthDomains请求参数结构体
    public struct DescribeAuthDomainsRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        public init(envId: String) {
            self.envId = envId
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
        }
    }

    /// DescribeAuthDomains返回参数结构体
    public struct DescribeAuthDomainsResponse: TCResponseModel {
        /// 安全域名列表列表
        public let domains: [AuthDomain]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case requestId = "RequestId"
        }
    }

    /// 获取安全域名列表
    @inlinable
    public func describeAuthDomains(_ input: DescribeAuthDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuthDomainsResponse> {
        self.client.execute(action: "DescribeAuthDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全域名列表
    @inlinable
    public func describeAuthDomains(_ input: DescribeAuthDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuthDomainsResponse {
        try await self.client.execute(action: "DescribeAuthDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全域名列表
    @inlinable
    public func describeAuthDomains(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuthDomainsResponse> {
        self.describeAuthDomains(.init(envId: envId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全域名列表
    @inlinable
    public func describeAuthDomains(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuthDomainsResponse {
        try await self.describeAuthDomains(.init(envId: envId), region: region, logger: logger, on: eventLoop)
    }
}
