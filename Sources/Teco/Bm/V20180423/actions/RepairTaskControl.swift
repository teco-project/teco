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

extension Bm {
    /// RepairTaskControl请求参数结构体
    public struct RepairTaskControlRequest: TCRequestModel {
        /// 维修任务ID
        public let taskId: String

        /// 操作
        public let operate: String

        /// 需要重新维修操作的备注信息，可提供返场维修原因，以便驻场快速针对问题定位解决。
        public let operateRemark: String?

        public init(taskId: String, operate: String, operateRemark: String? = nil) {
            self.taskId = taskId
            self.operate = operate
            self.operateRemark = operateRemark
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case operate = "Operate"
            case operateRemark = "OperateRemark"
        }
    }

    /// RepairTaskControl返回参数结构体
    public struct RepairTaskControlResponse: TCResponseModel {
        /// 出参TaskId是黑石异步任务ID，不同于入参TaskId字段。
        /// 此字段可作为DescriptionOperationResult查询异步任务状态接口的入参，查询异步任务执行结果。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 维修任务管理
    ///
    /// 此接口用于操作维修任务<br>
    /// 入参TaskId为维修任务ID<br>
    /// 入参Operate表示对维修任务的操作，支持如下取值：<br>
    /// AuthorizeRepair（授权维修）<br>
    /// Ignore（暂不提醒）<br>
    /// ConfirmRecovered（维修完成后，确认故障恢复）<br>
    /// ConfirmUnRecovered（维修完成后，确认故障未恢复，该操作已不推荐用）<br>
    /// NeedRepairAgain（维修完成后，故障未恢复，需要重新维修，推荐用此操作打回）<br>
    /// 入参OperateRemark仅在Operate为NeedRepairAgain时有效，表示打回重修原因，建议给出打回的具体原因。<br>
    /// <br>
    /// 操作约束（当前任务状态(TaskStatus)->对应可执行的操作）：<br>
    /// 未授权(1)->授权维修；暂不处理<br>
    /// 暂不处理(4)->授权维修<br>
    /// 待确认(3)->确认故障恢复；确认故障未恢复；需要重新维修<br>
    /// 未恢复(6)->确认故障恢复<br>
    /// <br>
    /// 对于Ping不可达故障的任务，还允许：<br>
    /// 未授权->确认故障恢复<br>
    /// 暂不处理->确认故障恢复<br>
    /// <br>
    /// 处理中与已恢复状态的任务不允许进行操作。<br>
    /// <br>
    /// 详细信息请访问：https://cloud.tencent.com/document/product/386/18190
    @inlinable
    public func repairTaskControl(_ input: RepairTaskControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RepairTaskControlResponse> {
        self.client.execute(action: "RepairTaskControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 维修任务管理
    ///
    /// 此接口用于操作维修任务<br>
    /// 入参TaskId为维修任务ID<br>
    /// 入参Operate表示对维修任务的操作，支持如下取值：<br>
    /// AuthorizeRepair（授权维修）<br>
    /// Ignore（暂不提醒）<br>
    /// ConfirmRecovered（维修完成后，确认故障恢复）<br>
    /// ConfirmUnRecovered（维修完成后，确认故障未恢复，该操作已不推荐用）<br>
    /// NeedRepairAgain（维修完成后，故障未恢复，需要重新维修，推荐用此操作打回）<br>
    /// 入参OperateRemark仅在Operate为NeedRepairAgain时有效，表示打回重修原因，建议给出打回的具体原因。<br>
    /// <br>
    /// 操作约束（当前任务状态(TaskStatus)->对应可执行的操作）：<br>
    /// 未授权(1)->授权维修；暂不处理<br>
    /// 暂不处理(4)->授权维修<br>
    /// 待确认(3)->确认故障恢复；确认故障未恢复；需要重新维修<br>
    /// 未恢复(6)->确认故障恢复<br>
    /// <br>
    /// 对于Ping不可达故障的任务，还允许：<br>
    /// 未授权->确认故障恢复<br>
    /// 暂不处理->确认故障恢复<br>
    /// <br>
    /// 处理中与已恢复状态的任务不允许进行操作。<br>
    /// <br>
    /// 详细信息请访问：https://cloud.tencent.com/document/product/386/18190
    @inlinable
    public func repairTaskControl(_ input: RepairTaskControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RepairTaskControlResponse {
        try await self.client.execute(action: "RepairTaskControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 维修任务管理
    ///
    /// 此接口用于操作维修任务<br>
    /// 入参TaskId为维修任务ID<br>
    /// 入参Operate表示对维修任务的操作，支持如下取值：<br>
    /// AuthorizeRepair（授权维修）<br>
    /// Ignore（暂不提醒）<br>
    /// ConfirmRecovered（维修完成后，确认故障恢复）<br>
    /// ConfirmUnRecovered（维修完成后，确认故障未恢复，该操作已不推荐用）<br>
    /// NeedRepairAgain（维修完成后，故障未恢复，需要重新维修，推荐用此操作打回）<br>
    /// 入参OperateRemark仅在Operate为NeedRepairAgain时有效，表示打回重修原因，建议给出打回的具体原因。<br>
    /// <br>
    /// 操作约束（当前任务状态(TaskStatus)->对应可执行的操作）：<br>
    /// 未授权(1)->授权维修；暂不处理<br>
    /// 暂不处理(4)->授权维修<br>
    /// 待确认(3)->确认故障恢复；确认故障未恢复；需要重新维修<br>
    /// 未恢复(6)->确认故障恢复<br>
    /// <br>
    /// 对于Ping不可达故障的任务，还允许：<br>
    /// 未授权->确认故障恢复<br>
    /// 暂不处理->确认故障恢复<br>
    /// <br>
    /// 处理中与已恢复状态的任务不允许进行操作。<br>
    /// <br>
    /// 详细信息请访问：https://cloud.tencent.com/document/product/386/18190
    @inlinable
    public func repairTaskControl(taskId: String, operate: String, operateRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RepairTaskControlResponse> {
        self.repairTaskControl(.init(taskId: taskId, operate: operate, operateRemark: operateRemark), region: region, logger: logger, on: eventLoop)
    }

    /// 维修任务管理
    ///
    /// 此接口用于操作维修任务<br>
    /// 入参TaskId为维修任务ID<br>
    /// 入参Operate表示对维修任务的操作，支持如下取值：<br>
    /// AuthorizeRepair（授权维修）<br>
    /// Ignore（暂不提醒）<br>
    /// ConfirmRecovered（维修完成后，确认故障恢复）<br>
    /// ConfirmUnRecovered（维修完成后，确认故障未恢复，该操作已不推荐用）<br>
    /// NeedRepairAgain（维修完成后，故障未恢复，需要重新维修，推荐用此操作打回）<br>
    /// 入参OperateRemark仅在Operate为NeedRepairAgain时有效，表示打回重修原因，建议给出打回的具体原因。<br>
    /// <br>
    /// 操作约束（当前任务状态(TaskStatus)->对应可执行的操作）：<br>
    /// 未授权(1)->授权维修；暂不处理<br>
    /// 暂不处理(4)->授权维修<br>
    /// 待确认(3)->确认故障恢复；确认故障未恢复；需要重新维修<br>
    /// 未恢复(6)->确认故障恢复<br>
    /// <br>
    /// 对于Ping不可达故障的任务，还允许：<br>
    /// 未授权->确认故障恢复<br>
    /// 暂不处理->确认故障恢复<br>
    /// <br>
    /// 处理中与已恢复状态的任务不允许进行操作。<br>
    /// <br>
    /// 详细信息请访问：https://cloud.tencent.com/document/product/386/18190
    @inlinable
    public func repairTaskControl(taskId: String, operate: String, operateRemark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RepairTaskControlResponse {
        try await self.repairTaskControl(.init(taskId: taskId, operate: operate, operateRemark: operateRemark), region: region, logger: logger, on: eventLoop)
    }
}
