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

extension Gaap {
    /// DescribeDomainErrorPageInfoByIds请求参数结构体
    public struct DescribeDomainErrorPageInfoByIdsRequest: TCRequestModel {
        /// 定制错误ID列表,最多支持10个
        public let errorPageIds: [String]

        public init(errorPageIds: [String]) {
            self.errorPageIds = errorPageIds
        }

        enum CodingKeys: String, CodingKey {
            case errorPageIds = "ErrorPageIds"
        }
    }

    /// DescribeDomainErrorPageInfoByIds返回参数结构体
    public struct DescribeDomainErrorPageInfoByIdsResponse: TCResponseModel {
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

    /// 根据定制错误ID查询错误响应
    @inlinable
    public func describeDomainErrorPageInfoByIds(_ input: DescribeDomainErrorPageInfoByIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainErrorPageInfoByIdsResponse> {
        self.client.execute(action: "DescribeDomainErrorPageInfoByIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据定制错误ID查询错误响应
    @inlinable
    public func describeDomainErrorPageInfoByIds(_ input: DescribeDomainErrorPageInfoByIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainErrorPageInfoByIdsResponse {
        try await self.client.execute(action: "DescribeDomainErrorPageInfoByIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据定制错误ID查询错误响应
    @inlinable
    public func describeDomainErrorPageInfoByIds(errorPageIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainErrorPageInfoByIdsResponse> {
        self.describeDomainErrorPageInfoByIds(.init(errorPageIds: errorPageIds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据定制错误ID查询错误响应
    @inlinable
    public func describeDomainErrorPageInfoByIds(errorPageIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainErrorPageInfoByIdsResponse {
        try await self.describeDomainErrorPageInfoByIds(.init(errorPageIds: errorPageIds), region: region, logger: logger, on: eventLoop)
    }
}
