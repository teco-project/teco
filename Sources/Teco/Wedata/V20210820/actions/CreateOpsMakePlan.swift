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

extension Wedata {
    /// CreateOpsMakePlan请求参数结构体
    public struct CreateOpsMakePlanRequest: TCRequestModel {
        /// 项目id
        public let projectId: String

        /// 补录计划名称
        public let makeName: String

        /// 补录任务集合
        public let taskIdList: [String]

        /// 补录计划日期范围
        public let makeDatetimeList: [CreateMakeDatetimeInfo]

        /// 项目标识
        public let projectIdent: String?

        /// 补录是否检查父任务状态，默认不检查。不推荐使用，后续会废弃，推荐使用 CheckParentType。
        public let checkParent: Bool?

        /// 补录检查父任务类型。取值范围：
        /// <li> NONE: 全部不检查 </li>
        /// <li> ALL: 检查全部上游父任务 </li>
        /// <li> MAKE_SCOPE: 只在（当前补录计划）选中任务中检查 </li>
        public let checkParentType: String?

        /// 项目名称
        public let projectName: String?

        /// 已弃用。任务自依赖类型：parallel（并行），serial（无序串行），orderly（有序串行）
        public let selfDependence: String?

        /// 并行度
        public let parallelNum: Int64?

        /// 补录实例生成周期是否和原周期相同，默认为true
        public let sameCycle: Bool?

        /// 补录实例目标周期类型
        public let targetTaskCycle: String?

        /// 补录实例目标周期类型指定时间
        public let targetTaskAction: Int64?

        /// 补录实例自定义参数
        public let mapParamList: [StrToStrMap]?

        /// 创建人id
        public let creatorId: String?

        /// 创建人
        public let creator: String?

        /// 补录计划说明
        public let remark: String?

        /// 是否使用任务原有自依赖配置，默认为true
        public let sameSelfDependType: Bool?

        /// 补录实例原始周期类型
        public let sourceTaskCycle: String?

        /// 重新指定的调度资源组ID
        public let schedulerResourceGroup: String?

        /// 重新指定的集成资源组ID
        public let integrationResourceGroup: String?

        /// 重新指定的调度资源组名称
        public let schedulerResourceGroupName: String?

        /// 重新指定的集成资源组名称
        public let integrationResourceGroupName: String?

        public init(projectId: String, makeName: String, taskIdList: [String], makeDatetimeList: [CreateMakeDatetimeInfo], projectIdent: String? = nil, checkParent: Bool? = nil, checkParentType: String? = nil, projectName: String? = nil, selfDependence: String? = nil, parallelNum: Int64? = nil, sameCycle: Bool? = nil, targetTaskCycle: String? = nil, targetTaskAction: Int64? = nil, mapParamList: [StrToStrMap]? = nil, creatorId: String? = nil, creator: String? = nil, remark: String? = nil, sameSelfDependType: Bool? = nil, sourceTaskCycle: String? = nil, schedulerResourceGroup: String? = nil, integrationResourceGroup: String? = nil, schedulerResourceGroupName: String? = nil, integrationResourceGroupName: String? = nil) {
            self.projectId = projectId
            self.makeName = makeName
            self.taskIdList = taskIdList
            self.makeDatetimeList = makeDatetimeList
            self.projectIdent = projectIdent
            self.checkParent = checkParent
            self.checkParentType = checkParentType
            self.projectName = projectName
            self.selfDependence = selfDependence
            self.parallelNum = parallelNum
            self.sameCycle = sameCycle
            self.targetTaskCycle = targetTaskCycle
            self.targetTaskAction = targetTaskAction
            self.mapParamList = mapParamList
            self.creatorId = creatorId
            self.creator = creator
            self.remark = remark
            self.sameSelfDependType = sameSelfDependType
            self.sourceTaskCycle = sourceTaskCycle
            self.schedulerResourceGroup = schedulerResourceGroup
            self.integrationResourceGroup = integrationResourceGroup
            self.schedulerResourceGroupName = schedulerResourceGroupName
            self.integrationResourceGroupName = integrationResourceGroupName
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case makeName = "MakeName"
            case taskIdList = "TaskIdList"
            case makeDatetimeList = "MakeDatetimeList"
            case projectIdent = "ProjectIdent"
            case checkParent = "CheckParent"
            case checkParentType = "CheckParentType"
            case projectName = "ProjectName"
            case selfDependence = "SelfDependence"
            case parallelNum = "ParallelNum"
            case sameCycle = "SameCycle"
            case targetTaskCycle = "TargetTaskCycle"
            case targetTaskAction = "TargetTaskAction"
            case mapParamList = "MapParamList"
            case creatorId = "CreatorId"
            case creator = "Creator"
            case remark = "Remark"
            case sameSelfDependType = "SameSelfDependType"
            case sourceTaskCycle = "SourceTaskCycle"
            case schedulerResourceGroup = "SchedulerResourceGroup"
            case integrationResourceGroup = "IntegrationResourceGroup"
            case schedulerResourceGroupName = "SchedulerResourceGroupName"
            case integrationResourceGroupName = "IntegrationResourceGroupName"
        }
    }

