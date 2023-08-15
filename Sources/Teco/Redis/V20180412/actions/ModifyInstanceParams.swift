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

extension Redis {
    /// ModifyInstanceParams请求参数结构体
    public struct ModifyInstanceParamsRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 实例修改的参数列表。
        public let instanceParams: [InstanceParam]

        public init(instanceId: String, instanceParams: [InstanceParam]) {
            self.instanceId = instanceId
            self.instanceParams = instanceParams
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceParams = "InstanceParams"
        }
    }

    /// ModifyInstanceParams返回参数结构体
    public struct ModifyInstanceParamsResponse: TCResponseModel {
        /// 说明修改参数配置是否成功。
        ///
        /// - true：指修改成功；
        /// - false：指修改失败。
        public let changed: Bool

        /// 任务ID。
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case changed = "Changed"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParams)用于修改Redis实例的参数配置。
    @inlinable
    public func modifyInstanceParams(_ input: ModifyInstanceParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceParamsResponse> {
        self.client.execute(action: "ModifyInstanceParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParams)用于修改Redis实例的参数配置。
    @inlinable
    public func modifyInstanceParams(_ input: ModifyInstanceParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamsResponse {
        try await self.client.execute(action: "ModifyInstanceParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParams)用于修改Redis实例的参数配置。
    @inlinable
    public func modifyInstanceParams(instanceId: String, instanceParams: [InstanceParam], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceParamsResponse> {
        self.modifyInstanceParams(.init(instanceId: instanceId, instanceParams: instanceParams), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例参数
    ///
    /// 本接口(ModifyInstanceParams)用于修改Redis实例的参数配置。
    @inlinable
    public func modifyInstanceParams(instanceId: String, instanceParams: [InstanceParam], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceParamsResponse {
        try await self.modifyInstanceParams(.init(instanceId: instanceId, instanceParams: instanceParams), region: region, logger: logger, on: eventLoop)
    }
}
