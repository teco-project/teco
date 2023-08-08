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

extension Cfw {
    /// DescribeLogs请求参数结构体
    public struct DescribeLogsRequest: TCRequestModel {
        /// 日志类型标识
        /// 流量日志：互联网边界防火墙netflow_border，NAT边界防火墙netflow_nat，VPC间防火墙vpcnetflow，内网流量日志netflow_fl
        /// 入侵防御日志rule_threatinfo
        /// 访问控制日志：互联网边界规则rule_acl，NAT边界规则rule_acl，内网间规则rule_vpcacl，企业安全组rule_sg
        /// 操作日志：防火墙开关-开关操作operate_switch，防火墙开关-实例配置operate_instance，资产中心操作operate_assetgroup，访问控制操作operate_acl，零信任防护操作operate_identity，入侵防御操作-入侵防御operate_ids，入侵防御操作-安全基线operate_baseline，常用工具操作operate_tool，网络蜜罐操作operate_honeypot，日志投递操作operate_logdelivery，通用设置操作operate_logstorage，登录日志operate_login
        public let index: String

        /// 每页条数，最大支持2000
        public let limit: Int64

        /// 偏移值，最大支持60000
        public let offset: Int64

        /// 筛选开始时间
        public let startTime: String

        /// 筛选结束时间
        public let endTime: String

        /// 过滤条件组合，各数组元素间为AND关系，查询字段名Name参考文档https://cloud.tencent.com/document/product/1132/87894，数值类型字段不支持模糊匹配
        public let filters: [CommonFilter]?

        public init(index: String, limit: Int64, offset: Int64, startTime: String, endTime: String, filters: [CommonFilter]? = nil) {
            self.index = index
            self.limit = limit
            self.offset = offset
            self.startTime = startTime
            self.endTime = endTime
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case index = "Index"
            case limit = "Limit"
            case offset = "Offset"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case filters = "Filters"
        }
    }

    /// DescribeLogs返回参数结构体
    public struct DescribeLogsResponse: TCResponseModel {
        /// 日志列表
        public let data: String

        /// 总条数
        public let total: Int64

        /// 返回状态码 0 成功 非0不成功
        public let returnCode: Int64

        /// 返回信息  success 成功 其他 不成功
        public let returnMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }
    }

    /// 日志审计日志查询
    @inlinable
    public func describeLogs(_ input: DescribeLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogsResponse> {
        self.client.execute(action: "DescribeLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 日志审计日志查询
    @inlinable
    public func describeLogs(_ input: DescribeLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogsResponse {
        try await self.client.execute(action: "DescribeLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 日志审计日志查询
    @inlinable
    public func describeLogs(index: String, limit: Int64, offset: Int64, startTime: String, endTime: String, filters: [CommonFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogsResponse> {
        self.describeLogs(.init(index: index, limit: limit, offset: offset, startTime: startTime, endTime: endTime, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 日志审计日志查询
    @inlinable
    public func describeLogs(index: String, limit: Int64, offset: Int64, startTime: String, endTime: String, filters: [CommonFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogsResponse {
        try await self.describeLogs(.init(index: index, limit: limit, offset: offset, startTime: startTime, endTime: endTime, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
