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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Yunjing {
    /// DescribeWeeklyReportInfo请求参数结构体
    public struct DescribeWeeklyReportInfoRequest: TCRequest {
        /// 专业周报开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$beginDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        public init(beginDate: Date) {
            self._beginDate = .init(wrappedValue: beginDate)
        }

        enum CodingKeys: String, CodingKey {
            case beginDate = "BeginDate"
        }
    }

    /// DescribeWeeklyReportInfo返回参数结构体
    public struct DescribeWeeklyReportInfoResponse: TCResponse {
        /// 账号所属公司或个人名称。
        public let companyName: String

        /// 机器总数。
        public let machineNum: UInt64

        /// 云镜客户端在线数。
        public let onlineMachineNum: UInt64

        /// 云镜客户端离线数。
        public let offlineMachineNum: UInt64

        /// 开通云镜专业版数量。
        public let proVersionMachineNum: UInt64

        /// 周报开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$beginDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var beginDate: Date

        /// 周报结束时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endDate`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 安全等级。
        /// - HIGH：高
        /// - MIDDLE：中
        /// - LOW：低
        public let level: String

        /// 木马记录数。
        public let malwareNum: UInt64

        /// 异地登录数。
        public let nonlocalLoginNum: UInt64

        /// 密码破解成功数。
        public let bruteAttackSuccessNum: UInt64

        /// 漏洞数。
        public let vulNum: UInt64

        /// 导出文件下载地址。
        public let downloadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyName = "CompanyName"
            case machineNum = "MachineNum"
            case onlineMachineNum = "OnlineMachineNum"
            case offlineMachineNum = "OfflineMachineNum"
            case proVersionMachineNum = "ProVersionMachineNum"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case level = "Level"
            case malwareNum = "MalwareNum"
            case nonlocalLoginNum = "NonlocalLoginNum"
            case bruteAttackSuccessNum = "BruteAttackSuccessNum"
            case vulNum = "VulNum"
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取专业周报详情
    ///
    /// 本接口 (DescribeWeeklyReportInfo) 用于获取专业周报详情数据。
    @inlinable
    public func describeWeeklyReportInfo(_ input: DescribeWeeklyReportInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportInfoResponse> {
        self.client.execute(action: "DescribeWeeklyReportInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业周报详情
    ///
    /// 本接口 (DescribeWeeklyReportInfo) 用于获取专业周报详情数据。
    @inlinable
    public func describeWeeklyReportInfo(_ input: DescribeWeeklyReportInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportInfoResponse {
        try await self.client.execute(action: "DescribeWeeklyReportInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专业周报详情
    ///
    /// 本接口 (DescribeWeeklyReportInfo) 用于获取专业周报详情数据。
    @inlinable
    public func describeWeeklyReportInfo(beginDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWeeklyReportInfoResponse> {
        self.describeWeeklyReportInfo(.init(beginDate: beginDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取专业周报详情
    ///
    /// 本接口 (DescribeWeeklyReportInfo) 用于获取专业周报详情数据。
    @inlinable
    public func describeWeeklyReportInfo(beginDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWeeklyReportInfoResponse {
        try await self.describeWeeklyReportInfo(.init(beginDate: beginDate), region: region, logger: logger, on: eventLoop)
    }
}
