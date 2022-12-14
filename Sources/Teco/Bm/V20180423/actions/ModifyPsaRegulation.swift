//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Bm {
    /// ModifyPsaRegulation请求参数结构体
    public struct ModifyPsaRegulationRequest: TCRequestModel {
        /// 预授权规则ID
        public let psaId: String

        /// 预授权规则别名
        public let psaName: String?

        /// 维修中的实例上限
        public let repairLimit: UInt64?

        /// 预授权规则备注
        public let psaDescription: String?

        /// 预授权规则关联故障类型ID列表
        public let taskTypeIds: [UInt64]?

        public init(psaId: String, psaName: String? = nil, repairLimit: UInt64? = nil, psaDescription: String? = nil, taskTypeIds: [UInt64]? = nil) {
            self.psaId = psaId
            self.psaName = psaName
            self.repairLimit = repairLimit
            self.psaDescription = psaDescription
            self.taskTypeIds = taskTypeIds
        }

        enum CodingKeys: String, CodingKey {
            case psaId = "PsaId"
            case psaName = "PsaName"
            case repairLimit = "RepairLimit"
            case psaDescription = "PsaDescription"
            case taskTypeIds = "TaskTypeIds"
        }
    }

    /// ModifyPsaRegulation返回参数结构体
    public struct ModifyPsaRegulationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改预授权规则
    ///
    /// 允许修改规则信息及关联故障类型
    @inlinable
    public func modifyPsaRegulation(_ input: ModifyPsaRegulationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPsaRegulationResponse > {
        self.client.execute(action: "ModifyPsaRegulation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改预授权规则
    ///
    /// 允许修改规则信息及关联故障类型
    @inlinable
    public func modifyPsaRegulation(_ input: ModifyPsaRegulationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPsaRegulationResponse {
        try await self.client.execute(action: "ModifyPsaRegulation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改预授权规则
    ///
    /// 允许修改规则信息及关联故障类型
    @inlinable
    public func modifyPsaRegulation(psaId: String, psaName: String? = nil, repairLimit: UInt64? = nil, psaDescription: String? = nil, taskTypeIds: [UInt64]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPsaRegulationResponse > {
        self.modifyPsaRegulation(ModifyPsaRegulationRequest(psaId: psaId, psaName: psaName, repairLimit: repairLimit, psaDescription: psaDescription, taskTypeIds: taskTypeIds), logger: logger, on: eventLoop)
    }

    /// 修改预授权规则
    ///
    /// 允许修改规则信息及关联故障类型
    @inlinable
    public func modifyPsaRegulation(psaId: String, psaName: String? = nil, repairLimit: UInt64? = nil, psaDescription: String? = nil, taskTypeIds: [UInt64]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPsaRegulationResponse {
        try await self.modifyPsaRegulation(ModifyPsaRegulationRequest(psaId: psaId, psaName: psaName, repairLimit: repairLimit, psaDescription: psaDescription, taskTypeIds: taskTypeIds), logger: logger, on: eventLoop)
    }
}
