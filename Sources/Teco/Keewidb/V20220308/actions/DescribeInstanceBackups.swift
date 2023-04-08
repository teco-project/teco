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

extension Keewidb {
    /// DescribeInstanceBackups请求参数结构体
    public struct DescribeInstanceBackupsRequest: TCRequestModel {
        /// 待操作的实例ID，可通过 DescribeInstance 接口返回值中的 InstanceId 获取。
        public let instanceId: String

        /// 每页输出的备份列表大小，即每页输出的备份文件的数量，默认值20，取值范围为[1,100]。
        public let limit: Int64?

        /// 备份列表分页偏移量，取Limit整数倍。
        /// 计算公式为offset=limit*(页码-1)。例如 limit=10，第1页offset就为0，第2页offset就为10，依次类推。
        public let offset: Int64?

        /// 查询备份文件的开始时间，格式如：2017-02-08 16:46:34。查询实例在 [BeginTime, EndTime] 时间段内的备份列表。
        public let beginTime: String?

        /// 查询备份文件的结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内的备份列表。
        public let endTime: String?

        /// 备份任务状态。<ul><li>1：备份在流程中。</li><li>2：备份正常。</li><li>3：备份转RDB文件处理中。</li><li>4：已完成RDB转换。</li><li>-1：备份已过期。</li><li>-2：备份已删除。</li></ul>
        public let status: [Int64]?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, status: [Int64]? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.beginTime = beginTime
            self.endTime = endTime
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case status = "Status"
        }
    }

    /// DescribeInstanceBackups返回参数结构体
    public struct DescribeInstanceBackupsResponse: TCResponseModel {
        /// 备份文件总数。
        public let totalCount: Int64

        /// 废弃字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupSet: [BinlogInfo]?

        /// 实例备份信息列表。
        public let backupRecord: [BackupInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupSet = "BackupSet"
            case backupRecord = "BackupRecord"
            case requestId = "RequestId"
        }
    }

    /// 查询实例全量备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例全量备份列表。
    @inlinable
    public func describeInstanceBackups(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceBackupsResponse> {
        self.client.execute(action: "DescribeInstanceBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例全量备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例全量备份列表。
    @inlinable
    public func describeInstanceBackups(_ input: DescribeInstanceBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBackupsResponse {
        try await self.client.execute(action: "DescribeInstanceBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例全量备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例全量备份列表。
    @inlinable
    public func describeInstanceBackups(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, status: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceBackupsResponse> {
        self.describeInstanceBackups(.init(instanceId: instanceId, limit: limit, offset: offset, beginTime: beginTime, endTime: endTime, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例全量备份列表
    ///
    /// 本接口（DescribeInstanceBackups）用于查询实例全量备份列表。
    @inlinable
    public func describeInstanceBackups(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, beginTime: String? = nil, endTime: String? = nil, status: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBackupsResponse {
        try await self.describeInstanceBackups(.init(instanceId: instanceId, limit: limit, offset: offset, beginTime: beginTime, endTime: endTime, status: status), region: region, logger: logger, on: eventLoop)
    }
}
