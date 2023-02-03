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

extension Live {
    /// ForbidLiveDomain请求参数结构体
    public struct ForbidLiveDomainRequest: TCRequestModel {
        /// 待停用的直播域名。
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    /// ForbidLiveDomain返回参数结构体
    public struct ForbidLiveDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用域名
    ///
    /// 停止使用某个直播域名。
    @inlinable @discardableResult
    public func forbidLiveDomain(_ input: ForbidLiveDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForbidLiveDomainResponse> {
        self.client.execute(action: "ForbidLiveDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用域名
    ///
    /// 停止使用某个直播域名。
    @inlinable @discardableResult
    public func forbidLiveDomain(_ input: ForbidLiveDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForbidLiveDomainResponse {
        try await self.client.execute(action: "ForbidLiveDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用域名
    ///
    /// 停止使用某个直播域名。
    @inlinable @discardableResult
    public func forbidLiveDomain(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForbidLiveDomainResponse> {
        let input = ForbidLiveDomainRequest(domainName: domainName)
        return self.client.execute(action: "ForbidLiveDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用域名
    ///
    /// 停止使用某个直播域名。
    @inlinable @discardableResult
    public func forbidLiveDomain(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForbidLiveDomainResponse {
        let input = ForbidLiveDomainRequest(domainName: domainName)
        return try await self.client.execute(action: "ForbidLiveDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
