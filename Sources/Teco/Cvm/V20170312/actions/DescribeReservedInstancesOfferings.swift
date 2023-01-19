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

extension Cvm {
    /// DescribeReservedInstancesOfferings请求参数结构体
    public struct DescribeReservedInstancesOfferingsRequest: TCRequestModel {
        /// 试运行, 默认为 false。
        public let dryRun: Bool?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        /// 以最大有效期作为过滤参数。
        /// 计量单位: 秒
        /// 默认为 94608000。
        public let maxDuration: Int64?

        /// 以最小有效期作为过滤参数。
        /// 计量单位: 秒
        /// 默认为 2592000。
        public let minDuration: Int64?

        /// <li><strong>zone</strong></li>
        /// <p style="padding-left: 30px;">按照预留实例计费可购买的【<strong>可用区</strong>】进行过滤。形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        /// <li><strong>duration</strong></li>
        /// <p style="padding-left: 30px;">按照预留实例计费【<strong>有效期</strong>】即预留实例计费购买时长进行过滤。形如：31536000。</p><p style="padding-left: 30px;">类型：Integer</p><p style="padding-left: 30px;">计量单位：秒</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：31536000 (1年) | 94608000（3年）</p>
        /// <li><strong>instance-type</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>预留实例计费类型</strong>】进行过滤。形如：S3.MEDIUM4。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/11518">预留实例计费类型列表</a></p>
        /// <li><strong>offering-type</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>付款类型</strong>】进行过滤。形如：All Upfront (预付全部费用)。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：All Upfront (预付全部费用)</p>
        /// <li><strong>product-description</strong></li>
        /// <p style="padding-left: 30px;">按照预留实例计费的【<strong>平台描述</strong>】（即操作系统）进行过滤。形如：linux。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：linux</p>
        /// <li><strong>reserved-instances-offering-id</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>预留实例计费配置ID</strong>】进行过滤。形如：650c138f-ae7e-4750-952a-96841d6e9fc1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        public let filters: [Filter]?

        public init(dryRun: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, maxDuration: Int64? = nil, minDuration: Int64? = nil, filters: [Filter]? = nil) {
            self.dryRun = dryRun
            self.offset = offset
            self.limit = limit
            self.maxDuration = maxDuration
            self.minDuration = minDuration
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case offset = "Offset"
            case limit = "Limit"
            case maxDuration = "MaxDuration"
            case minDuration = "MinDuration"
            case filters = "Filters"
        }
    }

    /// DescribeReservedInstancesOfferings返回参数结构体
    public struct DescribeReservedInstancesOfferingsResponse: TCResponseModel {
        /// 符合条件的预留实例计费数量。
        public let totalCount: Int64

        /// 符合条件的预留实例计费列表。
        public let reservedInstancesOfferingsSet: [ReservedInstancesOffering]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case reservedInstancesOfferingsSet = "ReservedInstancesOfferingsSet"
            case requestId = "RequestId"
        }
    }

    /// 列出可购买的预留实例配置
    ///
    /// 本接口(DescribeReservedInstancesOfferings)供用户列出可购买的预留实例配置
    @inlinable
    public func describeReservedInstancesOfferings(_ input: DescribeReservedInstancesOfferingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservedInstancesOfferingsResponse> {
        self.client.execute(action: "DescribeReservedInstancesOfferings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出可购买的预留实例配置
    ///
    /// 本接口(DescribeReservedInstancesOfferings)供用户列出可购买的预留实例配置
    @inlinable
    public func describeReservedInstancesOfferings(_ input: DescribeReservedInstancesOfferingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesOfferingsResponse {
        try await self.client.execute(action: "DescribeReservedInstancesOfferings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出可购买的预留实例配置
    ///
    /// 本接口(DescribeReservedInstancesOfferings)供用户列出可购买的预留实例配置
    @inlinable
    public func describeReservedInstancesOfferings(dryRun: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, maxDuration: Int64? = nil, minDuration: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReservedInstancesOfferingsResponse> {
        self.describeReservedInstancesOfferings(DescribeReservedInstancesOfferingsRequest(dryRun: dryRun, offset: offset, limit: limit, maxDuration: maxDuration, minDuration: minDuration, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 列出可购买的预留实例配置
    ///
    /// 本接口(DescribeReservedInstancesOfferings)供用户列出可购买的预留实例配置
    @inlinable
    public func describeReservedInstancesOfferings(dryRun: Bool? = nil, offset: Int64? = nil, limit: Int64? = nil, maxDuration: Int64? = nil, minDuration: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesOfferingsResponse {
        try await self.describeReservedInstancesOfferings(DescribeReservedInstancesOfferingsRequest(dryRun: dryRun, offset: offset, limit: limit, maxDuration: maxDuration, minDuration: minDuration, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
