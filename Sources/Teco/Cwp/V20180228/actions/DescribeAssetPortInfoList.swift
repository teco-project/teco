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

extension Cwp {
    /// DescribeAssetPortInfoList请求参数结构体
    public struct DescribeAssetPortInfoListRequest: TCRequestModel {
        /// 查询指定Quuid主机的信息
        public let quuid: String?

        /// 过滤条件。
        /// <li>Port - uint64 - 是否必填：否 - 端口</li>
        /// <li>Ip - String - 是否必填：否 - 绑定IP</li>
        /// <li>ProcessName - String - 是否必填：否 - 监听进程</li>
        /// <li>Pid - uint64 - 是否必填：否 - PID</li>
        /// <li>User - String - 是否必填：否 - 运行用户</li>
        /// <li>Group - String - 是否必填：否 - 所属用户组</li>
        /// <li>Ppid - uint64 - 是否必填：否 - PPID</li>
        /// <li>Proto - string - 是否必填：否 - tcp/udp或“”(空字符串筛选未知状态)</li>
        /// <li>OsType - uint64 - 是否必填：否 - windows/linux</li>
        /// <li>RunTimeStart - String - 是否必填：否 - 运行开始时间</li>
        /// <li>RunTimeEnd - String - 是否必填：否 - 运行结束时间</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序方式：[FirstTime|StartTime]
        public let by: String?

        public init(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.quuid = quuid
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeAssetPortInfoList返回参数结构体
    public struct DescribeAssetPortInfoListResponse: TCResponseModel {
        /// 记录总数
        public let total: UInt64

        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ports: [AssetPortBaseInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case ports = "Ports"
            case requestId = "RequestId"
        }
    }

    /// 获取资产管理端口列表
    @inlinable
    public func describeAssetPortInfoList(_ input: DescribeAssetPortInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetPortInfoListResponse> {
        self.client.execute(action: "DescribeAssetPortInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资产管理端口列表
    @inlinable
    public func describeAssetPortInfoList(_ input: DescribeAssetPortInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPortInfoListResponse {
        try await self.client.execute(action: "DescribeAssetPortInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资产管理端口列表
    @inlinable
    public func describeAssetPortInfoList(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetPortInfoListResponse> {
        self.describeAssetPortInfoList(DescribeAssetPortInfoListRequest(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资产管理端口列表
    @inlinable
    public func describeAssetPortInfoList(quuid: String? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPortInfoListResponse {
        try await self.describeAssetPortInfoList(DescribeAssetPortInfoListRequest(quuid: quuid, filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
