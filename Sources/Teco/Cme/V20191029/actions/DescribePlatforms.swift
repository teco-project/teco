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
import TecoPaginationHelpers

extension Cme {
    /// DescribePlatforms请求参数结构体
    public struct DescribePlatformsRequest: TCPaginatedRequest {
        /// 平台 Id 列表。如果不填，则不按平台 Id 进行过滤。
        public let platforms: [String]?

        /// 平台绑定的 License Id 列表。如果不填，则不按平台绑定的 License Id 进行过滤。
        public let licenseIds: [String]?

        /// 分页返回的起始偏移量，默认值：0。
        public let offset: UInt64?

        /// 分页返回的记录条数，默认值：10，最大值：20。
        public let limit: UInt64?

        public init(platforms: [String]? = nil, licenseIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.platforms = platforms
            self.licenseIds = licenseIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case platforms = "Platforms"
            case licenseIds = "LicenseIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePlatformsResponse) -> DescribePlatformsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePlatformsRequest(platforms: self.platforms, licenseIds: self.licenseIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePlatforms返回参数结构体
    public struct DescribePlatformsResponse: TCPaginatedResponse {
        /// 符合查询条件的记录总数。
        public let totalCount: UInt64

        /// 平台信息列表。
        public let platformInfoSet: [PlatformInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case platformInfoSet = "PlatformInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PlatformInfo`` list from the paginated response.
        public func getItems() -> [PlatformInfo] {
            self.platformInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    @inlinable
    public func describePlatforms(_ input: DescribePlatformsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlatformsResponse> {
        self.client.execute(action: "DescribePlatforms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    @inlinable
    public func describePlatforms(_ input: DescribePlatformsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlatformsResponse {
        try await self.client.execute(action: "DescribePlatforms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    @inlinable
    public func describePlatforms(platforms: [String]? = nil, licenseIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlatformsResponse> {
        self.describePlatforms(.init(platforms: platforms, licenseIds: licenseIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    @inlinable
    public func describePlatforms(platforms: [String]? = nil, licenseIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlatformsResponse {
        try await self.describePlatforms(.init(platforms: platforms, licenseIds: licenseIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    @inlinable
    public func describePlatformsPaginated(_ input: DescribePlatformsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PlatformInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePlatforms, logger: logger, on: eventLoop)
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    @inlinable @discardableResult
    public func describePlatformsPaginated(_ input: DescribePlatformsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePlatformsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePlatforms, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取平台列表
    ///
    /// <li>支持获取所创建的所有平台列表信息；</li>
    /// <li>支持获取指定的平台列表信息。</li>
    ///
    /// 关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
    ///
    /// - Returns: `AsyncSequence`s of `PlatformInfo` and `DescribePlatformsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePlatformsPaginator(_ input: DescribePlatformsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePlatformsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePlatforms, logger: logger, on: eventLoop)
    }
}
