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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cis {
    /// CreateContainerInstance请求参数结构体
    public struct CreateContainerInstanceRequest: TCRequestModel {
        /// 可用区
        public let zone: String

        /// vpcId
        public let vpcId: String

        /// subnetId
        public let subnetId: String

        /// 容器实例名称，由小写字母、数字和 - 组成，由小写字母开头，小写字母或数字结尾，且长度不超过 40个字符
        public let instanceName: String

        /// 重启策略（Always,OnFailure,Never）
        public let restartPolicy: String

        /// 容器列表
        public let containers: [Container]

        public init(zone: String, vpcId: String, subnetId: String, instanceName: String, restartPolicy: String, containers: [Container]) {
            self.zone = zone
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.instanceName = instanceName
            self.restartPolicy = restartPolicy
            self.containers = containers
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceName = "InstanceName"
            case restartPolicy = "RestartPolicy"
            case containers = "Containers"
        }
    }

    /// CreateContainerInstance返回参数结构体
    public struct CreateContainerInstanceResponse: TCResponseModel {
        /// 容器实例ID
        public let instanceId: String

        /// 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 创建容器实例
    ///
    /// 此接口（CreateContainerInstance）用于创建容器实例
    @inlinable
    public func createContainerInstance(_ input: CreateContainerInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContainerInstanceResponse> {
        self.client.execute(action: "CreateContainerInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建容器实例
    ///
    /// 此接口（CreateContainerInstance）用于创建容器实例
    @inlinable
    public func createContainerInstance(_ input: CreateContainerInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContainerInstanceResponse {
        try await self.client.execute(action: "CreateContainerInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建容器实例
    ///
    /// 此接口（CreateContainerInstance）用于创建容器实例
    @inlinable
    public func createContainerInstance(zone: String, vpcId: String, subnetId: String, instanceName: String, restartPolicy: String, containers: [Container], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContainerInstanceResponse> {
        self.createContainerInstance(.init(zone: zone, vpcId: vpcId, subnetId: subnetId, instanceName: instanceName, restartPolicy: restartPolicy, containers: containers), region: region, logger: logger, on: eventLoop)
    }

    /// 创建容器实例
    ///
    /// 此接口（CreateContainerInstance）用于创建容器实例
    @inlinable
    public func createContainerInstance(zone: String, vpcId: String, subnetId: String, instanceName: String, restartPolicy: String, containers: [Container], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContainerInstanceResponse {
        try await self.createContainerInstance(.init(zone: zone, vpcId: vpcId, subnetId: subnetId, instanceName: instanceName, restartPolicy: restartPolicy, containers: containers), region: region, logger: logger, on: eventLoop)
    }
}
