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

extension Vpc {
    /// DescribeBandwidthPackages请求参数结构体
    public struct DescribeBandwidthPackagesRequest: TCPaginatedRequest {
        /// 带宽包唯一ID列表
        public let bandwidthPackageIds: [String]?

        /// 每次请求的`Filters`的上限为10。参数不支持同时指定`BandwidthPackageIds`和`Filters`。详细的过滤条件如下：
        /// - bandwidth-package_id - String - 是否必填：否 - （过滤条件）按照带宽包的唯一标识ID过滤。
        /// - bandwidth-package-name - String - 是否必填：否 - （过滤条件）按照 带宽包名称过滤。不支持模糊过滤。
        /// - network-type - String - 是否必填：否 - （过滤条件）按照带宽包的类型过滤。类型包括'HIGH_QUALITY_BGP','BGP','SINGLEISP'和'ANYCAST'。
        /// - charge-type - String - 是否必填：否 - （过滤条件）按照带宽包的计费类型过滤。计费类型包括'TOP5_POSTPAID_BY_MONTH'和'PERCENT95_POSTPAID_BY_MONTH'。
        /// - resource.resource-type - String - 是否必填：否 - （过滤条件）按照带宽包资源类型过滤。资源类型包括'Address'和'LoadBalance'
        /// - resource.resource-id - String - 是否必填：否 - （过滤条件）按照带宽包资源Id过滤。资源Id形如'eip-xxxx','lb-xxxx'
        /// - resource.address-ip - String - 是否必填：否 - （过滤条件）按照带宽包资源Ip过滤。
        /// - tag-key - String - 是否必填：否 - （过滤条件）按照标签键进行过滤。
        /// - tag-value - String - 是否必填：否 - （过滤条件）按照标签值进行过滤。
        /// - tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。tag-key使用具体的标签键进行替换。
        public let filters: [Filter]?

        /// 查询带宽包偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小结。
        public let offset: UInt64?

        /// 查询带宽包返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小结。
        public let limit: UInt64?

        public init(bandwidthPackageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.bandwidthPackageIds = bandwidthPackageIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case bandwidthPackageIds = "BandwidthPackageIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBandwidthPackagesResponse) -> DescribeBandwidthPackagesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(bandwidthPackageIds: self.bandwidthPackageIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBandwidthPackages返回参数结构体
    public struct DescribeBandwidthPackagesResponse: TCPaginatedResponse {
        /// 符合条件的带宽包数量
        public let totalCount: UInt64

        /// 描述带宽包详细信息
        public let bandwidthPackageSet: [BandwidthPackage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bandwidthPackageSet = "BandwidthPackageSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BandwidthPackage`` list from the paginated response.
        public func getItems() -> [BandwidthPackage] {
            self.bandwidthPackageSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    @inlinable
    public func describeBandwidthPackages(_ input: DescribeBandwidthPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBandwidthPackagesResponse> {
        self.client.execute(action: "DescribeBandwidthPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    @inlinable
    public func describeBandwidthPackages(_ input: DescribeBandwidthPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBandwidthPackagesResponse {
        try await self.client.execute(action: "DescribeBandwidthPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    @inlinable
    public func describeBandwidthPackages(bandwidthPackageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBandwidthPackagesResponse> {
        self.describeBandwidthPackages(.init(bandwidthPackageIds: bandwidthPackageIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    @inlinable
    public func describeBandwidthPackages(bandwidthPackageIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBandwidthPackagesResponse {
        try await self.describeBandwidthPackages(.init(bandwidthPackageIds: bandwidthPackageIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    @inlinable
    public func describeBandwidthPackagesPaginated(_ input: DescribeBandwidthPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BandwidthPackage])> {
        self.client.paginate(input: input, region: region, command: self.describeBandwidthPackages, logger: logger, on: eventLoop)
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    @inlinable @discardableResult
    public func describeBandwidthPackagesPaginated(_ input: DescribeBandwidthPackagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBandwidthPackagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBandwidthPackages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询带宽包资源
    ///
    /// 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等
    ///
    /// - Returns: `AsyncSequence`s of ``BandwidthPackage`` and ``DescribeBandwidthPackagesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBandwidthPackagesPaginator(_ input: DescribeBandwidthPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBandwidthPackagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBandwidthPackages, logger: logger, on: eventLoop)
    }
}
