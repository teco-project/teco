//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Gaap {
    /// DescribeDomainErrorPageInfo请求参数结构体
    public struct DescribeDomainErrorPageInfoRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String

        /// 域名
        public let domain: String

        public init(listenerId: String, domain: String) {
            self.listenerId = listenerId
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case domain = "Domain"
        }
    }

    /// DescribeDomainErrorPageInfo返回参数结构体
    public struct DescribeDomainErrorPageInfoResponse: TCResponseModel {
        /// 定制错误响应配置集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorPageSet: [DomainErrorPageInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorPageSet = "ErrorPageSet"
            case requestId = "RequestId"
        }
    }

    /// 查询目前定制域名的错误响应
    @inlinable
    public func describeDomainErrorPageInfo(_ input: DescribeDomainErrorPageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainErrorPageInfoResponse> {
        self.client.execute(action: "DescribeDomainErrorPageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询目前定制域名的错误响应
    @inlinable
    public func describeDomainErrorPageInfo(_ input: DescribeDomainErrorPageInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainErrorPageInfoResponse {
        try await self.client.execute(action: "DescribeDomainErrorPageInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询目前定制域名的错误响应
    @inlinable
    public func describeDomainErrorPageInfo(listenerId: String, domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainErrorPageInfoResponse> {
        self.describeDomainErrorPageInfo(DescribeDomainErrorPageInfoRequest(listenerId: listenerId, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 查询目前定制域名的错误响应
    @inlinable
    public func describeDomainErrorPageInfo(listenerId: String, domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainErrorPageInfoResponse {
        try await self.describeDomainErrorPageInfo(DescribeDomainErrorPageInfoRequest(listenerId: listenerId, domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