    /// CreateOpsMakePlan返回参数结构体
    public struct CreateOpsMakePlanResponse: TCResponseModel {
        /// 结果
        public let data: CommonIdOpsDto

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 补录任务
    @inlinable
    public func createOpsMakePlan(_ input: CreateOpsMakePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpsMakePlanResponse> {
        self.client.execute(action: "CreateOpsMakePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 补录任务
    @inlinable
    public func createOpsMakePlan(_ input: CreateOpsMakePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpsMakePlanResponse {
        try await self.client.execute(action: "CreateOpsMakePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 补录任务
    @inlinable
    public func createOpsMakePlan(projectId: String, makeName: String, taskIdList: [String], makeDatetimeList: [CreateMakeDatetimeInfo], projectIdent: String? = nil, checkParent: Bool? = nil, checkParentType: String? = nil, projectName: String? = nil, selfDependence: String? = nil, parallelNum: Int64? = nil, sameCycle: Bool? = nil, targetTaskCycle: String? = nil, targetTaskAction: Int64? = nil, mapParamList: [StrToStrMap]? = nil, creatorId: String? = nil, creator: String? = nil, remark: String? = nil, sameSelfDependType: Bool? = nil, sourceTaskCycle: String? = nil, schedulerResourceGroup: String? = nil, integrationResourceGroup: String? = nil, schedulerResourceGroupName: String? = nil, integrationResourceGroupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOpsMakePlanResponse> {
        self.createOpsMakePlan(.init(projectId: projectId, makeName: makeName, taskIdList: taskIdList, makeDatetimeList: makeDatetimeList, projectIdent: projectIdent, checkParent: checkParent, checkParentType: checkParentType, projectName: projectName, selfDependence: selfDependence, parallelNum: parallelNum, sameCycle: sameCycle, targetTaskCycle: targetTaskCycle, targetTaskAction: targetTaskAction, mapParamList: mapParamList, creatorId: creatorId, creator: creator, remark: remark, sameSelfDependType: sameSelfDependType, sourceTaskCycle: sourceTaskCycle, schedulerResourceGroup: schedulerResourceGroup, integrationResourceGroup: integrationResourceGroup, schedulerResourceGroupName: schedulerResourceGroupName, integrationResourceGroupName: integrationResourceGroupName), region: region, logger: logger, on: eventLoop)
    }

    /// 补录任务
    @inlinable
    public func createOpsMakePlan(projectId: String, makeName: String, taskIdList: [String], makeDatetimeList: [CreateMakeDatetimeInfo], projectIdent: String? = nil, checkParent: Bool? = nil, checkParentType: String? = nil, projectName: String? = nil, selfDependence: String? = nil, parallelNum: Int64? = nil, sameCycle: Bool? = nil, targetTaskCycle: String? = nil, targetTaskAction: Int64? = nil, mapParamList: [StrToStrMap]? = nil, creatorId: String? = nil, creator: String? = nil, remark: String? = nil, sameSelfDependType: Bool? = nil, sourceTaskCycle: String? = nil, schedulerResourceGroup: String? = nil, integrationResourceGroup: String? = nil, schedulerResourceGroupName: String? = nil, integrationResourceGroupName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOpsMakePlanResponse {
        try await self.createOpsMakePlan(.init(projectId: projectId, makeName: makeName, taskIdList: taskIdList, makeDatetimeList: makeDatetimeList, projectIdent: projectIdent, checkParent: checkParent, checkParentType: checkParentType, projectName: projectName, selfDependence: selfDependence, parallelNum: parallelNum, sameCycle: sameCycle, targetTaskCycle: targetTaskCycle, targetTaskAction: targetTaskAction, mapParamList: mapParamList, creatorId: creatorId, creator: creator, remark: remark, sameSelfDependType: sameSelfDependType, sourceTaskCycle: sourceTaskCycle, schedulerResourceGroup: schedulerResourceGroup, integrationResourceGroup: integrationResourceGroup, schedulerResourceGroupName: schedulerResourceGroupName, integrationResourceGroupName: integrationResourceGroupName), region: region, logger: logger, on: eventLoop)
    }
}