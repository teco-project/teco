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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cws {
    /// VerifySites请求参数结构体
    public struct VerifySitesRequest: TCRequestModel {
        /// 站点的url列表
        public let urls: [String]

        public init(urls: [String]) {
            self.urls = urls
        }

        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
        }
    }

    /// VerifySites返回参数结构体
    public struct VerifySitesResponse: TCResponseModel {
        /// 验证成功的根域名数量。
        public let successNumber: UInt64

        /// 验证失败的根域名数量。
        public let failNumber: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successNumber = "SuccessNumber"
            case failNumber = "FailNumber"
            case requestId = "RequestId"
        }
    }

    /// 验证站点
    ///
    /// 本接口 (VerifySites) 用于验证一个或多个待验证站点。
    @inlinable
    public func verifySites(_ input: VerifySitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifySitesResponse> {
        self.client.execute(action: "VerifySites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证站点
    ///
    /// 本接口 (VerifySites) 用于验证一个或多个待验证站点。
    @inlinable
    public func verifySites(_ input: VerifySitesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifySitesResponse {
        try await self.client.execute(action: "VerifySites", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证站点
    ///
    /// 本接口 (VerifySites) 用于验证一个或多个待验证站点。
    @inlinable
    public func verifySites(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifySitesResponse> {
        self.verifySites(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }

    /// 验证站点
    ///
    /// 本接口 (VerifySites) 用于验证一个或多个待验证站点。
    @inlinable
    public func verifySites(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifySitesResponse {
        try await self.verifySites(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }
}
