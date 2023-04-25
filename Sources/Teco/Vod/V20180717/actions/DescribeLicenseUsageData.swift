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

extension Vod {
    /// DescribeLicenseUsageData请求参数结构体
    public struct DescribeLicenseUsageDataRequest: TCRequestModel {
        /// 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        public let startTime: String

        /// 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        public let endTime: String

        /// License 类型，默认为 DRM 。目前支持的 License 类型包括：
        /// <li> DRM: DRM 加密播放 License</li>
        public let licenseType: String?

        /// 点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(startTime: String, endTime: String, licenseType: String? = nil, subAppId: UInt64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.licenseType = licenseType
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case licenseType = "LicenseType"
            case subAppId = "SubAppId"
        }
    }

    /// DescribeLicenseUsageData返回参数结构体
    public struct DescribeLicenseUsageDataResponse: TCResponseModel {
        /// License 查询次数统计数据，展示所查询 License 次数的明细数据。
        public let licenseUsageDataSet: [LicenseUsageDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case licenseUsageDataSet = "LicenseUsageDataSet"
            case requestId = "RequestId"
        }
    }

    /// 查询 License 请求数统计数据
    ///
    /// 该接口返回查询时间范围内每天 License 请求次数信息。
    ///    1. 可以查询最近365天内的 License 请求次数统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeLicenseUsageData(_ input: DescribeLicenseUsageDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseUsageDataResponse> {
        self.client.execute(action: "DescribeLicenseUsageData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 License 请求数统计数据
    ///
    /// 该接口返回查询时间范围内每天 License 请求次数信息。
    ///    1. 可以查询最近365天内的 License 请求次数统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeLicenseUsageData(_ input: DescribeLicenseUsageDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseUsageDataResponse {
        try await self.client.execute(action: "DescribeLicenseUsageData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 License 请求数统计数据
    ///
    /// 该接口返回查询时间范围内每天 License 请求次数信息。
    ///    1. 可以查询最近365天内的 License 请求次数统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeLicenseUsageData(startTime: String, endTime: String, licenseType: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLicenseUsageDataResponse> {
        self.describeLicenseUsageData(.init(startTime: startTime, endTime: endTime, licenseType: licenseType, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 License 请求数统计数据
    ///
    /// 该接口返回查询时间范围内每天 License 请求次数信息。
    ///    1. 可以查询最近365天内的 License 请求次数统计数据。
    ///    2. 查询时间跨度不超过90天。
    ///    3. 查询时间跨度超过1天的，返回以天为粒度的数据，否则，返回以5分钟为粒度的数据。
    @inlinable
    public func describeLicenseUsageData(startTime: String, endTime: String, licenseType: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLicenseUsageDataResponse {
        try await self.describeLicenseUsageData(.init(startTime: startTime, endTime: endTime, licenseType: licenseType, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
