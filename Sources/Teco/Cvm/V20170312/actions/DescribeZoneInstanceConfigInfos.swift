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

extension Cvm {
    /// DescribeZoneInstanceConfigInfos请求参数结构体
    public struct DescribeZoneInstanceConfigInfosRequest: TCRequest {
        /// - **zone**
        ///
        /// 按照【**可用区**】进行过滤。可用区形如：ap-guangzhou-1。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 可选项：[可用区列表](https://cloud.tencent.com/document/product/213/6091)
        ///
        /// - **instance-family**
        ///
        /// 按照【**实例机型系列**】进行过滤。实例机型系列形如：S1、I1、M1等。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - **instance-type**
        ///
        /// 按照【**实例机型**】进行过滤。不同实例机型指定了不同的资源规格，具体取值可通过调用接口 [DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/product/213/15749) 来获得最新的规格表或参见[实例类型](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则默认机型为S1.SMALL1。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - **instance-charge-type**
        ///
        /// 按照【**实例计费模式**】进行过滤。(PREPAID：表示预付费，即包年包月 | POSTPAID_BY_HOUR：表示后付费，即按量计费 )
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - **sort-keys**
        ///
        /// 按关键字进行排序,格式为排序字段加排序方式，中间用冒号分隔。 例如： 按cpu数逆序排序 "cpu:desc", 按mem大小顺序排序 "mem:asc"
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeZoneInstanceConfigInfos返回参数结构体
    public struct DescribeZoneInstanceConfigInfosResponse: TCResponse {
        /// 可用区机型配置列表。
        public let instanceTypeQuotaSet: [InstanceTypeQuotaItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceTypeQuotaSet = "InstanceTypeQuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 获取可用区机型配置信息
    ///
    /// 本接口(DescribeZoneInstanceConfigInfos) 获取可用区的机型信息。
    @inlinable
    public func describeZoneInstanceConfigInfos(_ input: DescribeZoneInstanceConfigInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneInstanceConfigInfosResponse> {
        self.client.execute(action: "DescribeZoneInstanceConfigInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取可用区机型配置信息
    ///
    /// 本接口(DescribeZoneInstanceConfigInfos) 获取可用区的机型信息。
    @inlinable
    public func describeZoneInstanceConfigInfos(_ input: DescribeZoneInstanceConfigInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneInstanceConfigInfosResponse {
        try await self.client.execute(action: "DescribeZoneInstanceConfigInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取可用区机型配置信息
    ///
    /// 本接口(DescribeZoneInstanceConfigInfos) 获取可用区的机型信息。
    @inlinable
    public func describeZoneInstanceConfigInfos(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneInstanceConfigInfosResponse> {
        self.describeZoneInstanceConfigInfos(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取可用区机型配置信息
    ///
    /// 本接口(DescribeZoneInstanceConfigInfos) 获取可用区的机型信息。
    @inlinable
    public func describeZoneInstanceConfigInfos(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneInstanceConfigInfosResponse {
        try await self.describeZoneInstanceConfigInfos(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
