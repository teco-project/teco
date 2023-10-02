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
    /// ModifyDSPAESTaskResult请求参数结构体
    public struct ModifyDSPAESTaskResultRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 字段扫描结果ID
        public let fieldResultId: Int64

        /// 合规组ID
        public let complianceId: Int64

        /// 是否设置为非敏感字段
        public let isSetNonSensitiveField: Bool?

        /// 调整后新的规则ID
        public let destRuleId: Int64?

        /// 调整后新的分类ID
        public let destCategoryId: Int64?

        /// 调整后新的分级ID
        public let destLevelId: Int64?

        public init(dspaId: String, fieldResultId: Int64, complianceId: Int64, isSetNonSensitiveField: Bool? = nil, destRuleId: Int64? = nil, destCategoryId: Int64? = nil, destLevelId: Int64? = nil) {
            self.dspaId = dspaId
            self.fieldResultId = fieldResultId
            self.complianceId = complianceId
            self.isSetNonSensitiveField = isSetNonSensitiveField
            self.destRuleId = destRuleId
            self.destCategoryId = destCategoryId
            self.destLevelId = destLevelId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case fieldResultId = "FieldResultId"
            case complianceId = "ComplianceId"
            case isSetNonSensitiveField = "IsSetNonSensitiveField"
            case destRuleId = "DestRuleId"
            case destCategoryId = "DestCategoryId"
            case destLevelId = "DestLevelId"
        }
    }

    /// ModifyDSPAESTaskResult返回参数结构体
    public struct ModifyDSPAESTaskResultResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整ES任务扫描结果
    @inlinable @discardableResult
    public func modifyDSPAESTaskResult(_ input: ModifyDSPAESTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAESTaskResultResponse> {
        self.client.execute(action: "ModifyDSPAESTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整ES任务扫描结果
    @inlinable @discardableResult
    public func modifyDSPAESTaskResult(_ input: ModifyDSPAESTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAESTaskResultResponse {
        try await self.client.execute(action: "ModifyDSPAESTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整ES任务扫描结果
    @inlinable @discardableResult
    public func modifyDSPAESTaskResult(dspaId: String, fieldResultId: Int64, complianceId: Int64, isSetNonSensitiveField: Bool? = nil, destRuleId: Int64? = nil, destCategoryId: Int64? = nil, destLevelId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPAESTaskResultResponse> {
        self.modifyDSPAESTaskResult(.init(dspaId: dspaId, fieldResultId: fieldResultId, complianceId: complianceId, isSetNonSensitiveField: isSetNonSensitiveField, destRuleId: destRuleId, destCategoryId: destCategoryId, destLevelId: destLevelId), region: region, logger: logger, on: eventLoop)
    }

    /// 调整ES任务扫描结果
    @inlinable @discardableResult
    public func modifyDSPAESTaskResult(dspaId: String, fieldResultId: Int64, complianceId: Int64, isSetNonSensitiveField: Bool? = nil, destRuleId: Int64? = nil, destCategoryId: Int64? = nil, destLevelId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPAESTaskResultResponse {
        try await self.modifyDSPAESTaskResult(.init(dspaId: dspaId, fieldResultId: fieldResultId, complianceId: complianceId, isSetNonSensitiveField: isSetNonSensitiveField, destRuleId: destRuleId, destCategoryId: destCategoryId, destLevelId: destLevelId), region: region, logger: logger, on: eventLoop)
    }
}
