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

extension Apigateway {
    /// ModifyExclusiveInstance请求参数结构体
    public struct ModifyExclusiveInstanceRequest: TCRequest {
        /// 独享实例唯一id
        public let instanceId: String

        /// 独享实例name
        public let instanceName: String?

        /// 独享实例描述
        public let instanceDescription: String?

        /// 独享实例参数配置
        public let parameters: [InstanceParameterInput]?

        public init(instanceId: String, instanceName: String? = nil, instanceDescription: String? = nil, parameters: [InstanceParameterInput]? = nil) {
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.instanceDescription = instanceDescription
            self.parameters = parameters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case instanceDescription = "InstanceDescription"
            case parameters = "Parameters"
        }
    }

    /// ModifyExclusiveInstance返回参数结构体
    public struct ModifyExclusiveInstanceResponse: TCResponse {
        /// 独享实例详情信息
        public let result: InstanceDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改独享实例
    ///
    /// 本接口（ModifyExclusiveInstance）用于修改独享实例信息。
    @inlinable
    public func modifyExclusiveInstance(_ input: ModifyExclusiveInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyExclusiveInstanceResponse> {
        self.client.execute(action: "ModifyExclusiveInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改独享实例
    ///
    /// 本接口（ModifyExclusiveInstance）用于修改独享实例信息。
    @inlinable
    public func modifyExclusiveInstance(_ input: ModifyExclusiveInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyExclusiveInstanceResponse {
        try await self.client.execute(action: "ModifyExclusiveInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改独享实例
    ///
    /// 本接口（ModifyExclusiveInstance）用于修改独享实例信息。
    @inlinable
    public func modifyExclusiveInstance(instanceId: String, instanceName: String? = nil, instanceDescription: String? = nil, parameters: [InstanceParameterInput]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyExclusiveInstanceResponse> {
        self.modifyExclusiveInstance(.init(instanceId: instanceId, instanceName: instanceName, instanceDescription: instanceDescription, parameters: parameters), region: region, logger: logger, on: eventLoop)
    }

    /// 修改独享实例
    ///
    /// 本接口（ModifyExclusiveInstance）用于修改独享实例信息。
    @inlinable
    public func modifyExclusiveInstance(instanceId: String, instanceName: String? = nil, instanceDescription: String? = nil, parameters: [InstanceParameterInput]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyExclusiveInstanceResponse {
        try await self.modifyExclusiveInstance(.init(instanceId: instanceId, instanceName: instanceName, instanceDescription: instanceDescription, parameters: parameters), region: region, logger: logger, on: eventLoop)
    }
}
