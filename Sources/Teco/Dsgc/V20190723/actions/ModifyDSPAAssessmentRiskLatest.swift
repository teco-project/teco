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

extension Dsgc {
    /// ModifyDSPAAssessmentRiskLatest请求参数结构体
    public struct ModifyDSPAAssessmentRiskLatestRequest: TCRequest {
        /// dspa实例id
        public let dspaId: String

        /// 最新风险项Id
        @available(*, deprecated)
        public let riskLatestTableId: UInt64? = nil

        /// 风险状态（waiting:待处理，processing:处理中，finished:已处理，ignored:已忽略）
        public let status: String

        /// 备注
        public let note: String?

        /// 处置人
        public let processPeople: String?

        /// 批量处理的列表
        public let bathRiskIdList: [Int64]?

        public init(dspaId: String, status: String, note: String? = nil, processPeople: String? = nil, bathRiskIdList: [Int64]? = nil) {
            self.dspaId = dspaId
            self.status = status
            self.note = note
            self.processPeople = processPeople
            self.bathRiskIdList = bathRiskIdList
        }

        @available(*, deprecated, renamed: "init(dspaId:status:note:processPeople:bathRiskIdList:)", message: "'riskLatestTableId' is deprecated in 'ModifyDSPAAssessmentRiskLatestRequest'. Setting this parameter has no effect.")
        public init(dspaId: String, riskLatestTableId: UInt64, status: String, note: String? = nil, processPeople: String? = nil, bathRiskIdList: [Int64]? = nil) {
            self.dspaId = dspaId
            self.status = status
            self.note = note
            self.processPeople = processPeople
            self.bathRiskIdList = bathRiskIdList
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case riskLatestTableId = "RiskLatestTableId"
            case status = "Status"
            case note = "Note"
            case processPeople = "ProcessPeople"
            case bathRiskIdList = "BathRiskIdList"
        }
    }

    /// ModifyDSPAAssessmentRiskLatest返回参数结构体
    public struct ModifyDSPAAssessmentRiskLatestResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改最新评估风险项状态
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLatest(_ input: ModifyDSPAAssessmentRiskLatestRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAAssessmentRiskLatestResponse> {
        self.client.execute(action: "ModifyDSPAAssessmentRiskLatest", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改最新评估风险项状态
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLatest(_ input: ModifyDSPAAssessmentRiskLatestRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAAssessmentRiskLatestResponse {
        try await self.client.execute(action: "ModifyDSPAAssessmentRiskLatest", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改最新评估风险项状态
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLatest(dspaId: String, status: String, note: String? = nil, processPeople: String? = nil, bathRiskIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAAssessmentRiskLatestResponse> {
        self.modifyDSPAAssessmentRiskLatest(.init(dspaId: dspaId, status: status, note: note, processPeople: processPeople, bathRiskIdList: bathRiskIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改最新评估风险项状态
    @available(*, deprecated, renamed: "modifyDSPAAssessmentRiskLatest(dspaId:status:note:processPeople:bathRiskIdList:region:logger:on:)", message: "'riskLatestTableId' is deprecated. Setting this parameter has no effect.")
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLatest(dspaId: String, riskLatestTableId: UInt64, status: String, note: String? = nil, processPeople: String? = nil, bathRiskIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAAssessmentRiskLatestResponse> {
        self.modifyDSPAAssessmentRiskLatest(.init(dspaId: dspaId, riskLatestTableId: riskLatestTableId, status: status, note: note, processPeople: processPeople, bathRiskIdList: bathRiskIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改最新评估风险项状态
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLatest(dspaId: String, status: String, note: String? = nil, processPeople: String? = nil, bathRiskIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAAssessmentRiskLatestResponse {
        try await self.modifyDSPAAssessmentRiskLatest(.init(dspaId: dspaId, status: status, note: note, processPeople: processPeople, bathRiskIdList: bathRiskIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改最新评估风险项状态
    @available(*, deprecated, renamed: "modifyDSPAAssessmentRiskLatest(dspaId:status:note:processPeople:bathRiskIdList:region:logger:on:)", message: "'riskLatestTableId' is deprecated. Setting this parameter has no effect.")
    @inlinable @discardableResult
    public func modifyDSPAAssessmentRiskLatest(dspaId: String, riskLatestTableId: UInt64, status: String, note: String? = nil, processPeople: String? = nil, bathRiskIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAAssessmentRiskLatestResponse {
        try await self.modifyDSPAAssessmentRiskLatest(.init(dspaId: dspaId, riskLatestTableId: riskLatestTableId, status: status, note: note, processPeople: processPeople, bathRiskIdList: bathRiskIdList), region: region, logger: logger, on: eventLoop)
    }
}