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

import TecoPaginationHelpers

extension Dts {
    /// DescribeMigrationJobs请求参数结构体
    public struct DescribeMigrationJobsRequest: TCPaginatedRequest {
        /// 数据迁移任务ID，如：dts-amm1jw5q
        public let jobId: String?

        /// 数据迁移任务名称
        public let jobName: String?

        /// 数据迁移任务状态，可取值包括：created(创建完成)、checking(校验中)、checkPass(校验通过)、checkNotPass(校验不通过)、readyRun(准备运行)、running(任务运行中)、readyComplete(准备完成)、success(任务成功)、failed(任务失败)、stopping(中止中)、completing(完成中)
        public let status: [String]?

        /// 源实例ID，格式如：cdb-c1nl9rpv
        public let srcInstanceId: String?

        /// 源实例地域，如：ap-guangzhou
        public let srcRegion: String?

        /// 源实例数据库类型，如：sqlserver,mysql,mongodb,redis,tendis,keewidb,clickhouse,cynosdbmysql,percona,tdsqlpercona,mariadb,tdsqlmysql,postgresql
        public let srcDatabaseType: [String]?

        /// 源实例接入类型，值包括：extranet(外网)、vpncloud(云vpn接入的实例)、dcg(专线接入的实例)、ccn(云联网接入的实例)、cdb(云上cdb实例)、cvm(cvm自建实例)
        public let srcAccessType: [String]?

        /// 目标实例ID，格式如：cdb-c1nl9rpv
        public let dstInstanceId: String?

        /// 目标实例地域，如：ap-guangzhou
        public let dstRegion: String?

        /// 目标源实例数据库类型，如：sqlserver,mysql,mongodb,redis,tendis,keewidb,clickhouse,cynosdbmysql,percona,tdsqlpercona,mariadb,tdsqlmysql,postgresql
        public let dstDatabaseType: [String]?

        /// 目标实例接入类型，值包括：extranet(外网)、vpncloud(云vpn接入的实例)、dcg(专线接入的实例)、ccn(云联网接入的实例)、cdb(云上cdb实例)、cvm(cvm自建实例)
        public let dstAccessType: [String]?

        /// 任务运行模式，值包括：immediate(立即运行)，timed(定时运行)
        public let runMode: String?

        /// 排序方式，可能取值为asc、desc，默认按照创建时间倒序
        public let orderSeq: String?

        /// 返回实例数量，默认20，有效区间[1,100]
        public let limit: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 标签过滤
        public let tagFilters: [TagFilter]?

