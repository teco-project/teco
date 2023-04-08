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

extension Cws {
    /// DescribeSitesVerification请求参数结构体
    public struct DescribeSitesVerificationRequest: TCRequestModel {
        /// 站点的url列表
        public let urls: [String]

        public init(urls: [String]) {
            self.urls = urls
        }

        enum CodingKeys: String, CodingKey {
            case urls = "Urls"
        }
    }

    /// DescribeSitesVerification返回参数结构体
    public struct DescribeSitesVerificationResponse: TCResponseModel {
        /// 验证信息数量。
        public let totalCount: UInt64

        /// 验证信息列表。
        public let sitesVerification: [SitesVerification]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sitesVerification = "SitesVerification"
            case requestId = "RequestId"
        }
    }

    /// 查看站点列表的验证信息列表
    ///
    /// 本接口 (DescribeSitesVerification) 用于查询一个或多个待验证站点的验证信息。
    @inlinable
    public func describeSitesVerification(_ input: DescribeSitesVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesVerificationResponse> {
        self.client.execute(action: "DescribeSitesVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看站点列表的验证信息列表
    ///
    /// 本接口 (DescribeSitesVerification) 用于查询一个或多个待验证站点的验证信息。
    @inlinable
    public func describeSitesVerification(_ input: DescribeSitesVerificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesVerificationResponse {
        try await self.client.execute(action: "DescribeSitesVerification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看站点列表的验证信息列表
    ///
    /// 本接口 (DescribeSitesVerification) 用于查询一个或多个待验证站点的验证信息。
    @inlinable
    public func describeSitesVerification(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesVerificationResponse> {
        self.describeSitesVerification(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }

    /// 查看站点列表的验证信息列表
    ///
    /// 本接口 (DescribeSitesVerification) 用于查询一个或多个待验证站点的验证信息。
    @inlinable
    public func describeSitesVerification(urls: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesVerificationResponse {
        try await self.describeSitesVerification(.init(urls: urls), region: region, logger: logger, on: eventLoop)
    }
}
