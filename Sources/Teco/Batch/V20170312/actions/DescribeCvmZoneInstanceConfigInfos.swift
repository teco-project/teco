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

extension Batch {
    /// DescribeCvmZoneInstanceConfigInfos请求参数结构体
    public struct DescribeCvmZoneInstanceConfigInfosRequest: TCRequest {
        /// 过滤条件。
        /// - zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。
        /// - instance-family String - 是否必填：否 -（过滤条件）按照机型系列过滤。实例机型系列形如：S1、I1、M1等。
        /// - instance-type - String - 是否必填：否 - （过滤条件）按照机型过滤。
        /// - instance-charge-type - String - 是否必填：否 -（过滤条件）按照实例计费模式过滤。 ( POSTPAID_BY_HOUR：表示后付费，即按量计费机型 | SPOTPAID：表示竞价付费机型。 )
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeCvmZoneInstanceConfigInfos返回参数结构体
    public struct DescribeCvmZoneInstanceConfigInfosResponse: TCResponse {
        /// 可用区机型配置列表。
        public let instanceTypeQuotaSet: [InstanceTypeQuotaItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceTypeQuotaSet = "InstanceTypeQuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 获取批量计算可用区机型配置信息
    @inlinable
    public func describeCvmZoneInstanceConfigInfos(_ input: DescribeCvmZoneInstanceConfigInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCvmZoneInstanceConfigInfosResponse> {
        self.client.execute(action: "DescribeCvmZoneInstanceConfigInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取批量计算可用区机型配置信息
    @inlinable
    public func describeCvmZoneInstanceConfigInfos(_ input: DescribeCvmZoneInstanceConfigInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCvmZoneInstanceConfigInfosResponse {
        try await self.client.execute(action: "DescribeCvmZoneInstanceConfigInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取批量计算可用区机型配置信息
    @inlinable
    public func describeCvmZoneInstanceConfigInfos(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCvmZoneInstanceConfigInfosResponse> {
        self.describeCvmZoneInstanceConfigInfos(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取批量计算可用区机型配置信息
    @inlinable
    public func describeCvmZoneInstanceConfigInfos(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCvmZoneInstanceConfigInfosResponse {
        try await self.describeCvmZoneInstanceConfigInfos(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
