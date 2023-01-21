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

extension Wedata {
    /// ForceSucInstances请求参数结构体
    public struct ForceSucInstancesRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 实例嵌套集合
        public let instances: [InstanceInfo]

        public init(projectId: String, instances: [InstanceInfo]) {
            self.projectId = projectId
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case instances = "Instances"
        }
    }

    /// ForceSucInstances返回参数结构体
    public struct ForceSucInstancesResponse: TCResponseModel {
        /// 返回实例批量终止结果
        public let data: OperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 实例批量置成功【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量置成功
    @inlinable
    public func forceSucInstances(_ input: ForceSucInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForceSucInstancesResponse> {
        self.client.execute(action: "ForceSucInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例批量置成功【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量置成功
    @inlinable
    public func forceSucInstances(_ input: ForceSucInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForceSucInstancesResponse {
        try await self.client.execute(action: "ForceSucInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例批量置成功【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量置成功
    @inlinable
    public func forceSucInstances(projectId: String, instances: [InstanceInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ForceSucInstancesResponse> {
        self.forceSucInstances(ForceSucInstancesRequest(projectId: projectId, instances: instances), region: region, logger: logger, on: eventLoop)
    }

    /// 实例批量置成功【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 实例批量置成功
    @inlinable
    public func forceSucInstances(projectId: String, instances: [InstanceInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForceSucInstancesResponse {
        try await self.forceSucInstances(ForceSucInstancesRequest(projectId: projectId, instances: instances), region: region, logger: logger, on: eventLoop)
    }
}
