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

extension Cbs {
    /// DescribeDiskBackups请求参数结构体
    public struct DescribeDiskBackupsRequest: TCRequestModel {
        /// 要查询备份点的ID列表。参数不支持同时指定 DiskBackupIds 和 Filters。
        public let diskBackupIds: [String]?

        /// 过滤条件，参数不支持同时指定 DiskBackupIds 和 Filters。过滤条件：<br><li>disk-backup-id - Array of String - 是否必填：否 -（过滤条件）按照备份点的ID过滤。备份点ID形如：dbp-11112222。
        /// <br><li>disk-id - Array of String - 是否必填：否 -（过滤条件）按照创建备份点的云硬盘ID过滤。
        /// <br><li>disk-usage - Array of String - 是否必填：否 -（过滤条件）按创建备份点的云硬盘类型过滤。 (SYSTEM_DISK：代表系统盘 | DATA_DISK：代表数据盘。)
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        public let limit: UInt64?

        /// 输出云硬盘备份点列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        public let order: String?

        /// 云硬盘备份点列表排序的依据字段。取值范围：<br><li>CREATE_TIME：依据云硬盘备份点的创建时间排序<br>默认按创建时间排序。
        public let orderField: String?

        public init(diskBackupIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil) {
            self.diskBackupIds = diskBackupIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.orderField = orderField
        }

        enum CodingKeys: String, CodingKey {
            case diskBackupIds = "DiskBackupIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case orderField = "OrderField"
        }
    }

    /// DescribeDiskBackups返回参数结构体
    public struct DescribeDiskBackupsResponse: TCResponseModel {
        /// 符合条件的云硬盘备份点数量。
        public let totalCount: UInt64

        /// 云硬盘备份点的详细信息列表。
        public let diskBackupSet: [DiskBackup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case diskBackupSet = "DiskBackupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询备份点列表
    ///
    /// 本接口（DescribeDiskBackups）用于查询备份点的详细信息。
    ///
    /// 根据备份点ID、创建备份点的云硬盘ID、创建备份点的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器Filter。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的备份点列表。
    @inlinable
    public func describeDiskBackups(_ input: DescribeDiskBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskBackupsResponse> {
        self.client.execute(action: "DescribeDiskBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份点列表
    ///
    /// 本接口（DescribeDiskBackups）用于查询备份点的详细信息。
    ///
    /// 根据备份点ID、创建备份点的云硬盘ID、创建备份点的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器Filter。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的备份点列表。
    @inlinable
    public func describeDiskBackups(_ input: DescribeDiskBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskBackupsResponse {
        try await self.client.execute(action: "DescribeDiskBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份点列表
    ///
    /// 本接口（DescribeDiskBackups）用于查询备份点的详细信息。
    ///
    /// 根据备份点ID、创建备份点的云硬盘ID、创建备份点的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器Filter。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的备份点列表。
    @inlinable
    public func describeDiskBackups(diskBackupIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskBackupsResponse> {
        let input = DescribeDiskBackupsRequest(diskBackupIds: diskBackupIds, filters: filters, offset: offset, limit: limit, order: order, orderField: orderField)
        return self.client.execute(action: "DescribeDiskBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份点列表
    ///
    /// 本接口（DescribeDiskBackups）用于查询备份点的详细信息。
    ///
    /// 根据备份点ID、创建备份点的云硬盘ID、创建备份点的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器Filter。
    /// 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的备份点列表。
    @inlinable
    public func describeDiskBackups(diskBackupIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, orderField: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskBackupsResponse {
        let input = DescribeDiskBackupsRequest(diskBackupIds: diskBackupIds, filters: filters, offset: offset, limit: limit, order: order, orderField: orderField)
        return try await self.client.execute(action: "DescribeDiskBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
