//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vod {
    /// DescribeStorageDetails请求参数结构体
    public struct DescribeStorageDetailsRequest: TCRequestModel {
        /// 起始时间，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#52)。
        public let startTime: String

        /// 结束时间，需大于开始日期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#52)。
        public let endTime: String

        /// <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        /// 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计。</b>
        public let subAppId: UInt64?

        /// 统计时间粒度，有效值：
        /// <li>Minute：以5分钟为粒度。</li>
        /// <li>Day：以天为粒度。</li>
        /// 默认按时间跨度决定，小于等于1天以5分钟为粒度，大于1天则以天为粒度。
        public let interval: String?

        /// 查询的存储类型，有效值：
        /// <li>TotalStorage：存储总量，标准、低频、归档和深度归档存储量之和，不含提前删除量。</li>
        /// <li>StandardStorage：标准存储。</li>
        /// <li>InfrequentStorage：低频存储。</li>
        /// <li>ArchiveStorage：归档存储。</li>
        /// <li>DeepArchiveStorage：深度归档存储。</li>
        /// <li>DeletedInfrequentStorage：低频存储提前删除量。</li>
        /// <li>DeletedArchiveStorage：归档提前删除量。</li>
        /// <li>DeletedDeepArchiveStorage：深度归档提前删除量。
        /// <li>ArchiveStandardRetrieval：归档标准取回量。</li>
        /// <li>ArchiveExpeditedRetrieval：归档快速取回量。</li>
        /// <li>ArchiveBulkRetrieval：归档批量取回量。</li>
        /// <li>DeepArchiveStandardRetrieval：深度归档标准取回量。</li>
        /// <li>DeepArchiveBulkRetrieval：深度归档批量取回量。</li>
        /// 默认值为 TotalStorage。
        public let storageType: String?

        /// 查询的存储区域，有效值：
        /// <li>Chinese Mainland：中国境内（不包含港澳台）。</li>
        /// <li>Outside Chinese Mainland：中国境外。</li>
        /// 默认值为 Chinese Mainland。
        public let area: String?

        public init(startTime: String, endTime: String, subAppId: UInt64? = nil, interval: String? = nil, storageType: String? = nil, area: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.subAppId = subAppId
            self.interval = interval
            self.storageType = storageType
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subAppId = "SubAppId"
            case interval = "Interval"
            case storageType = "StorageType"
            case area = "Area"
        }
    }

    /// DescribeStorageDetails返回参数结构体
    public struct DescribeStorageDetailsResponse: TCResponseModel {
        /// 存储统计数据，每5分钟或每天一条数据。
        public let data: [StatDataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询存储空间数据详情
    ///
    /// 该接口返回查询时间范围内使用的点播存储空间，单位：字节。
    ///     1. 可以查询最近365天内的存储空间数据；
    ///     2. 查询时间跨度不超过90天；
    ///     3. 分钟粒度查询跨度不超过7天；
    @inlinable
    public func describeStorageDetails(_ input: DescribeStorageDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStorageDetailsResponse > {
        self.client.execute(action: "DescribeStorageDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询存储空间数据详情
    ///
    /// 该接口返回查询时间范围内使用的点播存储空间，单位：字节。
    ///     1. 可以查询最近365天内的存储空间数据；
    ///     2. 查询时间跨度不超过90天；
    ///     3. 分钟粒度查询跨度不超过7天；
    @inlinable
    public func describeStorageDetails(_ input: DescribeStorageDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStorageDetailsResponse {
        try await self.client.execute(action: "DescribeStorageDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询存储空间数据详情
    ///
    /// 该接口返回查询时间范围内使用的点播存储空间，单位：字节。
    ///     1. 可以查询最近365天内的存储空间数据；
    ///     2. 查询时间跨度不超过90天；
    ///     3. 分钟粒度查询跨度不超过7天；
    @inlinable
    public func describeStorageDetails(startTime: String, endTime: String, subAppId: UInt64? = nil, interval: String? = nil, storageType: String? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStorageDetailsResponse > {
        self.describeStorageDetails(DescribeStorageDetailsRequest(startTime: startTime, endTime: endTime, subAppId: subAppId, interval: interval, storageType: storageType, area: area), logger: logger, on: eventLoop)
    }

    /// 查询存储空间数据详情
    ///
    /// 该接口返回查询时间范围内使用的点播存储空间，单位：字节。
    ///     1. 可以查询最近365天内的存储空间数据；
    ///     2. 查询时间跨度不超过90天；
    ///     3. 分钟粒度查询跨度不超过7天；
    @inlinable
    public func describeStorageDetails(startTime: String, endTime: String, subAppId: UInt64? = nil, interval: String? = nil, storageType: String? = nil, area: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStorageDetailsResponse {
        try await self.describeStorageDetails(DescribeStorageDetailsRequest(startTime: startTime, endTime: endTime, subAppId: subAppId, interval: interval, storageType: storageType, area: area), logger: logger, on: eventLoop)
    }
}
