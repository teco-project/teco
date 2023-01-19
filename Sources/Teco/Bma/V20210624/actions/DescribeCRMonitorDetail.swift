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

extension Bma {
    /// DescribeCRMonitorDetail请求参数结构体
    public struct DescribeCRMonitorDetailRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        /// 页数
        public let pageSize: Int64?

        /// 页码
        public let pageNumber: Int64?

        /// 过滤参数
        public let filters: [Filter]?

        public init(workId: Int64, pageSize: Int64? = nil, pageNumber: Int64? = nil, filters: [Filter]? = nil) {
            self.workId = workId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case filters = "Filters"
        }
    }

    /// DescribeCRMonitorDetail返回参数结构体
    public struct DescribeCRMonitorDetailResponse: TCResponseModel {
        /// 侵权数组
        public let torts: [MonitorTort]

        /// 总记录数
        public let totalCount: Int64

        /// 监测状态
        public let monitorStatus: Int64

        /// 导出地址
        public let exportURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case torts = "Torts"
            case totalCount = "TotalCount"
            case monitorStatus = "MonitorStatus"
            case exportURL = "ExportURL"
            case requestId = "RequestId"
        }
    }

    /// 查询作品监测详情
    ///
    /// 版权保护-查询作品监测详情接口
    @inlinable
    public func describeCRMonitorDetail(_ input: DescribeCRMonitorDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRMonitorDetailResponse> {
        self.client.execute(action: "DescribeCRMonitorDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询作品监测详情
    ///
    /// 版权保护-查询作品监测详情接口
    @inlinable
    public func describeCRMonitorDetail(_ input: DescribeCRMonitorDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRMonitorDetailResponse {
        try await self.client.execute(action: "DescribeCRMonitorDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询作品监测详情
    ///
    /// 版权保护-查询作品监测详情接口
    @inlinable
    public func describeCRMonitorDetail(workId: Int64, pageSize: Int64? = nil, pageNumber: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRMonitorDetailResponse> {
        self.describeCRMonitorDetail(DescribeCRMonitorDetailRequest(workId: workId, pageSize: pageSize, pageNumber: pageNumber, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询作品监测详情
    ///
    /// 版权保护-查询作品监测详情接口
    @inlinable
    public func describeCRMonitorDetail(workId: Int64, pageSize: Int64? = nil, pageNumber: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRMonitorDetailResponse {
        try await self.describeCRMonitorDetail(DescribeCRMonitorDetailRequest(workId: workId, pageSize: pageSize, pageNumber: pageNumber, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
