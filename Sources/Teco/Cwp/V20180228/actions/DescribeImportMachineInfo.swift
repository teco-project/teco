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

extension Cwp {
    /// DescribeImportMachineInfo请求参数结构体
    public struct DescribeImportMachineInfoRequest: TCRequest {
        /// 服务器内网IP（默认）/ 服务器名称 / 服务器ID 数组 (最大 1000条)
        public let machineList: [String]

        /// 批量导入的数据类型：Ip、Name、Id 三选一
        public let importType: String

        /// 该参数已作废.
        public let isQueryProMachine: Bool?

        /// 过滤条件：
        /// - Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版 | Flagship：旗舰版 | ProtectedMachines：专业版+旗舰版） | BASIC_PROPOST_GENERAL_DISCOUNT：普惠版+专业版按量计费+基础版主机 | UnFlagship：专业版预付费+专业版后付费+基础版+普惠版
        public let filters: [Filters]?

        public init(machineList: [String], importType: String, isQueryProMachine: Bool? = nil, filters: [Filters]? = nil) {
            self.machineList = machineList
            self.importType = importType
            self.isQueryProMachine = isQueryProMachine
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case machineList = "MachineList"
            case importType = "ImportType"
            case isQueryProMachine = "IsQueryProMachine"
            case filters = "Filters"
        }
    }

    /// DescribeImportMachineInfo返回参数结构体
    public struct DescribeImportMachineInfoResponse: TCResponse {
        /// 有效的机器信息列表：机器名称、机器公网/内网ip、机器标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let effectiveMachineInfoList: [EffectiveMachineInfo]?

        /// 用户批量导入失败的机器列表（例如机器不存在等...）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let invalidMachineList: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case effectiveMachineInfoList = "EffectiveMachineInfoList"
            case invalidMachineList = "InvalidMachineList"
            case requestId = "RequestId"
        }
    }

    /// 查询批量导入机器信息
    @inlinable
    public func describeImportMachineInfo(_ input: DescribeImportMachineInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImportMachineInfoResponse> {
        self.client.execute(action: "DescribeImportMachineInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询批量导入机器信息
    @inlinable
    public func describeImportMachineInfo(_ input: DescribeImportMachineInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImportMachineInfoResponse {
        try await self.client.execute(action: "DescribeImportMachineInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询批量导入机器信息
    @inlinable
    public func describeImportMachineInfo(machineList: [String], importType: String, isQueryProMachine: Bool? = nil, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImportMachineInfoResponse> {
        self.describeImportMachineInfo(.init(machineList: machineList, importType: importType, isQueryProMachine: isQueryProMachine, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询批量导入机器信息
    @inlinable
    public func describeImportMachineInfo(machineList: [String], importType: String, isQueryProMachine: Bool? = nil, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImportMachineInfoResponse {
        try await self.describeImportMachineInfo(.init(machineList: machineList, importType: importType, isQueryProMachine: isQueryProMachine, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
