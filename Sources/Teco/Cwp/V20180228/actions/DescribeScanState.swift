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

extension Cwp {
    /// DescribeScanState请求参数结构体
    public struct DescribeScanStateRequest: TCRequestModel {
        /// 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        public let moduleType: String

        /// 过滤参数;
        /// <li>StrategyId 基线策略ID ,仅ModuleType 为 Baseline 时需要</li>
        public let filters: [Filters]?

        public init(moduleType: String, filters: [Filters]? = nil) {
            self.moduleType = moduleType
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case moduleType = "ModuleType"
            case filters = "Filters"
        }
    }

    /// DescribeScanState返回参数结构体
    public struct DescribeScanStateResponse: TCResponseModel {
        /// 0 从未扫描过、 1 扫描中、 2扫描完成、 3停止中、 4停止完成
        public let scanState: UInt64

        /// 扫描进度
        public let schedule: UInt64

        /// 任务Id
        public let taskId: UInt64

        /// 任务扫描的漏洞id
        public let vulId: [UInt64]

        /// 0一键检测 1定时检测
        public let type: UInt64

        /// 开始扫描时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanBeginTime: String?

        /// 扫描漏洞数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskEventCount: UInt64?

        /// 扫描结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanEndTime: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scanState = "ScanState"
            case schedule = "Schedule"
            case taskId = "TaskId"
            case vulId = "VulId"
            case type = "Type"
            case scanBeginTime = "ScanBeginTime"
            case riskEventCount = "RiskEventCount"
            case scanEndTime = "ScanEndTime"
            case requestId = "RequestId"
        }
    }

    /// 查询扫描状态
    ///
    /// DescribeScanState 该接口能查询对应模块正在进行的扫描任务状态
    @inlinable
    public func describeScanState(_ input: DescribeScanStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanStateResponse> {
        self.client.execute(action: "DescribeScanState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询扫描状态
    ///
    /// DescribeScanState 该接口能查询对应模块正在进行的扫描任务状态
    @inlinable
    public func describeScanState(_ input: DescribeScanStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanStateResponse {
        try await self.client.execute(action: "DescribeScanState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询扫描状态
    ///
    /// DescribeScanState 该接口能查询对应模块正在进行的扫描任务状态
    @inlinable
    public func describeScanState(moduleType: String, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanStateResponse> {
        self.describeScanState(DescribeScanStateRequest(moduleType: moduleType, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫描状态
    ///
    /// DescribeScanState 该接口能查询对应模块正在进行的扫描任务状态
    @inlinable
    public func describeScanState(moduleType: String, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanStateResponse {
        try await self.describeScanState(DescribeScanStateRequest(moduleType: moduleType, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
