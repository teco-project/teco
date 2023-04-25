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

extension Cdb {
    /// SwitchDrInstanceToMaster请求参数结构体
    public struct SwitchDrInstanceToMasterRequest: TCRequestModel {
        /// 灾备实例ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// SwitchDrInstanceToMaster返回参数结构体
    public struct SwitchDrInstanceToMasterResponse: TCResponseModel {
        /// 异步任务的请求ID，可使用此ID查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 云数据库灾备实例切换为主实例
    ///
    /// 本接口(SwitchDrInstanceToMaster)用于将云数据库灾备实例切换为主实例，注意请求必须发到灾备实例所在的地域。
    @inlinable
    public func switchDrInstanceToMaster(_ input: SwitchDrInstanceToMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchDrInstanceToMasterResponse> {
        self.client.execute(action: "SwitchDrInstanceToMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云数据库灾备实例切换为主实例
    ///
    /// 本接口(SwitchDrInstanceToMaster)用于将云数据库灾备实例切换为主实例，注意请求必须发到灾备实例所在的地域。
    @inlinable
    public func switchDrInstanceToMaster(_ input: SwitchDrInstanceToMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDrInstanceToMasterResponse {
        try await self.client.execute(action: "SwitchDrInstanceToMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云数据库灾备实例切换为主实例
    ///
    /// 本接口(SwitchDrInstanceToMaster)用于将云数据库灾备实例切换为主实例，注意请求必须发到灾备实例所在的地域。
    @inlinable
    public func switchDrInstanceToMaster(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchDrInstanceToMasterResponse> {
        self.switchDrInstanceToMaster(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 云数据库灾备实例切换为主实例
    ///
    /// 本接口(SwitchDrInstanceToMaster)用于将云数据库灾备实例切换为主实例，注意请求必须发到灾备实例所在的地域。
    @inlinable
    public func switchDrInstanceToMaster(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDrInstanceToMasterResponse {
        try await self.switchDrInstanceToMaster(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
