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

extension Wedata {
    /// RerunInstances请求参数结构体
    public struct RerunInstancesRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 实例嵌套集合
        public let instances: [InstanceInfo]

        /// 检查父任务类型, true: 检查父任务; false: 不检查父任务
        public let checkFather: Bool

        /// 重跑类型, 1: 自身; 3: 孩子; 2: 自身以及孩子
        public let rerunType: String

        /// 实例依赖方式, 1: 自依赖; 2: 任务依赖; 3: 自依赖及父子依赖
        public let dependentWay: String

        /// 重跑忽略事件监听与否
        public let skipEventListening: Bool

        /// 下游实例范围 1: 所在工作流 2: 所在项目 3: 所有跨工作流依赖的项目
        public let sonInstanceType: String

        public init(projectId: String, instances: [InstanceInfo], checkFather: Bool, rerunType: String, dependentWay: String, skipEventListening: Bool, sonInstanceType: String) {
            self.projectId = projectId
            self.instances = instances
            self.checkFather = checkFather
            self.rerunType = rerunType
            self.dependentWay = dependentWay
            self.skipEventListening = skipEventListening
            self.sonInstanceType = sonInstanceType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case instances = "Instances"
            case checkFather = "CheckFather"
            case rerunType = "RerunType"
            case dependentWay = "DependentWay"
            case skipEventListening = "SkipEventListening"
            case sonInstanceType = "SonInstanceType"
        }
    }

    /// RerunInstances返回参数结构体
    public struct RerunInstancesResponse: TCResponseModel {
        /// 返回实例批量终止结果
        public let data: OperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 实例批量重跑【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量重跑
    @inlinable
    public func rerunInstances(_ input: RerunInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RerunInstancesResponse> {
        self.client.execute(action: "RerunInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例批量重跑【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量重跑
    @inlinable
    public func rerunInstances(_ input: RerunInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RerunInstancesResponse {
        try await self.client.execute(action: "RerunInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例批量重跑【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量重跑
    @inlinable
    public func rerunInstances(projectId: String, instances: [InstanceInfo], checkFather: Bool, rerunType: String, dependentWay: String, skipEventListening: Bool, sonInstanceType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RerunInstancesResponse> {
        self.rerunInstances(RerunInstancesRequest(projectId: projectId, instances: instances, checkFather: checkFather, rerunType: rerunType, dependentWay: dependentWay, skipEventListening: skipEventListening, sonInstanceType: sonInstanceType), region: region, logger: logger, on: eventLoop)
    }

    /// 实例批量重跑【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量重跑
    @inlinable
    public func rerunInstances(projectId: String, instances: [InstanceInfo], checkFather: Bool, rerunType: String, dependentWay: String, skipEventListening: Bool, sonInstanceType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RerunInstancesResponse {
        try await self.rerunInstances(RerunInstancesRequest(projectId: projectId, instances: instances, checkFather: checkFather, rerunType: rerunType, dependentWay: dependentWay, skipEventListening: skipEventListening, sonInstanceType: sonInstanceType), region: region, logger: logger, on: eventLoop)
    }
}