        public init(jobId: String? = nil, jobName: String? = nil, status: [String]? = nil, srcInstanceId: String? = nil, srcRegion: String? = nil, srcDatabaseType: [String]? = nil, srcAccessType: [String]? = nil, dstInstanceId: String? = nil, dstRegion: String? = nil, dstDatabaseType: [String]? = nil, dstAccessType: [String]? = nil, runMode: String? = nil, orderSeq: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, tagFilters: [TagFilter]? = nil) {
            self.jobId = jobId
            self.jobName = jobName
            self.status = status
            self.srcInstanceId = srcInstanceId
            self.srcRegion = srcRegion
            self.srcDatabaseType = srcDatabaseType
            self.srcAccessType = srcAccessType
            self.dstInstanceId = dstInstanceId
            self.dstRegion = dstRegion
            self.dstDatabaseType = dstDatabaseType
            self.dstAccessType = dstAccessType
            self.runMode = runMode
            self.orderSeq = orderSeq
            self.limit = limit
            self.offset = offset
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
            case status = "Status"
            case srcInstanceId = "SrcInstanceId"
            case srcRegion = "SrcRegion"
            case srcDatabaseType = "SrcDatabaseType"
            case srcAccessType = "SrcAccessType"
            case dstInstanceId = "DstInstanceId"
            case dstRegion = "DstRegion"
            case dstDatabaseType = "DstDatabaseType"
            case dstAccessType = "DstAccessType"
            case runMode = "RunMode"
            case orderSeq = "OrderSeq"
            case limit = "Limit"
            case offset = "Offset"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeMigrationJobsResponse) -> DescribeMigrationJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMigrationJobsRequest(jobId: self.jobId, jobName: self.jobName, status: self.status, srcInstanceId: self.srcInstanceId, srcRegion: self.srcRegion, srcDatabaseType: self.srcDatabaseType, srcAccessType: self.srcAccessType, dstInstanceId: self.dstInstanceId, dstRegion: self.dstRegion, dstDatabaseType: self.dstDatabaseType, dstAccessType: self.dstAccessType, runMode: self.runMode, orderSeq: self.orderSeq, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), tagFilters: self.tagFilters)
        }
    }

    /// DescribeMigrationJobs返回参数结构体
    public struct DescribeMigrationJobsResponse: TCPaginatedResponse {
        /// 迁移任务数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 迁移任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobList: [JobItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case jobList = "JobList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [JobItem] {
            self.jobList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobs(_ input: DescribeMigrationJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationJobsResponse> {
        self.client.execute(action: "DescribeMigrationJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobs(_ input: DescribeMigrationJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationJobsResponse {
        try await self.client.execute(action: "DescribeMigrationJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobs(jobId: String? = nil, jobName: String? = nil, status: [String]? = nil, srcInstanceId: String? = nil, srcRegion: String? = nil, srcDatabaseType: [String]? = nil, srcAccessType: [String]? = nil, dstInstanceId: String? = nil, dstRegion: String? = nil, dstDatabaseType: [String]? = nil, dstAccessType: [String]? = nil, runMode: String? = nil, orderSeq: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrationJobsResponse> {
        let input = DescribeMigrationJobsRequest(jobId: jobId, jobName: jobName, status: status, srcInstanceId: srcInstanceId, srcRegion: srcRegion, srcDatabaseType: srcDatabaseType, srcAccessType: srcAccessType, dstInstanceId: dstInstanceId, dstRegion: dstRegion, dstDatabaseType: dstDatabaseType, dstAccessType: dstAccessType, runMode: runMode, orderSeq: orderSeq, limit: limit, offset: offset, tagFilters: tagFilters)
        return self.client.execute(action: "DescribeMigrationJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobs(jobId: String? = nil, jobName: String? = nil, status: [String]? = nil, srcInstanceId: String? = nil, srcRegion: String? = nil, srcDatabaseType: [String]? = nil, srcAccessType: [String]? = nil, dstInstanceId: String? = nil, dstRegion: String? = nil, dstDatabaseType: [String]? = nil, dstAccessType: [String]? = nil, runMode: String? = nil, orderSeq: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrationJobsResponse {
        let input = DescribeMigrationJobsRequest(jobId: jobId, jobName: jobName, status: status, srcInstanceId: srcInstanceId, srcRegion: srcRegion, srcDatabaseType: srcDatabaseType, srcAccessType: srcAccessType, dstInstanceId: dstInstanceId, dstRegion: dstRegion, dstDatabaseType: dstDatabaseType, dstAccessType: dstAccessType, runMode: runMode, orderSeq: orderSeq, limit: limit, offset: offset, tagFilters: tagFilters)
        return try await self.client.execute(action: "DescribeMigrationJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobsPaginated(_ input: DescribeMigrationJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [JobItem])> {
        self.client.paginate(input: input, region: region, command: self.describeMigrationJobs, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobsPaginated(_ input: DescribeMigrationJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMigrationJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMigrationJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务列表
    @inlinable
    public func describeMigrationJobsPaginator(_ input: DescribeMigrationJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeMigrationJobsRequest, DescribeMigrationJobsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeMigrationJobsRequest, DescribeMigrationJobsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeMigrationJobsRequest, DescribeMigrationJobsResponse>.ResultSequence(input: input, region: region, command: self.describeMigrationJobs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeMigrationJobsRequest, DescribeMigrationJobsResponse>.ResponseSequence(input: input, region: region, command: self.describeMigrationJobs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
